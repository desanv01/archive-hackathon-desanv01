# Simple tests for an adder module
import cocotb
from mkintegerModel import divider_model
import random
import os

from cocotb.clock import Clock
# from cocotb.decorators import coroutine
from cocotb.triggers import Timer, RisingEdge, ReadOnly, FallingEdge
from cocotb_bus.monitors import Monitor
from cocotb_bus.drivers import BitDriver
from cocotb.types import LogicArray
from cocotb.regression import TestFactory
from cocotb_bus.scoreboard import Scoreboard
# from cocotb.result import TestFailure, TestSuccess

#------------------------------------Test for signed Division------------------------------------------------------
count = int(os.environ['COUNT'])
@cocotb.test()
async def divider_basic_signed_DIV_test(dut):  #14

    cocotb.start_soon(Clock(dut.CLK, 10,).start())

    dut.ma_set_flush_c.value = 1
    dut.EN_ma_set_flush.value = 1
    dut.RST_N.value = 0
    clkedge = RisingEdge(dut.CLK)


    for i in range(1):
        await clkedge

    for it in range(count):
        A =  random.randrange(0,500)
        B = random.randrange(0,50)

        opcode = 12
        funct3 = 5

        clkedge = RisingEdge(dut.CLK)

        dut.EN_ma_start.value = 1
        dut.RST_N.value = 1
        dut.ma_start_opcode.value = opcode
        dut.ma_start_funct3.value = funct3
        dut.ma_start_dividend.value = A
        dut.ma_start_divisor.value = B
        await clkedge

        #dut.EN_ma_start = 0
        while(dut.mav_result.value == 0):
            await clkedge

        dutResultBin = int(dut.mav_result.value)
        modelResultBin = divider_model(A,B,opcode,funct3)
        cocotb.log.info("TEST NO : %d", it + 1)
        assert modelResultBin == dutResultBin, "Incorrect signed division: divident={0} divisor={1} dut_result={2} exp_result={3}".format(A, B, hex(dutResultBin), hex(modelResultBin))
        cocotb.log.info('Pass: Divident={0} divisor={1} dut_result={2} exp_result={3}'.format(A, B, hex(dutResultBin), hex(modelResultBin)))

