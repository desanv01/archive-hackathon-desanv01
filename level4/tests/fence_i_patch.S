#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV64U
RVTEST_CODE_BEGIN

fence_i_self_modifying_code:
  li TESTNUM, 2
  li s4, 0

  la t0, patch_target

  # Encoding: addi s4, x0, 7
  li t1, 0x00700a13
  sw t1, 0(t0)

  fence.i
  jalr ra, 0(t0)

patch_return:
  li t2, 7
  bne s4, t2, fail
  j patch_complete

  .align 2
patch_target:
  # Original instruction: addi s4, x0, 1
  .word 0x00100a13
  jalr x0, 0(ra)

patch_complete:
  TEST_PASSFAIL

RVTEST_CODE_END

  .data
RVTEST_DATA_BEGIN
  TEST_DATA
RVTEST_DATA_END
