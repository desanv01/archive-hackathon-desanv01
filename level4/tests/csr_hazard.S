#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV64M
RVTEST_CODE_BEGIN

csr_read_write_set_clear:
  li TESTNUM, 2
  csrr s0, mscratch
  csrwi mscratch, 0

  li t0, 0x55
  csrrw t1, mscratch, t0
  bnez t1, fail

  li t2, 0x55
  csrr t3, mscratch
  bne t3, t2, fail

  li t0, 0x0a
  csrrs t1, mscratch, t0
  bne t1, t2, fail
  li t2, 0x5f
  csrr t3, mscratch
  bne t3, t2, fail

  li t0, 0x0f
  csrrc t1, mscratch, t0
  bne t1, t2, fail
  li t2, 0x50
  csrr t3, mscratch
  bne t3, t2, fail

csr_immediate_forms:
  li TESTNUM, 3
  csrwi mscratch, 3
  csrrsi t1, mscratch, 4
  li t2, 3
  bne t1, t2, fail
  csrr t3, mscratch
  li t2, 7
  bne t3, t2, fail

  csrrci t1, mscratch, 1
  bne t1, t2, fail
  csrr t3, mscratch
  li t2, 6
  bne t3, t2, fail

csr_dependency_chain:
  li TESTNUM, 4
  li t0, 0x123
  csrw mscratch, t0
  csrr t1, mscratch
  addi t2, t1, 1
  li t3, 0x124
  bne t2, t3, fail

  csrw mscratch, s0

  TEST_PASSFAIL
RVTEST_CODE_END

  .data
RVTEST_DATA_BEGIN
  TEST_DATA
RVTEST_DATA_END
