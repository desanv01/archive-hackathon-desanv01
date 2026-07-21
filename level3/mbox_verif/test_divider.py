import cocotb
from cocotb.clock import Clock
from cocotb.triggers import FallingEdge, ReadOnly, RisingEdge

from mkintegerModel import MASK64, divider_model


DIV_OPCODE = 12
DIV = 4
DIVU = 5
REM = 6
REMU = 7


async def reset_dut(dut):
    cocotb.start_soon(Clock(dut.CLK, 10, unit="ns").start())

    dut.RST_N.value = 0
    dut.EN_ma_start.value = 0
    dut.EN_mav_result.value = 0
    dut.EN_ma_set_flush.value = 0
    dut.ma_set_flush_c.value = 0
    dut.ma_start_dividend.value = 0
    dut.ma_start_divisor.value = 0
    dut.ma_start_opcode.value = 0
    dut.ma_start_funct3.value = 0

    for _ in range(3):
        await RisingEdge(dut.CLK)

    await FallingEdge(dut.CLK)
    dut.RST_N.value = 1
    await RisingEdge(dut.CLK)


async def divide(dut, dividend: int, divisor: int, funct3: int) -> int:
    for _ in range(10):
        if int(dut.RDY_ma_start.value) == 1:
            break
        await RisingEdge(dut.CLK)
    else:
        raise AssertionError("divider did not become ready for a request")

    await FallingEdge(dut.CLK)
    dut.ma_start_dividend.value = dividend & MASK64
    dut.ma_start_divisor.value = divisor & MASK64
    dut.ma_start_opcode.value = DIV_OPCODE
    dut.ma_start_funct3.value = funct3
    dut.EN_ma_start.value = 1

    await RisingEdge(dut.CLK)
    await FallingEdge(dut.CLK)
    dut.EN_ma_start.value = 0

    for _ in range(80):
        await RisingEdge(dut.CLK)
        await ReadOnly()
        packed = int(dut.mav_result.value)
        if (packed >> 64) & 1:
            result = packed & MASK64
            await FallingEdge(dut.CLK)
            dut.EN_mav_result.value = 1
            await RisingEdge(dut.CLK)
            await FallingEdge(dut.CLK)
            dut.EN_mav_result.value = 0
            return result

    raise AssertionError("divider result-valid bit did not assert within 80 cycles")


async def check_case(dut, name, dividend, divisor, funct3):
    expected = divider_model(dividend, divisor, DIV_OPCODE, funct3)
    observed = await divide(dut, dividend, divisor, funct3)
    dut._log.info(
        "%s dividend=0x%016x divisor=0x%016x observed=0x%016x expected=0x%016x",
        name,
        dividend & MASK64,
        divisor & MASK64,
        observed,
        expected,
    )
    assert observed == expected, (
        f"{name}: DUT=0x{observed:016x}, model=0x{expected:016x}"
    )


@cocotb.test()
async def test_divider_baseline(dut):
    """Establish that request/result handshakes and basic quotient paths work."""
    await reset_dut(dut)
    cases = (
        ("divu", 100, 7, DIVU),
        ("div_positive", 100, 7, DIV),
        ("div_positive_negative", 20, -3, DIV),
        ("divu_by_zero", 25, 0, DIVU),
    )
    for case in cases:
        await check_case(dut, *case)


@cocotb.test()
async def test_bug_unsigned_remainder(dut):
    """Capture the observed REMU off-by-one result."""
    await reset_dut(dut)
    await check_case(dut, "remu_100_by_7", 100, 7, REMU)


@cocotb.test()
async def test_bug_signed_div_negative_dividend(dut):
    """Expose the missing dividend sign in signed quotient polarity."""
    await reset_dut(dut)
    await check_case(dut, "signed_div_negative_positive", -20, 3, DIV)


@cocotb.test()
async def test_bug_signed_div_both_negative(dut):
    """Two negative operands should produce a positive quotient."""
    await reset_dut(dut)
    await check_case(dut, "signed_div_both_negative", -20, -3, DIV)