#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV64U
RVTEST_CODE_BEGIN

amoadd_word_dependency:
  li TESTNUM, 2
  la x5, atomic_word
  li x6, 3
  amoadd.w x7, x6, (x5)

  li x31, 5
  bne x7, x31, fail

  lwu x8, 0(x5)
  li x31, 8
  bne x8, x31, fail

amoxor_word_dependency:
  li TESTNUM, 3
  li x9, 0xff
  amoxor.w x10, x9, (x5)

  li x31, 8
  bne x10, x31, fail

  lwu x11, 0(x5)
  li x31, 0xf7
  bne x11, x31, fail

amoor_word_dependency:
  li TESTNUM, 4
  li x12, 0x100
  amoor.w x13, x12, (x5)

  li x31, 0xf7
  bne x13, x31, fail

  lwu x14, 0(x5)
  li x31, 0x1f7
  bne x14, x31, fail

amoand_word_dependency:
  li TESTNUM, 5
  li x15, 0xff
  amoand.w x16, x15, (x5)

  li x31, 0x1f7
  bne x16, x31, fail

  lwu x17, 0(x5)
  li x31, 0xf7
  bne x17, x31, fail

amomax_signed_word:
  li TESTNUM, 6
  li x18, -1
  amomax.w x19, x18, (x5)

  li x31, 0xf7
  bne x19, x31, fail

  lwu x20, 0(x5)
  li x31, 0xf7
  bne x20, x31, fail

amomin_signed_word:
  li TESTNUM, 7
  li x21, -1
  amomin.w x22, x21, (x5)

  li x31, 0xf7
  bne x22, x31, fail

  lwu x23, 0(x5)
  li x31, 0xffffffff
  bne x23, x31, fail

amoswap_double:
  li TESTNUM, 8
  la x24, atomic_double
  li x25, 0x1122334455667788
  amoswap.d x26, x25, (x24)

  li x31, 0x10
  bne x26, x31, fail

  ld x27, 0(x24)
  bne x27, x25, fail

amoadd_double_wrap:
  li TESTNUM, 9
  li x28, 0xeeddccbbaa998878
  amoadd.d x29, x28, (x24)

  li x31, 0x1122334455667788
  bne x29, x31, fail

  ld x30, 0(x24)
  bnez x30, fail

back_to_back_amo:
  li TESTNUM, 10
  li x6, 1
  amoadd.d x7, x6, (x24)
  amoadd.d x8, x6, (x24)

  bnez x7, fail

  li x31, 1
  bne x8, x31, fail

  ld x9, 0(x24)
  li x31, 2
  bne x9, x31, fail

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