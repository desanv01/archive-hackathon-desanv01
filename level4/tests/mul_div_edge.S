#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV64U
RVTEST_CODE_BEGIN

  TEST_RR_OP( 2,  mul,    0x000000000000003f, 7, 9 );
  TEST_RR_OP( 3,  mul,    0x2236d88fe5618cf0, 0x123456789abcdef0, 0x0fedcba987654321 );
  TEST_RR_OP( 4,  mulh,   0xffffffffffffffff, 0xffffffffffffffff, 2 );
  TEST_RR_OP( 5,  mulhu,  0x0000000000000001, 0xffffffffffffffff, 2 );
  TEST_RR_OP( 6,  mulhsu, 0xffffffffffffffff, 0xffffffffffffffff, 2 );
  TEST_RR_OP( 7,  mulw,   0x0000000000000000, 0x80000000, 2 );

  TEST_RR_OP( 8,  div,    0xfffffffffffffffa, -20, 3 );
  TEST_RR_OP( 9,  rem,    0xfffffffffffffffe, -20, 3 );
  TEST_RR_OP( 10, div,    0x0000000000000006, -20, -3 );
  TEST_RR_OP( 11, rem,    0xfffffffffffffffe, -20, -3 );
  TEST_RR_OP( 12, divu,   0x7fffffffffffffff, 0xffffffffffffffff, 2 );
  TEST_RR_OP( 13, remu,   0x0000000000000001, 0xffffffffffffffff, 2 );

  TEST_RR_OP( 14, div,    0xffffffffffffffff, 123, 0 );
  TEST_RR_OP( 15, rem,    0x000000000000007b, 123, 0 );
  TEST_RR_OP( 16, div,    0x8000000000000000, 0x8000000000000000, -1 );
  TEST_RR_OP( 17, rem,    0x0000000000000000, 0x8000000000000000, -1 );

  TEST_RR_OP( 18, divw,   0xfffffffffffffffa, -20, 3 );
  TEST_RR_OP( 19, remw,   0xfffffffffffffffe, -20, 3 );
  TEST_RR_OP( 20, divuw,  0x000000007fffffff, 0xffffffff, 2 );
  TEST_RR_OP( 21, remuw,  0x0000000000000001, 0xffffffff, 2 );

  TEST_PASSFAIL
RVTEST_CODE_END

  .data
RVTEST_DATA_BEGIN
  TEST_DATA
RVTEST_DATA_END
