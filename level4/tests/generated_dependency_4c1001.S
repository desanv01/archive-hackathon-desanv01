#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV64U
RVTEST_CODE_BEGIN

dependency_initialization:
  li TESTNUM, 2
  li x5, 0x80df955168993d2c
  li x6, 0x01f9bb16d54b391b
  li x7, 0x063b0625834dfbf7
  li x8, 0xd3f39e78ed3de3ab
  li x9, 0xe15a9d4f8dc395da
  li x10, 0x73d2711ccf9e20a1
  li x11, 0x550a161f9e499a1f
  li x12, 0xde005809d74766ff
  li x13, 0x047bb67ea0ba08bf
  li x14, 0x20cd5cf55b71c2c8
  li x15, 0x0656566871c5ef06
  li x16, 0xbd1dba735f8764d6
  li x17, 0x6890c7fa8eb15e8d
  li x18, 0x69d82a190872df5f
  li x19, 0xf20cff6615054cfc
  li x20, 0x6aca356c95212655
  li x21, 0x0bd1efbe9a34a04f
  li x22, 0x62c0f27781c16bec
  li x23, 0xac1eaed609e44271
  li x24, 0xce73d2284c894239
  li x25, 0xe5649f6a251f96f0
  li x26, 0xf695bed962c0b1fe
  li x27, 0xf9beac5896f8f99a
  li x28, 0x3f516ad7f3e5d87f
  li x29, 0xc95455455418cc6b
  li x30, 0x1884bdd9a9d24ed2

dependency_block_0:
  li TESTNUM, 3
  sub x6, x17, x6
  sllw x14, x6, x19
  and x24, x14, x6
  sra x6, x24, x14
  li x31, 0x0000000020000000
  bne x6, x31, fail
  li x31, 0x0000000020000000
  bne x14, x31, fail
  li x31, 0x0000000020000000
  bne x24, x31, fail

dependency_block_1:
  li TESTNUM, 4
  add x27, x30, x14
  sll x11, x27, x14
  or x25, x11, x27
  srlw x27, x25, x11
  li x31, 0x0000000000003274
  bne x27, x31, fail
  li x31, 0x1884bdd9c9d24ed2
  bne x11, x31, fail
  li x31, 0x1884bdd9c9d24ed2
  bne x25, x31, fail

dependency_block_2:
  li TESTNUM, 5
  sltu x28, x14, x15
  srl x7, x28, x5
  slt x6, x7, x28
  xor x28, x6, x7
  li x31, 0x0000000000000001
  bne x28, x31, fail
  li x31, 0x0000000000000000
  bne x7, x31, fail
  li x31, 0x0000000000000001
  bne x6, x31, fail

dependency_block_3:
  li TESTNUM, 6
  add x9, x12, x22
  slt x18, x9, x22
  slt x8, x18, x9
  srlw x9, x8, x18
  li x31, 0x0000000000000000
  bne x9, x31, fail
  li x31, 0x0000000000000001
  bne x18, x31, fail
  li x31, 0x0000000000000001
  bne x8, x31, fail

dependency_block_4:
  li TESTNUM, 7
  srlw x9, x10, x20
  addw x26, x9, x21
  mul x12, x26, x9
  sra x9, x12, x26
  li x31, 0xffffffffad7dad31
  bne x9, x31, fail
  li x31, 0xffffffff9a34a6cb
  bne x26, x31, fail
  li x31, 0xfffffd6bed698c54
  bne x12, x31, fail

dependency_block_5:
  li TESTNUM, 8
  sltu x23, x6, x28
  sltu x6, x23, x9
  sllw x28, x6, x23
  mul x23, x28, x6
  li x31, 0x0000000000000001
  bne x23, x31, fail
  li x31, 0x0000000000000001
  bne x6, x31, fail
  li x31, 0x0000000000000001
  bne x28, x31, fail

dependency_block_6:
  li TESTNUM, 9
  sraw x17, x30, x27
  mul x5, x17, x11
  subw x20, x5, x17
  sra x17, x20, x5
  li x31, 0xfffffffffff6085c
  bne x17, x31, fail
  li x31, 0xecf553d5d8216aca
  bne x5, x31, fail
  li x31, 0xffffffffd821702d
  bne x20, x31, fail

dependency_block_7:
  li TESTNUM, 10
  sltu x17, x16, x12
  add x21, x17, x26
  mul x24, x21, x17
  srl x17, x24, x21
  li x31, 0x000ffffffff9a34a
  bne x17, x31, fail
  li x31, 0xffffffff9a34a6cc
  bne x21, x31, fail
  li x31, 0xffffffff9a34a6cc
  bne x24, x31, fail

dependency_block_8:
  li TESTNUM, 11
  sra x17, x14, x24
  xor x22, x17, x24
  sll x30, x22, x17
  subw x17, x30, x22
  li x31, 0x0000000000000000
  bne x17, x31, fail
  li x31, 0xffffffff9a36a6cc
  bne x22, x31, fail
  li x31, 0xffffffff9a36a6cc
  bne x30, x31, fail

dependency_block_9:
  li TESTNUM, 12
  sraw x29, x6, x15
  subw x24, x29, x13
  sllw x21, x24, x29
  xor x29, x21, x24
  li x31, 0x0000000000000000
  bne x29, x31, fail
  li x31, 0x000000005f45f741
  bne x24, x31, fail
  li x31, 0x000000005f45f741
  bne x21, x31, fail

dependency_block_10:
  li TESTNUM, 13
  srlw x26, x8, x20
  srlw x17, x26, x8
  add x11, x17, x26
  sllw x26, x11, x17
  li x31, 0x0000000000000000
  bne x26, x31, fail
  li x31, 0x0000000000000000
  bne x17, x31, fail
  li x31, 0x0000000000000000
  bne x11, x31, fail

dependency_block_11:
  li TESTNUM, 14
  sll x19, x18, x25
  and x15, x19, x5
  sra x10, x15, x19
  srl x19, x10, x15
  li x31, 0x0000000000000000
  bne x19, x31, fail
  li x31, 0x0000000000000000
  bne x15, x31, fail
  li x31, 0x0000000000000000
  bne x10, x31, fail

dependency_block_12:
  li TESTNUM, 15
  srl x23, x10, x21
  xor x30, x23, x28
  xor x8, x30, x23
  sra x23, x8, x30
  li x31, 0x0000000000000000
  bne x23, x31, fail
  li x31, 0x0000000000000001
  bne x30, x31, fail
  li x31, 0x0000000000000001
  bne x8, x31, fail

dependency_block_13:
  li TESTNUM, 16
  mul x18, x18, x14
  sra x12, x18, x5
  mul x20, x12, x18
  sltu x18, x20, x12
  li x31, 0x0000000000000000
  bne x18, x31, fail
  li x31, 0x0000000000080000
  bne x12, x31, fail
  li x31, 0x0001000000000000
  bne x20, x31, fail

dependency_block_14:
  li TESTNUM, 17
  mul x27, x17, x16
  sllw x8, x27, x16
  mul x28, x8, x27
  sra x27, x28, x8
  li x31, 0x0000000000000000
  bne x27, x31, fail
  li x31, 0x0000000000000000
  bne x8, x31, fail
  li x31, 0x0000000000000000
  bne x28, x31, fail

dependency_block_15:
  li TESTNUM, 18
  sub x10, x20, x20
  slt x13, x10, x25
  sra x6, x13, x10
  slt x10, x6, x13
  li x31, 0x0000000000000000
  bne x10, x31, fail
  li x31, 0x0000000000000001
  bne x13, x31, fail
  li x31, 0x0000000000000001
  bne x6, x31, fail

dependency_block_16:
  li TESTNUM, 19
  subw x13, x14, x22
  subw x6, x13, x19
  or x28, x6, x13
  slt x13, x28, x6
  li x31, 0x0000000000000000
  bne x13, x31, fail
  li x31, 0xffffffff85c95934
  bne x6, x31, fail
  li x31, 0xffffffff85c95934
  bne x28, x31, fail

dependency_block_17:
  li TESTNUM, 20
  sraw x17, x28, x18
  sraw x8, x17, x22
  xor x5, x8, x17
  xor x17, x5, x8
  li x31, 0xffffffff85c95934
  bne x17, x31, fail
  li x31, 0xfffffffffff85c95
  bne x8, x31, fail
  li x31, 0x000000007a3105a1
  bne x5, x31, fail

dependency_block_18:
  li TESTNUM, 21
  sub x10, x19, x9
  sllw x22, x10, x14
  subw x11, x22, x10
  addw x10, x11, x22
  li x31, 0x00000000528252cf
  bne x10, x31, fail
  li x31, 0x00000000528252cf
  bne x22, x31, fail
  li x31, 0x0000000000000000
  bne x11, x31, fail

dependency_block_19:
  li TESTNUM, 22
  mul x26, x20, x30
  add x28, x26, x28
  sllw x27, x28, x26
  or x26, x27, x28
  li x31, 0xffffffff85c95934
  bne x26, x31, fail
  li x31, 0x0000ffff85c95934
  bne x28, x31, fail
  li x31, 0xffffffff85c95934
  bne x27, x31, fail

dependency_block_20:
  li TESTNUM, 23
  add x25, x10, x26
  sllw x20, x25, x17
  sllw x12, x20, x25
  mul x25, x12, x20
  li x31, 0xffa0480000000000
  bne x25, x31, fail
  li x31, 0xffffffffc0300000
  bne x20, x31, fail
  li x31, 0x0000000001800000
  bne x12, x31, fail

dependency_block_21:
  li TESTNUM, 24
  sllw x9, x24, x10
  and x24, x9, x10
  addw x8, x24, x9
  subw x9, x8, x24
  li x31, 0xfffffffffba08000
  bne x9, x31, fail
  li x31, 0x0000000052800000
  bne x24, x31, fail
  li x31, 0x000000004e208000
  bne x8, x31, fail

dependency_block_22:
  li TESTNUM, 25
  sub x26, x29, x26
  slt x9, x26, x7
  subw x7, x9, x26
  sllw x26, x7, x9
  li x31, 0xffffffff85c95934
  bne x26, x31, fail
  li x31, 0x0000000000000000
  bne x9, x31, fail
  li x31, 0xffffffff85c95934
  bne x7, x31, fail

dependency_block_23:
  li TESTNUM, 26
  sub x11, x8, x30
  sub x12, x11, x20
  add x7, x12, x11
  or x11, x7, x12
  li x31, 0x00000000ddf0ffff
  bne x11, x31, fail
  li x31, 0x000000008df07fff
  bne x12, x31, fail
  li x31, 0x00000000dc10fffe
  bne x7, x31, fail

dependency_block_24:
  li TESTNUM, 27
  mul x30, x26, x14
  srl x10, x30, x28
  or x26, x10, x30
  srlw x30, x26, x10
  li x31, 0x0000000000100001
  bne x30, x31, fail
  li x31, 0x0000000000000f0b
  bne x10, x31, fail
  li x31, 0xf0b92b2680000f0b
  bne x26, x31, fail

dependency_block_25:
  li TESTNUM, 28
  sllw x8, x27, x29
  xor x12, x8, x7
  and x17, x12, x8
  srlw x8, x17, x12
  li x31, 0x0000000000007240
  bne x8, x31, fail
  li x31, 0xffffffff59d9a6ca
  bne x12, x31, fail
  li x31, 0xffffffff01c90000
  bne x17, x31, fail

dependency_block_26:
  li TESTNUM, 29
  add x14, x10, x11
  sltu x10, x14, x10
  mul x20, x10, x14
  xor x14, x20, x10
  li x31, 0x0000000000000000
  bne x14, x31, fail
  li x31, 0x0000000000000000
  bne x10, x31, fail
  li x31, 0x0000000000000000
  bne x20, x31, fail

dependency_block_27:
  li TESTNUM, 30
  subw x22, x9, x24
  srlw x27, x22, x26
  srlw x9, x27, x22
  sll x22, x9, x27
  li x31, 0x000000000015b000
  bne x22, x31, fail
  li x31, 0x000000000015b000
  bne x27, x31, fail
  li x31, 0x000000000015b000
  bne x9, x31, fail

dependency_block_28:
  li TESTNUM, 31
  srlw x25, x9, x13
  and x13, x25, x18
  sltu x12, x13, x25
  mul x25, x12, x13
  li x31, 0x0000000000000000
  bne x25, x31, fail
  li x31, 0x0000000000000000
  bne x13, x31, fail
  li x31, 0x0000000000000001
  bne x12, x31, fail

dependency_block_29:
  li TESTNUM, 32
  mul x15, x25, x5
  xor x27, x15, x25
  addw x17, x27, x15
  mul x15, x17, x27
  li x31, 0x0000000000000000
  bne x15, x31, fail
  li x31, 0x0000000000000000
  bne x27, x31, fail
  li x31, 0x0000000000000000
  bne x17, x31, fail

dependency_block_30:
  li TESTNUM, 33
  slt x25, x20, x8
  sll x24, x25, x5
  or x23, x24, x25
  xor x25, x23, x24
  li x31, 0x0000000000000001
  bne x25, x31, fail
  li x31, 0x0000000200000000
  bne x24, x31, fail
  li x31, 0x0000000200000001
  bne x23, x31, fail

dependency_block_31:
  li TESTNUM, 34
  xor x19, x27, x7
  xor x21, x19, x25
  srlw x25, x21, x19
  and x19, x25, x21
  li x31, 0x0000000000000003
  bne x19, x31, fail
  li x31, 0x00000000dc10ffff
  bne x21, x31, fail
  li x31, 0x0000000000000003
  bne x25, x31, fail

dependency_block_32:
  li TESTNUM, 35
  mul x17, x25, x19
  and x24, x17, x19
  srl x26, x24, x17
  mul x17, x26, x24
  li x31, 0x0000000000000000
  bne x17, x31, fail
  li x31, 0x0000000000000001
  bne x24, x31, fail
  li x31, 0x0000000000000000
  bne x26, x31, fail

dependency_block_33:
  li TESTNUM, 36
  or x18, x9, x19
  addw x10, x18, x15
  slt x19, x10, x18
  subw x18, x19, x10
  li x31, 0xffffffffffea4ffd
  bne x18, x31, fail
  li x31, 0x000000000015b003
  bne x10, x31, fail
  li x31, 0x0000000000000000
  bne x19, x31, fail

dependency_block_34:
  li TESTNUM, 37
  sltu x13, x19, x15
  addw x18, x13, x13
  slt x7, x18, x13
  and x13, x7, x18
  li x31, 0x0000000000000000
  bne x13, x31, fail
  li x31, 0x0000000000000000
  bne x18, x31, fail
  li x31, 0x0000000000000000
  bne x7, x31, fail

dependency_block_35:
  li TESTNUM, 38
  mul x25, x29, x12
  slt x23, x25, x20
  mul x11, x23, x25
  sraw x25, x11, x23
  li x31, 0x0000000000000000
  bne x25, x31, fail
  li x31, 0x0000000000000000
  bne x23, x31, fail
  li x31, 0x0000000000000000
  bne x11, x31, fail

dependency_block_36:
  li TESTNUM, 39
  sra x11, x28, x17
  sltu x9, x11, x25
  sraw x21, x9, x11
  mul x11, x21, x9
  li x31, 0x0000000000000000
  bne x11, x31, fail
  li x31, 0x0000000000000000
  bne x9, x31, fail
  li x31, 0x0000000000000000
  bne x21, x31, fail

dependency_block_37:
  li TESTNUM, 40
  sraw x30, x19, x30
  slt x17, x30, x5
  addw x26, x17, x30
  add x30, x26, x17
  li x31, 0x0000000000000002
  bne x30, x31, fail
  li x31, 0x0000000000000001
  bne x17, x31, fail
  li x31, 0x0000000000000001
  bne x26, x31, fail

dependency_block_38:
  li TESTNUM, 41
  srl x14, x7, x28
  sra x18, x14, x21
  sub x17, x18, x14
  sltu x14, x17, x18
  li x31, 0x0000000000000000
  bne x14, x31, fail
  li x31, 0x0000000000000000
  bne x18, x31, fail
  li x31, 0x0000000000000000
  bne x17, x31, fail

dependency_block_39:
  li TESTNUM, 42
  sra x9, x13, x14
  slt x6, x9, x14
  subw x11, x6, x9
  add x9, x11, x6
  li x31, 0x0000000000000000
  bne x9, x31, fail
  li x31, 0x0000000000000000
  bne x6, x31, fail
  li x31, 0x0000000000000000
  bne x11, x31, fail

dependency_block_40:
  li TESTNUM, 43
  srlw x17, x5, x23
  sltu x10, x17, x30
  sraw x28, x10, x17
  or x17, x28, x10
  li x31, 0x0000000000000000
  bne x17, x31, fail
  li x31, 0x0000000000000000
  bne x10, x31, fail
  li x31, 0x0000000000000000
  bne x28, x31, fail

dependency_block_41:
  li TESTNUM, 44
  sub x20, x6, x6
  srlw x29, x20, x17
  sub x18, x29, x20
  and x20, x18, x29
  li x31, 0x0000000000000000
  bne x20, x31, fail
  li x31, 0x0000000000000000
  bne x29, x31, fail
  li x31, 0x0000000000000000
  bne x18, x31, fail

dependency_block_42:
  li TESTNUM, 45
  sub x23, x7, x10
  sraw x27, x23, x27
  add x26, x27, x23
  xor x23, x26, x27
  li x31, 0x0000000000000000
  bne x23, x31, fail
  li x31, 0x0000000000000000
  bne x27, x31, fail
  li x31, 0x0000000000000000
  bne x26, x31, fail

dependency_block_43:
  li TESTNUM, 46
  subw x10, x10, x20
  sraw x11, x10, x21
  or x19, x11, x10
  xor x10, x19, x11
  li x31, 0x0000000000000000
  bne x10, x31, fail
  li x31, 0x0000000000000000
  bne x11, x31, fail
  li x31, 0x0000000000000000
  bne x19, x31, fail

dependency_block_44:
  li TESTNUM, 47
  srl x25, x7, x6
  and x13, x25, x8
  addw x26, x13, x25
  or x25, x26, x13
  li x31, 0x0000000000000000
  bne x25, x31, fail
  li x31, 0x0000000000000000
  bne x13, x31, fail
  li x31, 0x0000000000000000
  bne x26, x31, fail

dependency_block_45:
  li TESTNUM, 48
  sltu x23, x22, x29
  or x11, x23, x14
  srlw x9, x11, x23
  add x23, x9, x11
  li x31, 0x0000000000000000
  bne x23, x31, fail
  li x31, 0x0000000000000000
  bne x11, x31, fail
  li x31, 0x0000000000000000
  bne x9, x31, fail

dependency_block_46:
  li TESTNUM, 49
  sll x20, x23, x19
  subw x10, x20, x28
  sraw x19, x10, x20
  sltu x20, x19, x10
  li x31, 0x0000000000000000
  bne x20, x31, fail
  li x31, 0x0000000000000000
  bne x10, x31, fail
  li x31, 0x0000000000000000
  bne x19, x31, fail

dependency_block_47:
  li TESTNUM, 50
  or x7, x25, x26
  sub x10, x7, x15
  mul x11, x10, x7
  srl x7, x11, x10
  li x31, 0x0000000000000000
  bne x7, x31, fail
  li x31, 0x0000000000000000
  bne x10, x31, fail
  li x31, 0x0000000000000000
  bne x11, x31, fail

dependency_block_48:
  li TESTNUM, 51
  slt x25, x18, x7
  sub x24, x25, x25
  sraw x7, x24, x25
  or x25, x7, x24
  li x31, 0x0000000000000000
  bne x25, x31, fail
  li x31, 0x0000000000000000
  bne x24, x31, fail
  li x31, 0x0000000000000000
  bne x7, x31, fail

dependency_block_49:
  li TESTNUM, 52
  sll x24, x19, x17
  mul x22, x24, x26
  sllw x11, x22, x24
  subw x24, x11, x22
  li x31, 0x0000000000000000
  bne x24, x31, fail
  li x31, 0x0000000000000000
  bne x22, x31, fail
  li x31, 0x0000000000000000
  bne x11, x31, fail

dependency_block_50:
  li TESTNUM, 53
  add x5, x27, x8
  xor x13, x5, x6
  xor x6, x13, x5
  sllw x5, x6, x13
  li x31, 0x0000000000000000
  bne x5, x31, fail
  li x31, 0x0000000000007240
  bne x13, x31, fail
  li x31, 0x0000000000000000
  bne x6, x31, fail

dependency_block_51:
  li TESTNUM, 54
  add x27, x18, x17
  sra x29, x27, x26
  add x18, x29, x27
  sra x27, x18, x29
  li x31, 0x0000000000000000
  bne x27, x31, fail
  li x31, 0x0000000000000000
  bne x29, x31, fail
  li x31, 0x0000000000000000
  bne x18, x31, fail

dependency_block_52:
  li TESTNUM, 55
  subw x8, x24, x24
  sllw x12, x8, x18
  srl x28, x12, x8
  srl x8, x28, x12
  li x31, 0x0000000000000000
  bne x8, x31, fail
  li x31, 0x0000000000000000
  bne x12, x31, fail
  li x31, 0x0000000000000000
  bne x28, x31, fail

dependency_block_53:
  li TESTNUM, 56
  add x24, x7, x11
  xor x16, x24, x20
  addw x15, x16, x24
  sllw x24, x15, x16
  li x31, 0x0000000000000000
  bne x24, x31, fail
  li x31, 0x0000000000000000
  bne x16, x31, fail
  li x31, 0x0000000000000000
  bne x15, x31, fail

dependency_block_54:
  li TESTNUM, 57
  sraw x21, x22, x5
  sltu x29, x21, x29
  srlw x8, x29, x21
  add x21, x8, x29
  li x31, 0x0000000000000000
  bne x21, x31, fail
  li x31, 0x0000000000000000
  bne x29, x31, fail
  li x31, 0x0000000000000000
  bne x8, x31, fail

dependency_block_55:
  li TESTNUM, 58
  and x15, x29, x17
  xor x12, x15, x28
  srlw x23, x12, x15
  sraw x15, x23, x12
  li x31, 0x0000000000000000
  bne x15, x31, fail
  li x31, 0x0000000000000000
  bne x12, x31, fail
  li x31, 0x0000000000000000
  bne x23, x31, fail

dependency_block_56:
  li TESTNUM, 59
  sraw x12, x27, x6
  xor x29, x12, x22
  srl x27, x29, x12
  srl x12, x27, x29
  li x31, 0x0000000000000000
  bne x12, x31, fail
  li x31, 0x0000000000000000
  bne x29, x31, fail
  li x31, 0x0000000000000000
  bne x27, x31, fail

dependency_block_57:
  li TESTNUM, 60
  xor x7, x30, x14
  and x6, x7, x25
  sub x27, x6, x7
  or x7, x27, x6
  li x31, 0xfffffffffffffffe
  bne x7, x31, fail
  li x31, 0x0000000000000000
  bne x6, x31, fail
  li x31, 0xfffffffffffffffe
  bne x27, x31, fail

dependency_block_58:
  li TESTNUM, 61
  sraw x19, x14, x10
  srlw x16, x19, x27
  addw x28, x16, x19
  sra x19, x28, x16
  li x31, 0x0000000000000000
  bne x19, x31, fail
  li x31, 0x0000000000000000
  bne x16, x31, fail
  li x31, 0x0000000000000000
  bne x28, x31, fail

dependency_block_59:
  li TESTNUM, 62
  subw x25, x26, x20
  sll x12, x25, x15
  sraw x27, x12, x25
  xor x25, x27, x12
  li x31, 0x0000000000000000
  bne x25, x31, fail
  li x31, 0x0000000000000000
  bne x12, x31, fail
  li x31, 0x0000000000000000
  bne x27, x31, fail

dependency_block_60:
  li TESTNUM, 63
  sraw x13, x29, x23
  and x28, x13, x14
  sraw x12, x28, x13
  addw x13, x12, x28
  li x31, 0x0000000000000000
  bne x13, x31, fail
  li x31, 0x0000000000000000
  bne x28, x31, fail
  li x31, 0x0000000000000000
  bne x12, x31, fail

dependency_block_61:
  li TESTNUM, 64
  sra x9, x17, x18
  subw x22, x9, x26
  sub x29, x22, x9
  sllw x9, x29, x22
  li x31, 0x0000000000000000
  bne x9, x31, fail
  li x31, 0x0000000000000000
  bne x22, x31, fail
  li x31, 0x0000000000000000
  bne x29, x31, fail

dependency_block_62:
  li TESTNUM, 65
  sllw x10, x12, x9
  addw x28, x10, x14
  sllw x16, x28, x10
  srlw x10, x16, x28
  li x31, 0x0000000000000000
  bne x10, x31, fail
  li x31, 0x0000000000000000
  bne x28, x31, fail
  li x31, 0x0000000000000000
  bne x16, x31, fail

dependency_block_63:
  li TESTNUM, 66
  mul x27, x11, x22
  subw x6, x27, x26
  srl x20, x6, x27
  mul x27, x20, x6
  li x31, 0x0000000000000000
  bne x27, x31, fail
  li x31, 0x0000000000000000
  bne x6, x31, fail
  li x31, 0x0000000000000000
  bne x20, x31, fail

dependency_block_64:
  li TESTNUM, 67
  or x5, x11, x23
  sra x17, x5, x14
  mul x11, x17, x5
  srlw x5, x11, x17
  li x31, 0x0000000000000000
  bne x5, x31, fail
  li x31, 0x0000000000000000
  bne x17, x31, fail
  li x31, 0x0000000000000000
  bne x11, x31, fail

dependency_block_65:
  li TESTNUM, 68
  addw x30, x6, x10
  srlw x28, x30, x23
  srlw x11, x28, x30
  sllw x30, x11, x28
  li x31, 0x0000000000000000
  bne x30, x31, fail
  li x31, 0x0000000000000000
  bne x28, x31, fail
  li x31, 0x0000000000000000
  bne x11, x31, fail

dependency_block_66:
  li TESTNUM, 69
  srlw x30, x20, x13
  sra x16, x30, x15
  subw x23, x16, x30
  srl x30, x23, x16
  li x31, 0x0000000000000000
  bne x30, x31, fail
  li x31, 0x0000000000000000
  bne x16, x31, fail
  li x31, 0x0000000000000000
  bne x23, x31, fail

dependency_block_67:
  li TESTNUM, 70
  sub x18, x30, x28
  or x22, x18, x6
  addw x7, x22, x18
  sllw x18, x7, x22
  li x31, 0x0000000000000000
  bne x18, x31, fail
  li x31, 0x0000000000000000
  bne x22, x31, fail
  li x31, 0x0000000000000000
  bne x7, x31, fail

dependency_block_68:
  li TESTNUM, 71
  srlw x16, x14, x18
  or x23, x16, x28
  or x9, x23, x16
  sll x16, x9, x23
  li x31, 0x0000000000000000
  bne x16, x31, fail
  li x31, 0x0000000000000000
  bne x23, x31, fail
  li x31, 0x0000000000000000
  bne x9, x31, fail

dependency_block_69:
  li TESTNUM, 72
  subw x23, x6, x17
  sllw x14, x23, x28
  or x27, x14, x23
  sra x23, x27, x14
  li x31, 0x0000000000000000
  bne x23, x31, fail
  li x31, 0x0000000000000000
  bne x14, x31, fail
  li x31, 0x0000000000000000
  bne x27, x31, fail

dependency_block_70:
  li TESTNUM, 73
  add x12, x13, x26
  sraw x21, x12, x23
  sraw x26, x21, x12
  srlw x12, x26, x21
  li x31, 0x0000000000000000
  bne x12, x31, fail
  li x31, 0x0000000000000000
  bne x21, x31, fail
  li x31, 0x0000000000000000
  bne x26, x31, fail

dependency_block_71:
  li TESTNUM, 74
  subw x8, x10, x9
  xor x6, x8, x10
  sltu x23, x6, x8
  srlw x8, x23, x6
  li x31, 0x0000000000000000
  bne x8, x31, fail
  li x31, 0x0000000000000000
  bne x6, x31, fail
  li x31, 0x0000000000000000
  bne x23, x31, fail

dependency_block_72:
  li TESTNUM, 75
  sub x19, x27, x22
  slt x9, x19, x27
  xor x8, x9, x19
  sltu x19, x8, x9
  li x31, 0x0000000000000000
  bne x19, x31, fail
  li x31, 0x0000000000000000
  bne x9, x31, fail
  li x31, 0x0000000000000000
  bne x8, x31, fail

dependency_block_73:
  li TESTNUM, 76
  subw x9, x17, x24
  srl x28, x9, x23
  sltu x22, x28, x9
  xor x9, x22, x28
  li x31, 0x0000000000000000
  bne x9, x31, fail
  li x31, 0x0000000000000000
  bne x28, x31, fail
  li x31, 0x0000000000000000
  bne x22, x31, fail

dependency_block_74:
  li TESTNUM, 77
  sllw x7, x12, x15
  and x13, x7, x29
  srlw x15, x13, x7
  xor x7, x15, x13
  li x31, 0x0000000000000000
  bne x7, x31, fail
  li x31, 0x0000000000000000
  bne x13, x31, fail
  li x31, 0x0000000000000000
  bne x15, x31, fail

dependency_block_75:
  li TESTNUM, 78
  sraw x11, x19, x12
  mul x7, x11, x8
  subw x17, x7, x11
  sra x11, x17, x7
  li x31, 0x0000000000000000
  bne x11, x31, fail
  li x31, 0x0000000000000000
  bne x7, x31, fail
  li x31, 0x0000000000000000
  bne x17, x31, fail

dependency_block_76:
  li TESTNUM, 79
  and x19, x5, x14
  srlw x8, x19, x11
  or x13, x8, x19
  sub x19, x13, x8
  li x31, 0x0000000000000000
  bne x19, x31, fail
  li x31, 0x0000000000000000
  bne x8, x31, fail
  li x31, 0x0000000000000000
  bne x13, x31, fail

dependency_block_77:
  li TESTNUM, 80
  srl x28, x30, x20
  sll x17, x28, x9
  slt x5, x17, x28
  sll x28, x5, x17
  li x31, 0x0000000000000000
  bne x28, x31, fail
  li x31, 0x0000000000000000
  bne x17, x31, fail
  li x31, 0x0000000000000000
  bne x5, x31, fail

dependency_block_78:
  li TESTNUM, 81
  srl x27, x27, x16
  slt x14, x27, x21
  sll x26, x14, x27
  mul x27, x26, x14
  li x31, 0x0000000000000000
  bne x27, x31, fail
  li x31, 0x0000000000000000
  bne x14, x31, fail
  li x31, 0x0000000000000000
  bne x26, x31, fail

dependency_block_79:
  li TESTNUM, 82
  add x15, x16, x17
  mul x16, x15, x5
  addw x9, x16, x15
  srl x15, x9, x16
  li x31, 0x0000000000000000
  bne x15, x31, fail
  li x31, 0x0000000000000000
  bne x16, x31, fail
  li x31, 0x0000000000000000
  bne x9, x31, fail

dependency_block_80:
  li TESTNUM, 83
  sra x15, x22, x23
  addw x9, x15, x22
  sub x30, x9, x15
  slt x15, x30, x9
  li x31, 0x0000000000000000
  bne x15, x31, fail
  li x31, 0x0000000000000000
  bne x9, x31, fail
  li x31, 0x0000000000000000
  bne x30, x31, fail

dependency_block_81:
  li TESTNUM, 84
  addw x10, x22, x28
  srl x7, x10, x7
  sll x20, x7, x10
  xor x10, x20, x7
  li x31, 0x0000000000000000
  bne x10, x31, fail
  li x31, 0x0000000000000000
  bne x7, x31, fail
  li x31, 0x0000000000000000
  bne x20, x31, fail

dependency_block_82:
  li TESTNUM, 85
  and x14, x7, x12
  mul x29, x14, x18
  xor x13, x29, x14
  add x14, x13, x29
  li x31, 0x0000000000000000
  bne x14, x31, fail
  li x31, 0x0000000000000000
  bne x29, x31, fail
  li x31, 0x0000000000000000
  bne x13, x31, fail

dependency_block_83:
  li TESTNUM, 86
  add x23, x22, x28
  mul x12, x23, x16
  sra x5, x12, x23
  and x23, x5, x12
  li x31, 0x0000000000000000
  bne x23, x31, fail
  li x31, 0x0000000000000000
  bne x12, x31, fail
  li x31, 0x0000000000000000
  bne x5, x31, fail

dependency_block_84:
  li TESTNUM, 87
  mul x24, x5, x29
  sll x25, x24, x8
  sub x6, x25, x24
  sllw x24, x6, x25
  li x31, 0x0000000000000000
  bne x24, x31, fail
  li x31, 0x0000000000000000
  bne x25, x31, fail
  li x31, 0x0000000000000000
  bne x6, x31, fail

dependency_block_85:
  li TESTNUM, 88
  and x21, x10, x15
  addw x22, x21, x12
  srlw x27, x22, x21
  sraw x21, x27, x22
  li x31, 0x0000000000000000
  bne x21, x31, fail
  li x31, 0x0000000000000000
  bne x22, x31, fail
  li x31, 0x0000000000000000
  bne x27, x31, fail

dependency_block_86:
  li TESTNUM, 89
  or x17, x11, x29
  sraw x8, x17, x20
  sllw x12, x8, x17
  srl x17, x12, x8
  li x31, 0x0000000000000000
  bne x17, x31, fail
  li x31, 0x0000000000000000
  bne x8, x31, fail
  li x31, 0x0000000000000000
  bne x12, x31, fail

dependency_block_87:
  li TESTNUM, 90
  srlw x15, x22, x24
  sraw x14, x15, x20
  srl x22, x14, x15
  sraw x15, x22, x14
  li x31, 0x0000000000000000
  bne x15, x31, fail
  li x31, 0x0000000000000000
  bne x14, x31, fail
  li x31, 0x0000000000000000
  bne x22, x31, fail

dependency_block_88:
  li TESTNUM, 91
  or x29, x26, x10
  sllw x22, x29, x16
  sraw x26, x22, x29
  srl x29, x26, x22
  li x31, 0x0000000000000000
  bne x29, x31, fail
  li x31, 0x0000000000000000
  bne x22, x31, fail
  li x31, 0x0000000000000000
  bne x26, x31, fail

dependency_block_89:
  li TESTNUM, 92
  addw x24, x25, x25
  sub x19, x24, x16
  slt x13, x19, x24
  srl x24, x13, x19
  li x31, 0x0000000000000000
  bne x24, x31, fail
  li x31, 0x0000000000000000
  bne x19, x31, fail
  li x31, 0x0000000000000000
  bne x13, x31, fail

dependency_block_90:
  li TESTNUM, 93
  xor x25, x14, x30
  xor x6, x25, x13
  sub x12, x6, x25
  sllw x25, x12, x6
  li x31, 0x0000000000000000
  bne x25, x31, fail
  li x31, 0x0000000000000000
  bne x6, x31, fail
  li x31, 0x0000000000000000
  bne x12, x31, fail

dependency_block_91:
  li TESTNUM, 94
  sra x22, x14, x25
  srlw x5, x22, x22
  mul x17, x5, x22
  and x22, x17, x5
  li x31, 0x0000000000000000
  bne x22, x31, fail
  li x31, 0x0000000000000000
  bne x5, x31, fail
  li x31, 0x0000000000000000
  bne x17, x31, fail

dependency_block_92:
  li TESTNUM, 95
  sll x8, x23, x8
  mul x14, x8, x7
  sub x12, x14, x8
  srl x8, x12, x14
  li x31, 0x0000000000000000
  bne x8, x31, fail
  li x31, 0x0000000000000000
  bne x14, x31, fail
  li x31, 0x0000000000000000
  bne x12, x31, fail

dependency_block_93:
  li TESTNUM, 96
  add x17, x29, x12
  srlw x29, x17, x25
  sll x19, x29, x17
  sra x17, x19, x29
  li x31, 0x0000000000000000
  bne x17, x31, fail
  li x31, 0x0000000000000000
  bne x29, x31, fail
  li x31, 0x0000000000000000
  bne x19, x31, fail

dependency_block_94:
  li TESTNUM, 97
  sra x11, x22, x13
  subw x10, x11, x11
  subw x26, x10, x11
  or x11, x26, x10
  li x31, 0x0000000000000000
  bne x11, x31, fail
  li x31, 0x0000000000000000
  bne x10, x31, fail
  li x31, 0x0000000000000000
  bne x26, x31, fail

dependency_block_95:
  li TESTNUM, 98
  and x14, x21, x8
  add x17, x14, x18
  sra x19, x17, x14
  mul x14, x19, x17
  li x31, 0x0000000000000000
  bne x14, x31, fail
  li x31, 0x0000000000000000
  bne x17, x31, fail
  li x31, 0x0000000000000000
  bne x19, x31, fail

dependency_block_96:
  li TESTNUM, 99
  sraw x22, x19, x24
  mul x5, x22, x22
  xor x30, x5, x22
  srlw x22, x30, x5
  li x31, 0x0000000000000000
  bne x22, x31, fail
  li x31, 0x0000000000000000
  bne x5, x31, fail
  li x31, 0x0000000000000000
  bne x30, x31, fail

dependency_block_97:
  li TESTNUM, 100
  sub x13, x18, x23
  sllw x18, x13, x17
  or x11, x18, x13
  or x13, x11, x18
  li x31, 0x0000000000000000
  bne x13, x31, fail
  li x31, 0x0000000000000000
  bne x18, x31, fail
  li x31, 0x0000000000000000
  bne x11, x31, fail

dependency_block_98:
  li TESTNUM, 101
  sltu x11, x25, x13
  srl x6, x11, x18
  slt x10, x6, x11
  sub x11, x10, x6
  li x31, 0x0000000000000000
  bne x11, x31, fail
  li x31, 0x0000000000000000
  bne x6, x31, fail
  li x31, 0x0000000000000000
  bne x10, x31, fail

dependency_block_99:
  li TESTNUM, 102
  or x24, x23, x30
  subw x14, x24, x12
  srl x23, x14, x24
  mul x24, x23, x14
  li x31, 0x0000000000000000
  bne x24, x31, fail
  li x31, 0x0000000000000000
  bne x14, x31, fail
  li x31, 0x0000000000000000
  bne x23, x31, fail

dependency_block_100:
  li TESTNUM, 103
  sraw x6, x16, x16
  xor x25, x6, x7
  slt x24, x25, x6
  srlw x6, x24, x25
  li x31, 0x0000000000000000
  bne x6, x31, fail
  li x31, 0x0000000000000000
  bne x25, x31, fail
  li x31, 0x0000000000000000
  bne x24, x31, fail

dependency_block_101:
  li TESTNUM, 104
  subw x25, x17, x27
  sraw x23, x25, x17
  add x14, x23, x25
  subw x25, x14, x23
  li x31, 0x0000000000000000
  bne x25, x31, fail
  li x31, 0x0000000000000000
  bne x23, x31, fail
  li x31, 0x0000000000000000
  bne x14, x31, fail

dependency_block_102:
  li TESTNUM, 105
  addw x17, x7, x29
  srl x23, x17, x15
  mul x29, x23, x17
  sltu x17, x29, x23
  li x31, 0x0000000000000000
  bne x17, x31, fail
  li x31, 0x0000000000000000
  bne x23, x31, fail
  li x31, 0x0000000000000000
  bne x29, x31, fail

dependency_block_103:
  li TESTNUM, 106
  subw x28, x13, x8
  mul x22, x28, x24
  sll x27, x22, x28
  and x28, x27, x22
  li x31, 0x0000000000000000
  bne x28, x31, fail
  li x31, 0x0000000000000000
  bne x22, x31, fail
  li x31, 0x0000000000000000
  bne x27, x31, fail

dependency_block_104:
  li TESTNUM, 107
  mul x22, x25, x13
  srl x14, x22, x6
  sllw x10, x14, x22
  srl x22, x10, x14
  li x31, 0x0000000000000000
  bne x22, x31, fail
  li x31, 0x0000000000000000
  bne x14, x31, fail
  li x31, 0x0000000000000000
  bne x10, x31, fail

dependency_block_105:
  li TESTNUM, 108
  subw x23, x17, x13
  add x18, x23, x15
  add x15, x18, x23
  subw x23, x15, x18
  li x31, 0x0000000000000000
  bne x23, x31, fail
  li x31, 0x0000000000000000
  bne x18, x31, fail
  li x31, 0x0000000000000000
  bne x15, x31, fail

dependency_block_106:
  li TESTNUM, 109
  subw x14, x18, x24
  slt x17, x14, x16
  srl x9, x17, x14
  add x14, x9, x17
  li x31, 0x0000000000000000
  bne x14, x31, fail
  li x31, 0x0000000000000000
  bne x17, x31, fail
  li x31, 0x0000000000000000
  bne x9, x31, fail

dependency_block_107:
  li TESTNUM, 110
  sra x10, x27, x11
  sub x11, x10, x17
  subw x28, x11, x10
  sraw x10, x28, x11
  li x31, 0x0000000000000000
  bne x10, x31, fail
  li x31, 0x0000000000000000
  bne x11, x31, fail
  li x31, 0x0000000000000000
  bne x28, x31, fail

dependency_block_108:
  li TESTNUM, 111
  srl x21, x7, x24
  and x8, x21, x27
  xor x9, x8, x21
  xor x21, x9, x8
  li x31, 0x0000000000000000
  bne x21, x31, fail
  li x31, 0x0000000000000000
  bne x8, x31, fail
  li x31, 0x0000000000000000
  bne x9, x31, fail

dependency_block_109:
  li TESTNUM, 112
  subw x30, x24, x30
  and x15, x30, x10
  or x22, x15, x30
  sltu x30, x22, x15
  li x31, 0x0000000000000000
  bne x30, x31, fail
  li x31, 0x0000000000000000
  bne x15, x31, fail
  li x31, 0x0000000000000000
  bne x22, x31, fail

dependency_block_110:
  li TESTNUM, 113
  sub x10, x8, x17
  addw x21, x10, x25
  sra x11, x21, x10
  subw x10, x11, x21
  li x31, 0x0000000000000000
  bne x10, x31, fail
  li x31, 0x0000000000000000
  bne x21, x31, fail
  li x31, 0x0000000000000000
  bne x11, x31, fail

dependency_block_111:
  li TESTNUM, 114
  srlw x8, x5, x8
  sra x23, x8, x20
  sllw x15, x23, x8
  sub x8, x15, x23
  li x31, 0x0000000000000000
  bne x8, x31, fail
  li x31, 0x0000000000000000
  bne x23, x31, fail
  li x31, 0x0000000000000000
  bne x15, x31, fail

dependency_block_112:
  li TESTNUM, 115
  add x12, x11, x29
  sll x13, x12, x30
  sltu x5, x13, x12
  sub x12, x5, x13
  li x31, 0x0000000000000000
  bne x12, x31, fail
  li x31, 0x0000000000000000
  bne x13, x31, fail
  li x31, 0x0000000000000000
  bne x5, x31, fail

dependency_block_113:
  li TESTNUM, 116
  sll x22, x22, x14
  sra x9, x22, x22
  sraw x26, x9, x22
  sra x22, x26, x9
  li x31, 0x0000000000000000
  bne x22, x31, fail
  li x31, 0x0000000000000000
  bne x9, x31, fail
  li x31, 0x0000000000000000
  bne x26, x31, fail

dependency_block_114:
  li TESTNUM, 117
  or x24, x17, x17
  slt x18, x24, x6
  subw x19, x18, x24
  sltu x24, x19, x18
  li x31, 0x0000000000000000
  bne x24, x31, fail
  li x31, 0x0000000000000000
  bne x18, x31, fail
  li x31, 0x0000000000000000
  bne x19, x31, fail

dependency_block_115:
  li TESTNUM, 118
  sltu x25, x28, x13
  xor x9, x25, x25
  slt x27, x9, x25
  subw x25, x27, x9
  li x31, 0x0000000000000000
  bne x25, x31, fail
  li x31, 0x0000000000000000
  bne x9, x31, fail
  li x31, 0x0000000000000000
  bne x27, x31, fail

dependency_block_116:
  li TESTNUM, 119
  xor x20, x25, x8
  subw x7, x20, x26
  add x12, x7, x20
  and x20, x12, x7
  li x31, 0x0000000000000000
  bne x20, x31, fail
  li x31, 0x0000000000000000
  bne x7, x31, fail
  li x31, 0x0000000000000000
  bne x12, x31, fail

dependency_block_117:
  li TESTNUM, 120
  sra x14, x20, x12
  srlw x7, x14, x23
  srlw x15, x7, x14
  srl x14, x15, x7
  li x31, 0x0000000000000000
  bne x14, x31, fail
  li x31, 0x0000000000000000
  bne x7, x31, fail
  li x31, 0x0000000000000000
  bne x15, x31, fail

dependency_block_118:
  li TESTNUM, 121
  or x27, x11, x6
  sllw x24, x27, x27
  and x6, x24, x27
  and x27, x6, x24
  li x31, 0x0000000000000000
  bne x27, x31, fail
  li x31, 0x0000000000000000
  bne x24, x31, fail
  li x31, 0x0000000000000000
  bne x6, x31, fail

dependency_block_119:
  li TESTNUM, 122
  sltu x16, x7, x20
  xor x10, x16, x19
  srl x14, x10, x16
  srl x16, x14, x10
  li x31, 0x0000000000000000
  bne x16, x31, fail
  li x31, 0x0000000000000000
  bne x10, x31, fail
  li x31, 0x0000000000000000
  bne x14, x31, fail

dependency_block_120:
  li TESTNUM, 123
  srlw x26, x17, x14
  addw x30, x26, x30
  sra x24, x30, x26
  xor x26, x24, x30
  li x31, 0x0000000000000000
  bne x26, x31, fail
  li x31, 0x0000000000000000
  bne x30, x31, fail
  li x31, 0x0000000000000000
  bne x24, x31, fail

dependency_block_121:
  li TESTNUM, 124
  add x19, x29, x5
  sub x10, x19, x9
  add x20, x10, x19
  or x19, x20, x10
  li x31, 0x0000000000000000
  bne x19, x31, fail
  li x31, 0x0000000000000000
  bne x10, x31, fail
  li x31, 0x0000000000000000
  bne x20, x31, fail

dependency_block_122:
  li TESTNUM, 125
  sltu x24, x19, x8
  mul x19, x24, x5
  mul x18, x19, x24
  srl x24, x18, x19
  li x31, 0x0000000000000000
  bne x24, x31, fail
  li x31, 0x0000000000000000
  bne x19, x31, fail
  li x31, 0x0000000000000000
  bne x18, x31, fail

dependency_block_123:
  li TESTNUM, 126
  sub x14, x26, x24
  addw x18, x14, x30
  srlw x30, x18, x14
  sra x14, x30, x18
  li x31, 0x0000000000000000
  bne x14, x31, fail
  li x31, 0x0000000000000000
  bne x18, x31, fail
  li x31, 0x0000000000000000
  bne x30, x31, fail

dependency_block_124:
  li TESTNUM, 127
  srl x26, x21, x8
  sra x7, x26, x14
  sra x24, x7, x26
  or x26, x24, x7
  li x31, 0x0000000000000000
  bne x26, x31, fail
  li x31, 0x0000000000000000
  bne x7, x31, fail
  li x31, 0x0000000000000000
  bne x24, x31, fail

dependency_block_125:
  li TESTNUM, 128
  sraw x7, x15, x28
  sra x9, x7, x10
  srl x26, x9, x7
  sub x7, x26, x9
  li x31, 0x0000000000000000
  bne x7, x31, fail
  li x31, 0x0000000000000000
  bne x9, x31, fail
  li x31, 0x0000000000000000
  bne x26, x31, fail

dependency_block_126:
  li TESTNUM, 129
  mul x22, x18, x6
  sraw x10, x22, x29
  addw x14, x10, x22
  slt x22, x14, x10
  li x31, 0x0000000000000000
  bne x22, x31, fail
  li x31, 0x0000000000000000
  bne x10, x31, fail
  li x31, 0x0000000000000000
  bne x14, x31, fail

dependency_block_127:
  li TESTNUM, 130
  srl x18, x28, x27
  srl x5, x18, x18
  sllw x6, x5, x18
  addw x18, x6, x5
  li x31, 0x0000000000000000
  bne x18, x31, fail
  li x31, 0x0000000000000000
  bne x5, x31, fail
  li x31, 0x0000000000000000
  bne x6, x31, fail

dependency_block_128:
  li TESTNUM, 131
  sllw x14, x29, x10
  sllw x24, x14, x8
  sll x7, x24, x14
  sraw x14, x7, x24
  li x31, 0x0000000000000000
  bne x14, x31, fail
  li x31, 0x0000000000000000
  bne x24, x31, fail
  li x31, 0x0000000000000000
  bne x7, x31, fail

dependency_block_129:
  li TESTNUM, 132
  sub x30, x22, x10
  and x22, x30, x13
  subw x25, x22, x30
  sraw x30, x25, x22
  li x31, 0x0000000000000000
  bne x30, x31, fail
  li x31, 0x0000000000000000
  bne x22, x31, fail
  li x31, 0x0000000000000000
  bne x25, x31, fail

dependency_block_130:
  li TESTNUM, 133
  sll x7, x22, x23
  add x14, x7, x6
  add x21, x14, x7
  addw x7, x21, x14
  li x31, 0x0000000000000000
  bne x7, x31, fail
  li x31, 0x0000000000000000
  bne x14, x31, fail
  li x31, 0x0000000000000000
  bne x21, x31, fail

dependency_block_131:
  li TESTNUM, 134
  and x27, x21, x13
  addw x25, x27, x18
  srl x17, x25, x27
  sra x27, x17, x25
  li x31, 0x0000000000000000
  bne x27, x31, fail
  li x31, 0x0000000000000000
  bne x25, x31, fail
  li x31, 0x0000000000000000
  bne x17, x31, fail

dependency_block_132:
  li TESTNUM, 135
  mul x15, x15, x18
  sllw x8, x15, x14
  mul x16, x8, x15
  slt x15, x16, x8
  li x31, 0x0000000000000000
  bne x15, x31, fail
  li x31, 0x0000000000000000
  bne x8, x31, fail
  li x31, 0x0000000000000000
  bne x16, x31, fail

dependency_block_133:
  li TESTNUM, 136
  or x22, x14, x16
  srl x12, x22, x9
  sraw x8, x12, x22
  mul x22, x8, x12
  li x31, 0x0000000000000000
  bne x22, x31, fail
  li x31, 0x0000000000000000
  bne x12, x31, fail
  li x31, 0x0000000000000000
  bne x8, x31, fail

dependency_block_134:
  li TESTNUM, 137
  add x27, x19, x14
  srl x7, x27, x25
  srlw x25, x7, x27
  and x27, x25, x7
  li x31, 0x0000000000000000
  bne x27, x31, fail
  li x31, 0x0000000000000000
  bne x7, x31, fail
  li x31, 0x0000000000000000
  bne x25, x31, fail

dependency_block_135:
  li TESTNUM, 138
  sraw x10, x13, x13
  mul x14, x10, x7
  and x27, x14, x10
  srl x10, x27, x14
  li x31, 0x0000000000000000
  bne x10, x31, fail
  li x31, 0x0000000000000000
  bne x14, x31, fail
  li x31, 0x0000000000000000
  bne x27, x31, fail

dependency_block_136:
  li TESTNUM, 139
  add x23, x14, x27
  subw x17, x23, x26
  sub x27, x17, x23
  srlw x23, x27, x17
  li x31, 0x0000000000000000
  bne x23, x31, fail
  li x31, 0x0000000000000000
  bne x17, x31, fail
  li x31, 0x0000000000000000
  bne x27, x31, fail

dependency_block_137:
  li TESTNUM, 140
  mul x25, x26, x10
  sll x7, x25, x14
  or x16, x7, x25
  subw x25, x16, x7
  li x31, 0x0000000000000000
  bne x25, x31, fail
  li x31, 0x0000000000000000
  bne x7, x31, fail
  li x31, 0x0000000000000000
  bne x16, x31, fail

dependency_block_138:
  li TESTNUM, 141
  srlw x27, x17, x15
  sll x8, x27, x18
  sllw x5, x8, x27
  and x27, x5, x8
  li x31, 0x0000000000000000
  bne x27, x31, fail
  li x31, 0x0000000000000000
  bne x8, x31, fail
  li x31, 0x0000000000000000
  bne x5, x31, fail

dependency_block_139:
  li TESTNUM, 142
  xor x23, x7, x23
  add x13, x23, x30
  add x6, x13, x23
  sub x23, x6, x13
  li x31, 0x0000000000000000
  bne x23, x31, fail
  li x31, 0x0000000000000000
  bne x13, x31, fail
  li x31, 0x0000000000000000
  bne x6, x31, fail

dependency_block_140:
  li TESTNUM, 143
  sub x18, x24, x23
  sub x20, x18, x27
  or x30, x20, x18
  sltu x18, x30, x20
  li x31, 0x0000000000000000
  bne x18, x31, fail
  li x31, 0x0000000000000000
  bne x20, x31, fail
  li x31, 0x0000000000000000
  bne x30, x31, fail

dependency_block_141:
  li TESTNUM, 144
  mul x22, x15, x5
  sll x30, x22, x25
  subw x27, x30, x22
  slt x22, x27, x30
  li x31, 0x0000000000000000
  bne x22, x31, fail
  li x31, 0x0000000000000000
  bne x30, x31, fail
  li x31, 0x0000000000000000
  bne x27, x31, fail

dependency_block_142:
  li TESTNUM, 145
  sllw x21, x25, x25
  srlw x16, x21, x16
  mul x17, x16, x21
  sraw x21, x17, x16
  li x31, 0x0000000000000000
  bne x21, x31, fail
  li x31, 0x0000000000000000
  bne x16, x31, fail
  li x31, 0x0000000000000000
  bne x17, x31, fail

dependency_block_143:
  li TESTNUM, 146
  addw x6, x29, x13
  xor x9, x6, x11
  sll x12, x9, x6
  sltu x6, x12, x9
  li x31, 0x0000000000000000
  bne x6, x31, fail
  li x31, 0x0000000000000000
  bne x9, x31, fail
  li x31, 0x0000000000000000
  bne x12, x31, fail

dependency_block_144:
  li TESTNUM, 147
  sub x10, x28, x6
  subw x21, x10, x21
  or x23, x21, x10
  add x10, x23, x21
  li x31, 0x0000000000000000
  bne x10, x31, fail
  li x31, 0x0000000000000000
  bne x21, x31, fail
  li x31, 0x0000000000000000
  bne x23, x31, fail

dependency_block_145:
  li TESTNUM, 148
  sllw x8, x11, x23
  mul x6, x8, x5
  sllw x23, x6, x8
  mul x8, x23, x6
  li x31, 0x0000000000000000
  bne x8, x31, fail
  li x31, 0x0000000000000000
  bne x6, x31, fail
  li x31, 0x0000000000000000
  bne x23, x31, fail

dependency_block_146:
  li TESTNUM, 149
  sltu x29, x17, x21
  or x9, x29, x27
  sraw x28, x9, x29
  xor x29, x28, x9
  li x31, 0x0000000000000000
  bne x29, x31, fail
  li x31, 0x0000000000000000
  bne x9, x31, fail
  li x31, 0x0000000000000000
  bne x28, x31, fail

dependency_block_147:
  li TESTNUM, 150
  srl x25, x9, x30
  sllw x8, x25, x23
  subw x16, x8, x25
  srlw x25, x16, x8
  li x31, 0x0000000000000000
  bne x25, x31, fail
  li x31, 0x0000000000000000
  bne x8, x31, fail
  li x31, 0x0000000000000000
  bne x16, x31, fail

dependency_block_148:
  li TESTNUM, 151
  add x29, x16, x5
  and x25, x29, x19
  add x21, x25, x29
  and x29, x21, x25
  li x31, 0x0000000000000000
  bne x29, x31, fail
  li x31, 0x0000000000000000
  bne x25, x31, fail
  li x31, 0x0000000000000000
  bne x21, x31, fail

dependency_block_149:
  li TESTNUM, 152
  srlw x12, x16, x17
  srlw x5, x12, x7
  sll x16, x5, x12
  srl x12, x16, x5
  li x31, 0x0000000000000000
  bne x12, x31, fail
  li x31, 0x0000000000000000
  bne x5, x31, fail
  li x31, 0x0000000000000000
  bne x16, x31, fail

dependency_block_150:
  li TESTNUM, 153
  subw x28, x23, x26
  slt x21, x28, x25
  mul x16, x21, x28
  or x28, x16, x21
  li x31, 0x0000000000000000
  bne x28, x31, fail
  li x31, 0x0000000000000000
  bne x21, x31, fail
  li x31, 0x0000000000000000
  bne x16, x31, fail

dependency_block_151:
  li TESTNUM, 154
  sraw x14, x29, x19
  addw x9, x14, x26
  or x26, x9, x14
  sraw x14, x26, x9
  li x31, 0x0000000000000000
  bne x14, x31, fail
  li x31, 0x0000000000000000
  bne x9, x31, fail
  li x31, 0x0000000000000000
  bne x26, x31, fail

dependency_block_152:
  li TESTNUM, 155
  add x10, x10, x10
  sllw x19, x10, x25
  srlw x27, x19, x10
  and x10, x27, x19
  li x31, 0x0000000000000000
  bne x10, x31, fail
  li x31, 0x0000000000000000
  bne x19, x31, fail
  li x31, 0x0000000000000000
  bne x27, x31, fail

dependency_block_153:
  li TESTNUM, 156
  subw x22, x22, x5
  and x7, x22, x23
  sll x21, x7, x22
  and x22, x21, x7
  li x31, 0x0000000000000000
  bne x22, x31, fail
  li x31, 0x0000000000000000
  bne x7, x31, fail
  li x31, 0x0000000000000000
  bne x21, x31, fail

dependency_block_154:
  li TESTNUM, 157
  srlw x26, x8, x18
  sll x19, x26, x6
  xor x9, x19, x26
  xor x26, x9, x19
  li x31, 0x0000000000000000
  bne x26, x31, fail
  li x31, 0x0000000000000000
  bne x19, x31, fail
  li x31, 0x0000000000000000
  bne x9, x31, fail

dependency_block_155:
  li TESTNUM, 158
  add x5, x10, x25
  sra x27, x5, x24
  sraw x25, x27, x5
  or x5, x25, x27
  li x31, 0x0000000000000000
  bne x5, x31, fail
  li x31, 0x0000000000000000
  bne x27, x31, fail
  li x31, 0x0000000000000000
  bne x25, x31, fail

dependency_block_156:
  li TESTNUM, 159
  or x23, x22, x18
  xor x28, x23, x16
  sub x29, x28, x23
  mul x23, x29, x28
  li x31, 0x0000000000000000
  bne x23, x31, fail
  li x31, 0x0000000000000000
  bne x28, x31, fail
  li x31, 0x0000000000000000
  bne x29, x31, fail

dependency_block_157:
  li TESTNUM, 160
  srlw x24, x23, x10
  addw x9, x24, x29
  sraw x15, x9, x24
  sra x24, x15, x9
  li x31, 0x0000000000000000
  bne x24, x31, fail
  li x31, 0x0000000000000000
  bne x9, x31, fail
  li x31, 0x0000000000000000
  bne x15, x31, fail

dependency_block_158:
  li TESTNUM, 161
  sraw x15, x26, x16
  or x14, x15, x12
  slt x25, x14, x15
  subw x15, x25, x14
  li x31, 0x0000000000000000
  bne x15, x31, fail
  li x31, 0x0000000000000000
  bne x14, x31, fail
  li x31, 0x0000000000000000
  bne x25, x31, fail

dependency_block_159:
  li TESTNUM, 162
  and x25, x13, x13
  mul x11, x25, x23
  xor x6, x11, x25
  sub x25, x6, x11
  li x31, 0x0000000000000000
  bne x25, x31, fail
  li x31, 0x0000000000000000
  bne x11, x31, fail
  li x31, 0x0000000000000000
  bne x6, x31, fail

dependency_block_160:
  li TESTNUM, 163
  sraw x30, x5, x29
  and x10, x30, x25
  slt x28, x10, x30
  xor x30, x28, x10
  li x31, 0x0000000000000000
  bne x30, x31, fail
  li x31, 0x0000000000000000
  bne x10, x31, fail
  li x31, 0x0000000000000000
  bne x28, x31, fail

dependency_block_161:
  li TESTNUM, 164
  sra x5, x26, x17
  srl x23, x5, x16
  sraw x22, x23, x5
  sltu x5, x22, x23
  li x31, 0x0000000000000000
  bne x5, x31, fail
  li x31, 0x0000000000000000
  bne x23, x31, fail
  li x31, 0x0000000000000000
  bne x22, x31, fail

dependency_block_162:
  li TESTNUM, 165
  addw x20, x28, x7
  sraw x25, x20, x18
  srlw x5, x25, x20
  sllw x20, x5, x25
  li x31, 0x0000000000000000
  bne x20, x31, fail
  li x31, 0x0000000000000000
  bne x25, x31, fail
  li x31, 0x0000000000000000
  bne x5, x31, fail

dependency_block_163:
  li TESTNUM, 166
  srl x16, x18, x21
  addw x12, x16, x10
  sllw x8, x12, x16
  slt x16, x8, x12
  li x31, 0x0000000000000000
  bne x16, x31, fail
  li x31, 0x0000000000000000
  bne x12, x31, fail
  li x31, 0x0000000000000000
  bne x8, x31, fail

dependency_block_164:
  li TESTNUM, 167
  add x9, x20, x5
  slt x10, x9, x12
  srlw x24, x10, x9
  and x9, x24, x10
  li x31, 0x0000000000000000
  bne x9, x31, fail
  li x31, 0x0000000000000000
  bne x10, x31, fail
  li x31, 0x0000000000000000
  bne x24, x31, fail

dependency_block_165:
  li TESTNUM, 168
  add x30, x16, x26
  sltu x26, x30, x11
  or x19, x26, x30
  mul x30, x19, x26
  li x31, 0x0000000000000000
  bne x30, x31, fail
  li x31, 0x0000000000000000
  bne x26, x31, fail
  li x31, 0x0000000000000000
  bne x19, x31, fail

dependency_block_166:
  li TESTNUM, 169
  sraw x25, x20, x18
  srl x21, x25, x18
  srlw x13, x21, x25
  subw x25, x13, x21
  li x31, 0x0000000000000000
  bne x25, x31, fail
  li x31, 0x0000000000000000
  bne x21, x31, fail
  li x31, 0x0000000000000000
  bne x13, x31, fail

dependency_block_167:
  li TESTNUM, 170
  sll x6, x19, x27
  mul x15, x6, x30
  and x11, x15, x6
  srlw x6, x11, x15
  li x31, 0x0000000000000000
  bne x6, x31, fail
  li x31, 0x0000000000000000
  bne x15, x31, fail
  li x31, 0x0000000000000000
  bne x11, x31, fail

dependency_block_168:
  li TESTNUM, 171
  sub x29, x22, x28
  or x30, x29, x22
  sltu x7, x30, x29
  sltu x29, x7, x30
  li x31, 0x0000000000000000
  bne x29, x31, fail
  li x31, 0x0000000000000000
  bne x30, x31, fail
  li x31, 0x0000000000000000
  bne x7, x31, fail

dependency_block_169:
  li TESTNUM, 172
  addw x20, x27, x9
  or x16, x20, x23
  slt x7, x16, x20
  addw x20, x7, x16
  li x31, 0x0000000000000000
  bne x20, x31, fail
  li x31, 0x0000000000000000
  bne x16, x31, fail
  li x31, 0x0000000000000000
  bne x7, x31, fail

dependency_block_170:
  li TESTNUM, 173
  add x28, x24, x9
  add x21, x28, x12
  sraw x19, x21, x28
  sra x28, x19, x21
  li x31, 0x0000000000000000
  bne x28, x31, fail
  li x31, 0x0000000000000000
  bne x21, x31, fail
  li x31, 0x0000000000000000
  bne x19, x31, fail

dependency_block_171:
  li TESTNUM, 174
  srl x12, x27, x12
  sraw x20, x12, x28
  and x24, x20, x12
  and x12, x24, x20
  li x31, 0x0000000000000000
  bne x12, x31, fail
  li x31, 0x0000000000000000
  bne x20, x31, fail
  li x31, 0x0000000000000000
  bne x24, x31, fail

dependency_block_172:
  li TESTNUM, 175
  sll x14, x16, x26
  sra x20, x14, x29
  or x11, x20, x14
  srlw x14, x11, x20
  li x31, 0x0000000000000000
  bne x14, x31, fail
  li x31, 0x0000000000000000
  bne x20, x31, fail
  li x31, 0x0000000000000000
  bne x11, x31, fail

dependency_block_173:
  li TESTNUM, 176
  add x20, x22, x25
  xor x9, x20, x9
  sub x29, x9, x20
  mul x20, x29, x9
  li x31, 0x0000000000000000
  bne x20, x31, fail
  li x31, 0x0000000000000000
  bne x9, x31, fail
  li x31, 0x0000000000000000
  bne x29, x31, fail

dependency_block_174:
  li TESTNUM, 177
  sll x13, x14, x19
  srl x28, x13, x24
  mul x14, x28, x13
  sllw x13, x14, x28
  li x31, 0x0000000000000000
  bne x13, x31, fail
  li x31, 0x0000000000000000
  bne x28, x31, fail
  li x31, 0x0000000000000000
  bne x14, x31, fail

dependency_block_175:
  li TESTNUM, 178
  xor x15, x13, x21
  slt x18, x15, x16
  srlw x26, x18, x15
  or x15, x26, x18
  li x31, 0x0000000000000000
  bne x15, x31, fail
  li x31, 0x0000000000000000
  bne x18, x31, fail
  li x31, 0x0000000000000000
  bne x26, x31, fail

dependency_block_176:
  li TESTNUM, 179
  add x27, x28, x30
  or x9, x27, x9
  and x20, x9, x27
  mul x27, x20, x9
  li x31, 0x0000000000000000
  bne x27, x31, fail
  li x31, 0x0000000000000000
  bne x9, x31, fail
  li x31, 0x0000000000000000
  bne x20, x31, fail

dependency_block_177:
  li TESTNUM, 180
  slt x7, x17, x18
  mul x9, x7, x14
  subw x15, x9, x7
  or x7, x15, x9
  li x31, 0x0000000000000000
  bne x7, x31, fail
  li x31, 0x0000000000000000
  bne x9, x31, fail
  li x31, 0x0000000000000000
  bne x15, x31, fail

dependency_block_178:
  li TESTNUM, 181
  mul x14, x14, x24
  addw x29, x14, x15
  add x28, x29, x14
  sub x14, x28, x29
  li x31, 0x0000000000000000
  bne x14, x31, fail
  li x31, 0x0000000000000000
  bne x29, x31, fail
  li x31, 0x0000000000000000
  bne x28, x31, fail

dependency_block_179:
  li TESTNUM, 182
  subw x23, x16, x23
  addw x28, x23, x29
  mul x10, x28, x23
  sub x23, x10, x28
  li x31, 0x0000000000000000
  bne x23, x31, fail
  li x31, 0x0000000000000000
  bne x28, x31, fail
  li x31, 0x0000000000000000
  bne x10, x31, fail

  TEST_PASSFAIL

RVTEST_CODE_END

  .data
RVTEST_DATA_BEGIN
  TEST_DATA
RVTEST_DATA_END
