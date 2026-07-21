#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV64U
RVTEST_CODE_BEGIN
  .option push
  .option rvc

compressed_arithmetic:
  li TESTNUM, 2
  c.li s0, 5
  c.addi s0, 3
  c.slli s0, 2
  c.srli s0, 1
  li t0, 16
  bne s0, t0, fail
  c.andi s0, 15
  bnez s0, fail

compressed_register_ops:
  li TESTNUM, 3
  c.li a0, 15
  c.li a1, 3
  c.sub a0, a1
  li t0, 12
  bne a0, t0, fail

  c.li a0, 15
  c.xor a0, a1
  li t0, 12
  bne a0, t0, fail

  c.li a0, 12
  c.or a0, a1
  li t0, 15
  bne a0, t0, fail

  c.li a0, 15
  c.and a0, a1
  li t0, 3
  bne a0, t0, fail

compressed_word_ops:
  li TESTNUM, 4
  li a0, 0x7fffffff
  c.li a1, 1
  c.addw a0, a1
  li t0, 0xffffffff80000000
  bne a0, t0, fail
  c.subw a0, a1
  li t0, 0x000000007fffffff
  bne a0, t0, fail

compressed_control:
  li TESTNUM, 5
  c.li s0, 0
  c.beqz s0, 1f
  c.j fail
1:
  c.li s0, 1
  c.bnez s0, 2f
  c.j fail
2:
  c.j 3f
  c.j fail
3:
  nop

  .option pop
  TEST_PASSFAIL
RVTEST_CODE_END

  .data
RVTEST_DATA_BEGIN
  TEST_DATA
RVTEST_DATA_END
