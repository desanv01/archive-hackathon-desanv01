#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV64U
RVTEST_CODE_BEGIN

  TEST_LD_OP( 2, lb,  0xffffffffffffff80, 0, load_data );
  TEST_LD_OP( 3, lbu, 0x0000000000000080, 0, load_data );
  TEST_LD_OP( 4, lb,  0x000000000000007f, 1, load_data );
  TEST_LD_OP( 5, lh,  0xffffffffffff8001, 2, load_data );
  TEST_LD_OP( 6, lhu, 0x0000000000008001, 2, load_data );
  TEST_LD_OP( 7, lw,  0xffffffff80000001, 4, load_data );
  TEST_LD_OP( 8, lwu, 0x0000000080000001, 4, load_data );
  TEST_LD_OP( 9, ld,  0x0123456789abcdef, 8, load_data );

  TEST_ST_OP( 10, lbu, sb, 0x7f, 0, store_data );
  TEST_ST_OP( 11, lhu, sh, 0x7f01, 2, store_data );
  TEST_ST_OP( 12, lwu, sw, 0x7fffff01, 4, store_data );
  TEST_ST_OP( 13, ld,  sd, 0xfedcba9876543210, 8, store_data );

store_forwarding:
  li TESTNUM, 14
  la x10, store_data
  li x11, 0x1122334455667788
  sd x11, 16(x10)
  ld x12, 16(x10)
  bne x11, x12, fail

partial_store:
  li TESTNUM, 15
  li x11, 0xaa
  sb x11, 17(x10)
  ld x12, 16(x10)
  li x7, 0x112233445566aa88
  bne x12, x7, fail

  TEST_PASSFAIL
RVTEST_CODE_END

  .data
  .align 3
load_data:
  .byte  0x80, 0x7f
  .half  0x8001
  .word  0x80000001
  .dword 0x0123456789abcdef

  .align 3
store_data:
  .fill 4, 8, 0

RVTEST_DATA_BEGIN
  TEST_DATA
RVTEST_DATA_END
