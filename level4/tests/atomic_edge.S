#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV64U
RVTEST_CODE_BEGIN

lr_sc_word:
  li TESTNUM, 2
  la t0, atomic_word
  lr.w t1, (t0)
  li t2, 5
  bne t1, t2, fail
  li t3, 9
  sc.w t4, t3, (t0)
  bnez t4, fail
  lwu t5, 0(t0)
  bne t5, t3, fail

amoadd_word:
  li TESTNUM, 3
  li t1, 3
  amoadd.w t2, t1, (t0)
  li t3, 9
  bne t2, t3, fail
  lwu t4, 0(t0)
  li t3, 12
  bne t4, t3, fail

amoxor_word:
  li TESTNUM, 4
  li t1, 0xff
  amoxor.w t2, t1, (t0)
  li t3, 12
  bne t2, t3, fail
  lwu t4, 0(t0)
  li t3, 0xf3
  bne t4, t3, fail

amomax_min_word:
  li TESTNUM, 5
  li t1, -1
  amomax.w t2, t1, (t0)
  li t3, 0xf3
  bne t2, t3, fail
  li t1, 1
  amominu.w t2, t1, (t0)
  li t3, 0xf3
  bne t2, t3, fail
  lwu t4, 0(t0)
  li t3, 1
  bne t4, t3, fail

amoswap_double:
  li TESTNUM, 6
  la t0, atomic_double
  li t1, -1
  amoswap.d t2, t1, (t0)
  li t3, 0x10
  bne t2, t3, fail
  ld t4, 0(t0)
  bne t4, t1, fail

amoadd_double_wrap:
  li TESTNUM, 7
  li t1, 1
  amoadd.d t2, t1, (t0)
  li t3, -1
  bne t2, t3, fail
  ld t4, 0(t0)
  bnez t4, fail

  TEST_PASSFAIL
RVTEST_CODE_END

  .data
  .align 3
atomic_word:
  .word 5
  .word 0
atomic_double:
  .dword 0x10

RVTEST_DATA_BEGIN
  TEST_DATA
RVTEST_DATA_END
