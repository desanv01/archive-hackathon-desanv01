#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV64U
RVTEST_CODE_BEGIN

load_use_no_gap:
  li TESTNUM, 2
  la x5, source_data
  ld x6, 0(x5)
  addi x7, x6, 1
  li x31, 0x123456789abcdef1
  bne x7, x31, fail

load_overwrites_base:
  li TESTNUM, 3
  la x8, source_data
  ld x8, 8(x8)
  li x31, 0xfedcba9876543210
  bne x8, x31, fail

store_data_dependency:
  li TESTNUM, 4
  la x9, scratch_data
  li x10, 0x1122334455667787
  addi x11, x10, 1
  sd x11, 0(x9)
  ld x12, 0(x9)
  li x31, 0x1122334455667788
  bne x12, x31, fail

store_address_dependency:
  li TESTNUM, 5
  la x13, scratch_data
  addi x14, x13, 8
  li x15, 0xaabbccddeeff0011
  sd x15, 0(x14)
  ld x16, 8(x13)
  bne x16, x15, fail

overlapping_stores:
  li TESTNUM, 6
  la x17, scratch_data
  li x18, 0x1122334455667788
  sd x18, 16(x17)

  li x19, 0xaa
  sb x19, 17(x17)

  li x19, 0xbbcc
  sh x19, 18(x17)

  ld x20, 16(x17)
  li x31, 0x11223344bbccaa88
  bne x20, x31, fail

word_load_sign_extension:
  li TESTNUM, 7
  la x21, word_data
  lw x22, 0(x21)
  li x31, 0xffffffff80000001
  bne x22, x31, fail

word_load_zero_extension:
  li TESTNUM, 8
  lwu x23, 0(x21)
  li x31, 0x0000000080000001
  bne x23, x31, fail

branch_uses_load_result:
  li TESTNUM, 9
  la x24, branch_data
  ld x25, 0(x24)
  bnez x25, fail

taken_branch_squashes_wrong_path:
  li TESTNUM, 10
  li x26, 0
  li x27, 1
  beq x27, x27, branch_taken
  addi x26, x26, 1
  li x26, 0x777
branch_taken:
  bnez x26, fail

not_taken_branch_fallthrough:
  li TESTNUM, 11
  li x5, 5
  li x6, 6
  beq x5, x6, fail
  addi x7, x5, 1
  bne x7, x6, fail

branch_uses_alu_result:
  li TESTNUM, 12
  li x8, 40
  li x9, 2
  add x10, x8, x9
  li x11, 42
  sub x12, x10, x11
  beqz x12, alu_branch_taken
  j fail
alu_branch_taken:

jal_squashes_wrong_path:
  li TESTNUM, 13
  li x13, 0
  jal x14, jal_target
  addi x13, x13, 1
  li x13, 0x555
jal_target:
  bnez x13, fail

jalr_target_dependency:
  li TESTNUM, 14
  li x15, 0
  la x16, jalr_target
  addi x17, x16, 0
  jalr x18, 0(x17)
  addi x15, x15, 1
  li x15, 0x333
jalr_target:
  bnez x15, fail

back_to_back_redirects:
  li TESTNUM, 15
  li x19, 0
  beqz x19, redirect_one
  addi x19, x19, 1

redirect_one:
  j redirect_two
  addi x19, x19, 2

redirect_two:
  bnez x19, fail

  TEST_PASSFAIL

RVTEST_CODE_END

  .data
  .align 3

source_data:
  .dword 0x123456789abcdef0
  .dword 0xfedcba9876543210

word_data:
  .word 0x80000001
  .word 0

branch_data:
  .dword 0

scratch_data:
  .fill 8, 8, 0

RVTEST_DATA_BEGIN
  TEST_DATA
RVTEST_DATA_END