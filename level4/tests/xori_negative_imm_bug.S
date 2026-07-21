#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV64U
RVTEST_CODE_BEGIN

xori_negative_immediate:
  li TESTNUM, 2

  li a3, 0
  xori a4, a3, -1

  li t2, -1
  bne a4, t2, fail

  TEST_PASSFAIL

RVTEST_CODE_END

  .data
RVTEST_DATA_BEGIN
  TEST_DATA
RVTEST_DATA_END
