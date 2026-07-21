#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV64U
RVTEST_CODE_BEGIN

  TEST_BR2_OP_TAKEN(    2, beq,  0, 0 );
  TEST_BR2_OP_NOTTAKEN( 3, beq,  0, 1 );
  TEST_BR2_OP_TAKEN(    4, bne,  0, 1 );
  TEST_BR2_OP_TAKEN(    5, blt, -1, 1 );
  TEST_BR2_OP_NOTTAKEN( 6, blt,  1, -1 );
  TEST_BR2_OP_TAKEN(    7, bge,  1, -1 );
  TEST_BR2_OP_TAKEN(    8, bltu, 1, -1 );
  TEST_BR2_OP_TAKEN(    9, bgeu, -1, 1 );

raw_chain:
  li TESTNUM, 10
  li x10, 3
  addi x11, x10, 4
  add x12, x11, x10
  sub x13, x12, x11
  li x7, 3
  bne x13, x7, fail

load_use_chain:
  li TESTNUM, 11
  la x10, hazard_data
  ld x11, 0(x10)
  addi x12, x11, 1
  li x7, 0x123456789abcdef1
  bne x12, x7, fail

branch_after_alu:
  li TESTNUM, 12
  li x10, 9
  li x11, 4
  sub x12, x10, x11
  li x13, 5
  bne x12, x13, fail

jal_link_check:
  li TESTNUM, 13
  la x10, 1f
  jal x11, 1f
1:
  bne x11, x10, fail

jalr_link_check:
  li TESTNUM, 14
  la x10, 2f
  la x12, 2f
  jalr x11, 0(x12)
2:
  bne x11, x10, fail

  TEST_PASSFAIL
RVTEST_CODE_END

  .data
  .align 3
hazard_data:
  .dword 0x123456789abcdef0

RVTEST_DATA_BEGIN
  TEST_DATA
RVTEST_DATA_END
