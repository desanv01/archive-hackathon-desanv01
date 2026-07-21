MASK32 = (1 << 32) - 1
MASK64 = (1 << 64) - 1


def _signed(value: int, bits: int) -> int:
    value &= (1 << bits) - 1
    sign = 1 << (bits - 1)
    return value - (1 << bits) if value & sign else value


def _sign_extend_word(value: int) -> int:
    return _signed(value, 32) & MASK64


def _trunc_div(dividend: int, divisor: int) -> int:
    quotient = abs(dividend) // abs(divisor)
    return -quotient if (dividend < 0) ^ (divisor < 0) else quotient


def divider_model(dividend: int, divisor: int, opcode: int, funct3: int) -> int:
    """Model RV64 DIV/DIVU/REM/REMU and their 32-bit word forms."""
    bits = 32 if opcode == 14 else 64
    mask = (1 << bits) - 1
    lhs_u = dividend & mask
    rhs_u = divisor & mask

    if funct3 in (4, 6):
        lhs = _signed(lhs_u, bits)
        rhs = _signed(rhs_u, bits)

        if funct3 == 4:
            if rhs == 0:
                result = mask
            elif lhs == -(1 << (bits - 1)) and rhs == -1:
                result = lhs_u
            else:
                result = _trunc_div(lhs, rhs) & mask
        else:
            if rhs == 0:
                result = lhs_u
            elif lhs == -(1 << (bits - 1)) and rhs == -1:
                result = 0
            else:
                quotient = _trunc_div(lhs, rhs)
                result = (lhs - quotient * rhs) & mask
    elif funct3 == 5:
        result = mask if rhs_u == 0 else lhs_u // rhs_u
    elif funct3 == 7:
        result = lhs_u if rhs_u == 0 else lhs_u % rhs_u
    else:
        raise ValueError(f"unsupported divider funct3: {funct3}")

    return _sign_extend_word(result) if bits == 32 else result & MASK64