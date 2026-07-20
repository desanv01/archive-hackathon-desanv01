#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32M
RVTEST_CODE_BEGIN

  .align 2
  .option norvc
  li TESTNUM, 2

  la t0, test_cases
  li t5, 3

loop:
	lw t1, (t0)
  lw t2, 4(t0)
  lw t3, 8(t0)
  add t4, t1, t2
  addi t0, t0, 12
  beq t3, t4, continue_loop


continue_loop:
  addi t5, t5, 1
  bgtz t5, loop
  j test_end


test_end:

TEST_PASSFAIL

RVTEST_CODE_END

  .data
RVTEST_DATA_BEGIN

test_cases:
  .word 0x20
  .word 0x20
  .word 0x40
  .word 0x03034078
  .word 0x5d70344d
  .word 0x607374C5
  .word 0xcafe
  .word 0x1
  .word 0xcaff

RVTEST_DATA_END