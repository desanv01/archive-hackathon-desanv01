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

  # ADDI accepts only a signed 12-bit immediate. Build 0x10000 with LI.
  li t2, 0
  li t3, 0x10000
  add t2, t2, t3
  li t5, 0x10001
  sub t6, t5, t2
  li t4, 1
  bne t6, t4, fail

  # AMOs use an aligned address in rs1 and do not encode an offset.
  la s0, amo_target
  li t1, 0x12345678
  amoswap.w t0, t1, (s0)
  bnez t0, fail
  lw t3, 0(s0)
  bne t3, t1, fail

  TEST_PASSFAIL

  .align 8
  .global mtvec_handler
mtvec_handler:
  csrr t0, mcause
  li t1, CAUSE_ILLEGAL_INSTRUCTION
  bne t0, t1, fail

  # Skip the deliberately injected 32-bit illegal instruction.
  csrr t0, mepc
  addi t0, t0, 4
  csrw mepc, t0
  mret

RVTEST_CODE_END

  .data
RVTEST_DATA_BEGIN

  .align 2
amo_target:
  .word 0

  TEST_DATA

RVTEST_DATA_END