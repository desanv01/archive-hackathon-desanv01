#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV64U
RVTEST_CODE_BEGIN

  TEST_RR_OP( 2,  add,  0x8000000000000000, 0x7fffffffffffffff, 0x1 );
  TEST_RR_OP( 3,  sub,  0x7fffffffffffffff, 0x8000000000000000, 0x1 );
  TEST_RR_OP( 4,  slt,  0x1, 0xffffffffffffffff, 0x1 );
  TEST_RR_OP( 5,  sltu, 0x0, 0xffffffffffffffff, 0x1 );
  TEST_RR_OP( 6,  and,  0x0000000000000000, 0xaaaaaaaaaaaaaaaa, 0x5555555555555555 );
  TEST_RR_OP( 7,  or,   0xffffffffffffffff, 0xaaaaaaaaaaaaaaaa, 0x5555555555555555 );
  TEST_RR_OP( 8,  xor,  0xffffffffffffffff, 0xaaaaaaaaaaaaaaaa, 0x5555555555555555 );
  TEST_RR_OP( 9,  sll,  0x8000000000000000, 0x1, 63 );
  TEST_RR_OP( 10, srl,  0x1, 0x8000000000000000, 63 );
  TEST_RR_OP( 11, sra,  0xffffffffffffffff, 0x8000000000000000, 63 );

  TEST_IMM_OP( 12, addi, 0xfffffffffffff800, 0, -2048 );
  TEST_IMM_OP( 13, slti, 1, 0xffffffffffffffff, 1 );
  TEST_IMM_OP( 14, sltiu, 0, 0xffffffffffffffff, 1 );
  TEST_IMM_OP( 15, xori, 0xffffffffffffffff, 0, -1 );
  TEST_IMM_OP( 16, ori,  0x00000000000007ff, 0, 0x7ff );
  TEST_IMM_OP( 17, andi, 0x0000000000000055, 0x5555, 0x0ff );

  TEST_RR_OP( 18, addw, 0xffffffff80000000, 0x7fffffff, 1 );
  TEST_RR_OP( 19, subw, 0x000000007fffffff, 0x80000000, 1 );
  TEST_RR_OP( 20, sllw, 0xffffffff80000000, 1, 31 );
  TEST_RR_OP( 21, srlw, 0x0000000000000001, 0x80000000, 31 );
  TEST_RR_OP( 22, sraw, 0xffffffffffffffff, 0x80000000, 31 );

  TEST_CASE( 23, x14, 0xffffffff80000000,
    li x13, 0x7fffffff;
    addiw x14, x13, 1;
  )
  TEST_CASE( 24, x14, 0xffffffff80000000,
    li x13, 1;
    slliw x14, x13, 31;
  )
  TEST_CASE( 25, x14, 1,
    li x13, 0x80000000;
    srliw x14, x13, 31;
  )
  TEST_CASE( 26, x14, 0xffffffffffffffff,
    li x13, 0x80000000;
    sraiw x14, x13, 31;
  )

  TEST_PASSFAIL
RVTEST_CODE_END

  .data
RVTEST_DATA_BEGIN
  TEST_DATA
RVTEST_DATA_END
