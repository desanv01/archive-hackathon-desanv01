#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV64U
RVTEST_CODE_BEGIN

raw_alu_chain:
  li TESTNUM, 2
  li x5, 7
  addi x6, x5, 5
  add x7, x6, x5
  sub x8, x7, x6
  li x31, 7
  bne x8, x31, fail

same_producer_two_sources:
  li TESTNUM, 3
  li x9, 0x1234
  add x10, x9, x9
  xor x11, x10, x9
  li x31, 0x365c
  bne x11, x31, fail

waw_same_destination:
  li TESTNUM, 4
  li x12, 3
  addi x13, x12, 4
  addi x13, x13, 5
  slli x13, x13, 1
  li x31, 24
  bne x13, x31, fail

destination_equals_source1:
  li TESTNUM, 5
  li x14, 0x55
  li x15, 0x0f
  xor x14, x14, x15
  add x14, x14, x14
  li x31, 0xb4
  bne x14, x31, fail

destination_equals_source2:
  li TESTNUM, 6
  li x16, 9
  li x17, 4
  sub x17, x16, x17
  add x17, x17, x16
  li x31, 14
  bne x17, x31, fail

two_recent_producers:
  li TESTNUM, 7
  li x18, 10
  addi x19, x18, 1
  addi x20, x19, 1
  add x21, x20, x19
  li x31, 23
  bne x21, x31, fail

multiply_result_dependency:
  li TESTNUM, 8
  li x22, 6
  li x23, 7
  mul x24, x22, x23
  addi x25, x24, 1
  mul x26, x25, x24
  li x31, 1806
  bne x26, x31, fail

divide_remainder_dependency:
  li TESTNUM, 9
  li x27, 100
  li x28, 7
  div x29, x27, x28
  rem x30, x27, x28
  add x29, x29, x30
  li x31, 16
  bne x29, x31, fail

word_result_sign_extension:
  li TESTNUM, 10
  li x5, 0x7fffffff
  addiw x6, x5, 1
  li x31, 0xffffffff80000000
  bne x6, x31, fail
  addw x7, x6, x6
  bnez x7, fail

shift_result_dependency:
  li TESTNUM, 11
  li x8, 1
  li x9, 63
  sll x10, x8, x9
  sra x11, x10, x9
  li x31, -1
  bne x11, x31, fail

branch_consumes_alu_result:
  li TESTNUM, 12
  li x12, 40
  addi x13, x12, 2
  li x14, 42
  sub x15, x13, x14
  bnez x15, fail

zero_register_destination:
  li TESTNUM, 13
  li x16, 0x12345678
  li x17, 0x11111111
  add x0, x16, x17
  bnez x0, fail

register_bank_edges:
  li TESTNUM, 14
  li x1, 11
  li x30, 12
  add x29, x1, x30
  li x31, 23
  bne x29, x31, fail

alternating_dependency_chain:
  li TESTNUM, 15
  li x5, 0xaaaaaaaaaaaaaaaa
  li x6, 0x5555555555555555
  xor x7, x5, x6
  and x8, x7, x5
  or x9, x8, x6
  xor x10, x9, x7
  li x31, 0
  bne x10, x31, fail

long_raw_chain:
  li TESTNUM, 16
  li x11, 1
  addi x12, x11, 1
  addi x13, x12, 1
  addi x14, x13, 1
  addi x15, x14, 1
  addi x16, x15, 1
  addi x17, x16, 1
  addi x18, x17, 1
  li x31, 8
  bne x18, x31, fail

  TEST_PASSFAIL

RVTEST_CODE_END

  .data
RVTEST_DATA_BEGIN
  TEST_DATA
RVTEST_DATA_END