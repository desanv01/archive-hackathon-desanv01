#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV64UF
RVTEST_CODE_BEGIN

single_precision_ops:
  li TESTNUM, 2
  la t0, fp_data
  flw f0, 0(t0)
  flw f1, 4(t0)

  fadd.s f2, f0, f1
  fmv.x.w t1, f2
  li t2, 0x40700000
  bne t1, t2, fail

  fsub.s f2, f1, f0
  fmv.x.w t1, f2
  li t2, 0x3f400000
  bne t1, t2, fail

  fmul.s f2, f0, f1
  fmv.x.w t1, f2
  li t2, 0x40580000
  bne t1, t2, fail

  fdiv.s f2, f1, f0
  fmv.x.w t1, f2
  li t2, 0x3fc00000
  bne t1, t2, fail

single_min_max_compare:
  li TESTNUM, 3
  fmin.s f2, f0, f1
  fmv.x.w t1, f2
  li t2, 0x3fc00000
  bne t1, t2, fail

  fmax.s f2, f0, f1
  fmv.x.w t1, f2
  li t2, 0x40100000
  bne t1, t2, fail

  flt.s t1, f0, f1
  li t2, 1
  bne t1, t2, fail
  feq.s t1, f0, f0
  bne t1, t2, fail
  fclass.s t1, f0
  li t2, 0x40
  bne t1, t2, fail

double_precision_ops:
  li TESTNUM, 4
  fld f3, 8(t0)
  fld f4, 16(t0)

  fadd.d f5, f3, f4
  fmv.x.d t1, f5
  li t2, 0x400e000000000000
  bne t1, t2, fail

  fmul.d f5, f3, f4
  fmv.x.d t1, f5
  li t2, 0x400b000000000000
  bne t1, t2, fail

  fdiv.d f5, f4, f3
  fmv.x.d t1, f5
  li t2, 0x3ff8000000000000
  bne t1, t2, fail

  TEST_PASSFAIL
RVTEST_CODE_END

  .data
  .align 3
fp_data:
  .word  0x3fc00000
  .word  0x40100000
  .dword 0x3ff8000000000000
  .dword 0x4002000000000000

RVTEST_DATA_BEGIN
  TEST_DATA
RVTEST_DATA_END
