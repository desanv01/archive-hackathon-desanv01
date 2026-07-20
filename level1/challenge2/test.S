# See https://gitlab.com/vyoma_systems/common/-/blob/main/LICENSE.vyoma for more details

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV64M
RVTEST_CODE_BEGIN

  .align 2
  .option norvc

  li TESTNUM, 2
illegal_instruction:
  .word 0
  addi t2,t2,0x10000
  sub  t6,t5,t2
  amoswap.w t0, t1, 4(s0)

  TEST_PASSFAIL

  .align 8
  .global mtvec_handler
mtvec_handler:
  li t1, CAUSE_ILLEGAL_INSTRUCTION
  csrr t0, mcause
  csrr t0,mepc
  csrw mepc, t0

  mret

RVTEST_CODE_END

  .data
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END