#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV64U
RVTEST_CODE_BEGIN

dependency_initialization:
  li TESTNUM, 2
  li x5, 0x2cae77cd3c234fbf
  li x6, 0x26c2246042f1eae8
  li x7, 0x012904e3def45e35
  li x8, 0xb327736690d12884
  li x9, 0xa8fd0fa58d4f128d
  li x10, 0x82d428f7c62b3207
  li x11, 0x0ed02039253c27a9
  li x12, 0xb944a2b7c3cdc5a7
  li x13, 0xb5b0edb4321d7036
  li x14, 0xd3e566d0928c5102
  li x15, 0x4aa1111bbc1c991c
  li x16, 0x4a35bbe3dea8a6c8
  li x17, 0x8fc8c84acaf52314
  li x18, 0xc103fdc73073d1c0
  li x19, 0x1f96c50f86df263f
  li x20, 0xcc1875a32de20716
  li x21, 0xd83f6121e78bc027
  li x22, 0x1201aaf8e0036972
  li x23, 0x19dfc0a84c85d6b2
  li x24, 0xa7b3c9860127331a
  li x25, 0xf1c991ad26ac8ce8
  li x26, 0xb919c59f035e9485
  li x27, 0x7dc81e0c5de0186a
  li x28, 0xff7e78ef69168b73
  li x29, 0x14eb7e53df0bfa4c
  li x30, 0x4da057f0e3324422

dependency_block_0:
  li TESTNUM, 3
  xor x11, x27, x30
  sltu x16, x11, x29
  mul x7, x16, x11
  mul x11, x7, x16
  li x31, 0x0000000000000000
  bne x11, x31, fail
  li x31, 0x0000000000000000
  bne x16, x31, fail
  li x31, 0x0000000000000000
  bne x7, x31, fail

dependency_block_1:
  li TESTNUM, 4
  sll x17, x16, x18
  xor x10, x17, x6
  mul x8, x10, x17
  srl x17, x8, x10
  li x31, 0x0000000000000000
  bne x17, x31, fail
  li x31, 0x26c2246042f1eae8
  bne x10, x31, fail
  li x31, 0x0000000000000000
  bne x8, x31, fail

dependency_block_2:
  li TESTNUM, 5
  sra x8, x28, x20
  xor x11, x8, x30
  srlw x15, x11, x8
  subw x8, x15, x11
  li x31, 0xffffffffe6db2612
  bne x8, x31, fail
  li x31, 0xb25fa80d1ad1f986
  bne x11, x31, fail
  li x31, 0x0000000001ad1f98
  bne x15, x31, fail

dependency_block_3:
  li TESTNUM, 6
  sra x24, x18, x10
  or x23, x24, x14
  slt x12, x23, x24
  subw x24, x12, x23
  li x31, 0x000000000032ac01
  bne x24, x31, fail
  li x31, 0xffffffffffcd53ff
  bne x23, x31, fail
  li x31, 0x0000000000000000
  bne x12, x31, fail

dependency_block_4:
  li TESTNUM, 7
  xor x9, x14, x26
  sltu x5, x9, x16
  sll x11, x5, x9
  addw x9, x11, x5
  li x31, 0x0000000000000000
  bne x9, x31, fail
  li x31, 0x0000000000000000
  bne x5, x31, fail
  li x31, 0x0000000000000000
  bne x11, x31, fail

dependency_block_5:
  li TESTNUM, 8
  subw x11, x30, x23
  or x23, x11, x19
  srl x7, x23, x11
  slt x11, x7, x23
  li x31, 0x0000000000000000
  bne x11, x31, fail
  li x31, 0xffffffffe7fff63f
  bne x23, x31, fail
  li x31, 0x000000001fffffff
  bne x7, x31, fail

dependency_block_6:
  li TESTNUM, 9
  sub x9, x5, x20
  slt x28, x9, x30
  xor x6, x28, x9
  sltu x9, x6, x28
  li x31, 0x0000000000000000
  bne x9, x31, fail
  li x31, 0x0000000000000001
  bne x28, x31, fail
  li x31, 0x33e78a5cd21df8eb
  bne x6, x31, fail

dependency_block_7:
  li TESTNUM, 10
  sltu x20, x15, x15
  srlw x11, x20, x11
  or x18, x11, x20
  or x20, x18, x11
  li x31, 0x0000000000000000
  bne x20, x31, fail
  li x31, 0x0000000000000000
  bne x11, x31, fail
  li x31, 0x0000000000000000
  bne x18, x31, fail

dependency_block_8:
  li TESTNUM, 11
  sllw x18, x18, x28
  and x12, x18, x16
  srlw x28, x12, x18
  sra x18, x28, x12
  li x31, 0x0000000000000000
  bne x18, x31, fail
  li x31, 0x0000000000000000
  bne x12, x31, fail
  li x31, 0x0000000000000000
  bne x28, x31, fail

dependency_block_9:
  li TESTNUM, 12
  srlw x14, x27, x6
  mul x29, x14, x16
  or x28, x29, x14
  sltu x14, x28, x29
  li x31, 0x0000000000000000
  bne x14, x31, fail
  li x31, 0x0000000000000000
  bne x29, x31, fail
  li x31, 0x00000000000bbc03
  bne x28, x31, fail

dependency_block_10:
  li TESTNUM, 13
  and x21, x13, x12
  sraw x16, x21, x7
  sll x10, x16, x21
  and x21, x10, x16
  li x31, 0x0000000000000000
  bne x21, x31, fail
  li x31, 0x0000000000000000
  bne x16, x31, fail
  li x31, 0x0000000000000000
  bne x10, x31, fail

dependency_block_11:
  li TESTNUM, 14
  subw x26, x20, x11
  mul x19, x26, x7
  or x24, x19, x26
  subw x26, x24, x19
  li x31, 0x0000000000000000
  bne x26, x31, fail
  li x31, 0x0000000000000000
  bne x19, x31, fail
  li x31, 0x0000000000000000
  bne x24, x31, fail

dependency_block_12:
  li TESTNUM, 15
  sub x9, x19, x9
  srl x15, x9, x8
  add x6, x15, x9
  sllw x9, x6, x15
  li x31, 0x0000000000000000
  bne x9, x31, fail
  li x31, 0x0000000000000000
  bne x15, x31, fail
  li x31, 0x0000000000000000
  bne x6, x31, fail

dependency_block_13:
  li TESTNUM, 16
  sra x23, x12, x26
  addw x8, x23, x6
  sllw x12, x8, x23
  sub x23, x12, x8
  li x31, 0x0000000000000000
  bne x23, x31, fail
  li x31, 0x0000000000000000
  bne x8, x31, fail
  li x31, 0x0000000000000000
  bne x12, x31, fail

dependency_block_14:
  li TESTNUM, 17
  sra x28, x17, x9
  slt x11, x28, x7
  sllw x7, x11, x28
  add x28, x7, x11
  li x31, 0x0000000000000002
  bne x28, x31, fail
  li x31, 0x0000000000000001
  bne x11, x31, fail
  li x31, 0x0000000000000001
  bne x7, x31, fail

dependency_block_15:
  li TESTNUM, 18
  sra x16, x30, x23
  sra x25, x16, x8
  slt x23, x25, x16
  addw x16, x23, x25
  li x31, 0xffffffffe3324422
  bne x16, x31, fail
  li x31, 0x4da057f0e3324422
  bne x25, x31, fail
  li x31, 0x0000000000000000
  bne x23, x31, fail

dependency_block_16:
  li TESTNUM, 19
  mul x28, x30, x21
  subw x30, x28, x16
  and x13, x30, x28
  addw x28, x13, x30
  li x31, 0x000000001ccdbbde
  bne x28, x31, fail
  li x31, 0x000000001ccdbbde
  bne x30, x31, fail
  li x31, 0x0000000000000000
  bne x13, x31, fail

dependency_block_17:
  li TESTNUM, 20
  srl x26, x13, x19
  sub x17, x26, x9
  and x22, x17, x26
  sraw x26, x22, x17
  li x31, 0x0000000000000000
  bne x26, x31, fail
  li x31, 0x0000000000000000
  bne x17, x31, fail
  li x31, 0x0000000000000000
  bne x22, x31, fail

dependency_block_18:
  li TESTNUM, 21
  sll x24, x22, x12
  mul x13, x24, x18
  slt x9, x13, x24
  sltu x24, x9, x13
  li x31, 0x0000000000000000
  bne x24, x31, fail
  li x31, 0x0000000000000000
  bne x13, x31, fail
  li x31, 0x0000000000000000
  bne x9, x31, fail

dependency_block_19:
  li TESTNUM, 22
  add x21, x25, x28
  or x12, x21, x22
  sll x14, x12, x21
  sraw x21, x14, x12
  li x31, 0x0000000000000000
  bne x21, x31, fail
  li x31, 0x4da057f100000000
  bne x12, x31, fail
  li x31, 0x4da057f100000000
  bne x14, x31, fail

dependency_block_20:
  li TESTNUM, 23
  or x30, x11, x12
  sub x5, x30, x30
  sub x15, x5, x30
  sub x30, x15, x5
  li x31, 0xb25fa80effffffff
  bne x30, x31, fail
  li x31, 0x0000000000000000
  bne x5, x31, fail
  li x31, 0xb25fa80effffffff
  bne x15, x31, fail

dependency_block_21:
  li TESTNUM, 24
  sllw x9, x11, x9
  addw x30, x9, x25
  sll x10, x30, x9
  addw x9, x10, x30
  li x31, 0xffffffffa996cc69
  bne x9, x31, fail
  li x31, 0xffffffffe3324423
  bne x30, x31, fail
  li x31, 0xffffffffc6648846
  bne x10, x31, fail

dependency_block_22:
  li TESTNUM, 25
  xor x10, x23, x30
  sllw x23, x10, x28
  subw x12, x23, x10
  srlw x10, x12, x23
  li x31, 0xffffffffdccdbbdd
  bne x10, x31, fail
  li x31, 0xffffffffc0000000
  bne x23, x31, fail
  li x31, 0xffffffffdccdbbdd
  bne x12, x31, fail

dependency_block_23:
  li TESTNUM, 26
  sltu x30, x11, x25
  xor x27, x30, x16
  add x24, x27, x30
  add x30, x24, x27
  li x31, 0xffffffffc6648847
  bne x30, x31, fail
  li x31, 0xffffffffe3324423
  bne x27, x31, fail
  li x31, 0xffffffffe3324424
  bne x24, x31, fail

dependency_block_24:
  li TESTNUM, 27
  add x8, x7, x7
  sltu x18, x8, x11
  mul x26, x18, x8
  srl x8, x26, x18
  li x31, 0x0000000000000000
  bne x8, x31, fail
  li x31, 0x0000000000000000
  bne x18, x31, fail
  li x31, 0x0000000000000000
  bne x26, x31, fail

dependency_block_25:
  li TESTNUM, 28
  srl x8, x29, x5
  or x6, x8, x20
  srlw x25, x6, x8
  sraw x8, x25, x6
  li x31, 0x0000000000000000
  bne x8, x31, fail
  li x31, 0x0000000000000000
  bne x6, x31, fail
  li x31, 0x0000000000000000
  bne x25, x31, fail

dependency_block_26:
  li TESTNUM, 29
  add x12, x12, x5
  srlw x23, x12, x20
  sll x15, x23, x12
  sub x12, x15, x23
  li x31, 0xfb99b77bc3324423
  bne x12, x31, fail
  li x31, 0xffffffffdccdbbdd
  bne x23, x31, fail
  li x31, 0xfb99b77ba0000000
  bne x15, x31, fail

dependency_block_27:
  li TESTNUM, 30
  subw x29, x7, x30
  mul x11, x29, x24
  subw x17, x11, x29
  xor x29, x17, x11
  li x31, 0xf984b322c99cf846
  bne x29, x31, fail
  li x31, 0xf984b322b5fe3e28
  bne x11, x31, fail
  li x31, 0x000000007c62c66e
  bne x17, x31, fail

dependency_block_28:
  li TESTNUM, 31
  srl x8, x19, x12
  srl x9, x8, x21
  subw x13, x9, x8
  addw x8, x13, x9
  li x31, 0x0000000000000000
  bne x8, x31, fail
  li x31, 0x0000000000000000
  bne x9, x31, fail
  li x31, 0x0000000000000000
  bne x13, x31, fail

dependency_block_29:
  li TESTNUM, 32
  sltu x5, x25, x17
  sll x25, x5, x23
  slt x11, x25, x5
  xor x5, x11, x25
  li x31, 0x0000000020000000
  bne x5, x31, fail
  li x31, 0x0000000020000000
  bne x25, x31, fail
  li x31, 0x0000000000000000
  bne x11, x31, fail

dependency_block_30:
  li TESTNUM, 33
  sltu x18, x15, x21
  sll x26, x18, x12
  sra x8, x26, x18
  sra x18, x8, x26
  li x31, 0x0000000000000000
  bne x18, x31, fail
  li x31, 0x0000000000000000
  bne x26, x31, fail
  li x31, 0x0000000000000000
  bne x8, x31, fail

dependency_block_31:
  li TESTNUM, 34
  or x28, x11, x11
  addw x29, x28, x10
  xor x20, x29, x28
  sll x28, x20, x29
  li x31, 0xfb99b77ba0000000
  bne x28, x31, fail
  li x31, 0xffffffffdccdbbdd
  bne x29, x31, fail
  li x31, 0xffffffffdccdbbdd
  bne x20, x31, fail

dependency_block_32:
  li TESTNUM, 35
  srlw x14, x22, x28
  subw x10, x14, x21
  addw x27, x10, x14
  or x14, x27, x10
  li x31, 0x0000000000000000
  bne x14, x31, fail
  li x31, 0x0000000000000000
  bne x10, x31, fail
  li x31, 0x0000000000000000
  bne x27, x31, fail

dependency_block_33:
  li TESTNUM, 36
  srlw x21, x27, x11
  addw x10, x21, x18
  mul x13, x10, x21
  xor x21, x13, x10
  li x31, 0x0000000000000000
  bne x21, x31, fail
  li x31, 0x0000000000000000
  bne x10, x31, fail
  li x31, 0x0000000000000000
  bne x13, x31, fail

dependency_block_34:
  li TESTNUM, 37
  slt x15, x22, x24
  srlw x26, x15, x17
  sllw x29, x26, x15
  slt x15, x29, x26
  li x31, 0x0000000000000000
  bne x15, x31, fail
  li x31, 0x0000000000000000
  bne x26, x31, fail
  li x31, 0x0000000000000000
  bne x29, x31, fail

dependency_block_35:
  li TESTNUM, 38
  and x11, x6, x13
  subw x5, x11, x21
  addw x28, x5, x11
  srlw x11, x28, x5
  li x31, 0x0000000000000000
  bne x11, x31, fail
  li x31, 0x0000000000000000
  bne x5, x31, fail
  li x31, 0x0000000000000000
  bne x28, x31, fail

dependency_block_36:
  li TESTNUM, 39
  slt x28, x26, x9
  xor x26, x28, x22
  sub x18, x26, x28
  srlw x28, x18, x26
  li x31, 0x0000000000000000
  bne x28, x31, fail
  li x31, 0x0000000000000000
  bne x26, x31, fail
  li x31, 0x0000000000000000
  bne x18, x31, fail

dependency_block_37:
  li TESTNUM, 40
  sll x17, x14, x16
  sltu x6, x17, x24
  add x12, x6, x17
  sll x17, x12, x6
  li x31, 0x0000000000000002
  bne x17, x31, fail
  li x31, 0x0000000000000001
  bne x6, x31, fail
  li x31, 0x0000000000000001
  bne x12, x31, fail

dependency_block_38:
  li TESTNUM, 41
  mul x30, x27, x12
  subw x26, x30, x22
  sub x14, x26, x30
  mul x30, x14, x26
  li x31, 0x0000000000000000
  bne x30, x31, fail
  li x31, 0x0000000000000000
  bne x26, x31, fail
  li x31, 0x0000000000000000
  bne x14, x31, fail

dependency_block_39:
  li TESTNUM, 42
  sra x21, x8, x19
  sra x13, x21, x26
  xor x12, x13, x21
  and x21, x12, x13
  li x31, 0x0000000000000000
  bne x21, x31, fail
  li x31, 0x0000000000000000
  bne x13, x31, fail
  li x31, 0x0000000000000000
  bne x12, x31, fail

dependency_block_40:
  li TESTNUM, 43
  or x5, x9, x12
  slt x27, x5, x29
  or x29, x27, x5
  srlw x5, x29, x27
  li x31, 0x0000000000000000
  bne x5, x31, fail
  li x31, 0x0000000000000000
  bne x27, x31, fail
  li x31, 0x0000000000000000
  bne x29, x31, fail

dependency_block_41:
  li TESTNUM, 44
  srl x28, x25, x10
  xor x23, x28, x25
  sltu x11, x23, x28
  add x28, x11, x23
  li x31, 0x0000000000000001
  bne x28, x31, fail
  li x31, 0x0000000000000000
  bne x23, x31, fail
  li x31, 0x0000000000000001
  bne x11, x31, fail

dependency_block_42:
  li TESTNUM, 45
  srlw x13, x27, x16
  add x19, x13, x29
  sllw x30, x19, x13
  sub x13, x30, x19
  li x31, 0x0000000000000000
  bne x13, x31, fail
  li x31, 0x0000000000000000
  bne x19, x31, fail
  li x31, 0x0000000000000000
  bne x30, x31, fail

dependency_block_43:
  li TESTNUM, 46
  or x11, x18, x7
  sll x13, x11, x12
  subw x17, x13, x11
  xor x11, x17, x13
  li x31, 0x0000000000000001
  bne x11, x31, fail
  li x31, 0x0000000000000001
  bne x13, x31, fail
  li x31, 0x0000000000000000
  bne x17, x31, fail

dependency_block_44:
  li TESTNUM, 47
  sltu x21, x20, x27
  or x15, x21, x10
  sra x9, x15, x21
  sll x21, x9, x15
  li x31, 0x0000000000000000
  bne x21, x31, fail
  li x31, 0x0000000000000000
  bne x15, x31, fail
  li x31, 0x0000000000000000
  bne x9, x31, fail

dependency_block_45:
  li TESTNUM, 48
  xor x8, x14, x10
  and x27, x8, x11
  addw x22, x27, x8
  xor x8, x22, x27
  li x31, 0x0000000000000000
  bne x8, x31, fail
  li x31, 0x0000000000000000
  bne x27, x31, fail
  li x31, 0x0000000000000000
  bne x22, x31, fail

dependency_block_46:
  li TESTNUM, 49
  and x22, x27, x18
  slt x17, x22, x23
  sll x19, x17, x22
  sra x22, x19, x17
  li x31, 0x0000000000000000
  bne x22, x31, fail
  li x31, 0x0000000000000000
  bne x17, x31, fail
  li x31, 0x0000000000000000
  bne x19, x31, fail

dependency_block_47:
  li TESTNUM, 50
  sllw x17, x17, x5
  mul x22, x17, x26
  addw x9, x22, x17
  addw x17, x9, x22
  li x31, 0x0000000000000000
  bne x17, x31, fail
  li x31, 0x0000000000000000
  bne x22, x31, fail
  li x31, 0x0000000000000000
  bne x9, x31, fail

dependency_block_48:
  li TESTNUM, 51
  sra x6, x24, x23
  slt x29, x6, x26
  subw x27, x29, x6
  addw x6, x27, x29
  li x31, 0x000000001ccdbbde
  bne x6, x31, fail
  li x31, 0x0000000000000001
  bne x29, x31, fail
  li x31, 0x000000001ccdbbdd
  bne x27, x31, fail

dependency_block_49:
  li TESTNUM, 52
  sraw x13, x8, x16
  or x8, x13, x28
  slt x15, x8, x13
  and x13, x15, x8
  li x31, 0x0000000000000000
  bne x13, x31, fail
  li x31, 0x0000000000000001
  bne x8, x31, fail
  li x31, 0x0000000000000000
  bne x15, x31, fail

dependency_block_50:
  li TESTNUM, 53
  xor x26, x13, x14
  subw x9, x26, x8
  slt x29, x9, x26
  srl x26, x29, x9
  li x31, 0x0000000000000000
  bne x26, x31, fail
  li x31, 0xffffffffffffffff
  bne x9, x31, fail
  li x31, 0x0000000000000001
  bne x29, x31, fail

dependency_block_51:
  li TESTNUM, 54
  srl x22, x12, x10
  srl x14, x22, x28
  sll x8, x14, x22
  sll x22, x8, x14
  li x31, 0x0000000000000000
  bne x22, x31, fail
  li x31, 0x0000000000000000
  bne x14, x31, fail
  li x31, 0x0000000000000000
  bne x8, x31, fail

dependency_block_52:
  li TESTNUM, 55
  add x10, x29, x24
  sra x18, x10, x15
  sraw x27, x18, x10
  sllw x10, x27, x18
  li x31, 0xffffffffe3324420
  bne x10, x31, fail
  li x31, 0xffffffffe3324425
  bne x18, x31, fail
  li x31, 0xffffffffff199221
  bne x27, x31, fail

dependency_block_53:
  li TESTNUM, 56
  sub x24, x18, x5
  addw x25, x24, x20
  sll x12, x25, x24
  sub x24, x12, x25
  li x31, 0x000000403ffffffe
  bne x24, x31, fail
  li x31, 0xffffffffc0000002
  bne x25, x31, fail
  li x31, 0x0000004000000000
  bne x12, x31, fail

dependency_block_54:
  li TESTNUM, 57
  sltu x10, x21, x11
  add x8, x10, x27
  mul x13, x8, x10
  mul x10, x13, x8
  li x31, 0x0000cf699a0ecc84
  bne x10, x31, fail
  li x31, 0xffffffffff199222
  bne x8, x31, fail
  li x31, 0xffffffffff199222
  bne x13, x31, fail

dependency_block_55:
  li TESTNUM, 58
  sraw x18, x6, x23
  srlw x7, x18, x13
  xor x17, x7, x18
  xor x18, x17, x7
  li x31, 0x000000001ccdbbde
  bne x18, x31, fail
  li x31, 0x0000000007336ef7
  bne x7, x31, fail
  li x31, 0x000000001bfed529
  bne x17, x31, fail

dependency_block_56:
  li TESTNUM, 59
  subw x23, x28, x7
  subw x22, x23, x8
  mul x17, x22, x23
  srl x23, x17, x22
  li x31, 0x0000000000002d5f
  bne x23, x31, fail
  li x31, 0xfffffffff9b2fee8
  bne x22, x31, fail
  li x31, 0x002d5f1a043f5d10
  bne x17, x31, fail

dependency_block_57:
  li TESTNUM, 60
  sub x27, x26, x16
  addw x14, x27, x6
  and x26, x14, x27
  sll x27, x26, x14
  li x31, 0xc000000000000000
  bne x27, x31, fail
  li x31, 0x00000000399b77bc
  bne x14, x31, fail
  li x31, 0x000000001889339c
  bne x26, x31, fail

dependency_block_58:
  li TESTNUM, 61
  subw x23, x16, x18
  sll x21, x23, x22
  mul x25, x21, x23
  mul x23, x25, x21
  li x31, 0x0000000000000000
  bne x23, x31, fail
  li x31, 0x6488440000000000
  bne x21, x31, fail
  li x31, 0xa852100000000000
  bne x25, x31, fail

dependency_block_59:
  li TESTNUM, 62
  or x9, x27, x14
  slt x23, x9, x5
  srlw x24, x23, x9
  srlw x9, x24, x23
  li x31, 0x0000000000000000
  bne x9, x31, fail
  li x31, 0x0000000000000001
  bne x23, x31, fail
  li x31, 0x0000000000000000
  bne x24, x31, fail

dependency_block_60:
  li TESTNUM, 63
  addw x15, x12, x25
  addw x17, x15, x15
  sltu x21, x17, x15
  and x15, x21, x17
  li x31, 0x0000000000000000
  bne x15, x31, fail
  li x31, 0x0000000000000000
  bne x17, x31, fail
  li x31, 0x0000000000000000
  bne x21, x31, fail

dependency_block_61:
  li TESTNUM, 64
  srl x14, x25, x27
  sub x29, x14, x7
  sub x12, x29, x14
  sub x14, x12, x29
  li x31, 0x57adf00000000000
  bne x14, x31, fail
  li x31, 0xa8520ffff8cc9109
  bne x29, x31, fail
  li x31, 0xfffffffff8cc9109
  bne x12, x31, fail

dependency_block_62:
  li TESTNUM, 65
  or x23, x18, x9
  add x27, x23, x8
  mul x7, x27, x23
  sltu x23, x7, x27
  li x31, 0x0000000000000000
  bne x23, x31, fail
  li x31, 0x000000001be74e00
  bne x27, x31, fail
  li x31, 0x0323b93b9e8fa400
  bne x7, x31, fail

dependency_block_63:
  li TESTNUM, 66
  sltu x29, x11, x6
  xor x10, x29, x25
  sltu x11, x10, x29
  sll x29, x11, x10
  li x31, 0x0000000000000000
  bne x29, x31, fail
  li x31, 0xa852100000000001
  bne x10, x31, fail
  li x31, 0x0000000000000000
  bne x11, x31, fail

dependency_block_64:
  li TESTNUM, 67
  sraw x18, x6, x7
  subw x12, x18, x25
  sll x17, x12, x18
  sltu x18, x17, x12
  li x31, 0x0000000000000000
  bne x18, x31, fail
  li x31, 0x000000001ccdbbde
  bne x12, x31, fail
  li x31, 0x07336ef780000000
  bne x17, x31, fail

dependency_block_65:
  li TESTNUM, 68
  sraw x10, x14, x15
  or x30, x10, x22
  sub x20, x30, x10
  srl x10, x20, x30
  li x31, 0x0000000000ffffff
  bne x10, x31, fail
  li x31, 0xfffffffff9b2fee8
  bne x30, x31, fail
  li x31, 0xfffffffff9b2fee8
  bne x20, x31, fail

dependency_block_66:
  li TESTNUM, 69
  sll x5, x16, x18
  sll x17, x5, x27
  or x6, x17, x5
  sraw x5, x6, x17
  li x31, 0xfffffffff8cc9108
  bne x5, x31, fail
  li x31, 0xffffffffe3324422
  bne x17, x31, fail
  li x31, 0xffffffffe3324422
  bne x6, x31, fail

dependency_block_67:
  li TESTNUM, 70
  sub x29, x7, x20
  sra x9, x29, x26
  mul x26, x9, x29
  sra x29, x26, x9
  li x31, 0x0000000000000008
  bne x29, x31, fail
  li x31, 0x00000000323b93ba
  bne x9, x31, fail
  li x31, 0x2243ec1937a4bb70
  bne x26, x31, fail

dependency_block_68:
  li TESTNUM, 71
  srl x30, x15, x15
  srlw x24, x30, x24
  srl x29, x24, x30
  add x30, x29, x24
  li x31, 0x0000000000000000
  bne x30, x31, fail
  li x31, 0x0000000000000000
  bne x24, x31, fail
  li x31, 0x0000000000000000
  bne x29, x31, fail

dependency_block_69:
  li TESTNUM, 72
  or x12, x18, x30
  addw x20, x12, x25
  sra x24, x20, x12
  slt x12, x24, x20
  li x31, 0x0000000000000000
  bne x12, x31, fail
  li x31, 0x0000000000000000
  bne x20, x31, fail
  li x31, 0x0000000000000000
  bne x24, x31, fail

dependency_block_70:
  li TESTNUM, 73
  sra x16, x17, x27
  sraw x8, x16, x11
  sraw x27, x8, x16
  sub x16, x27, x8
  li x31, 0x00000000159a4ce6
  bne x16, x31, fail
  li x31, 0xffffffffe3324422
  bne x8, x31, fail
  li x31, 0xfffffffff8cc9108
  bne x27, x31, fail

dependency_block_71:
  li TESTNUM, 74
  sub x18, x19, x25
  slt x27, x18, x23
  add x7, x27, x18
  sraw x18, x7, x27
  li x31, 0x0000000000000000
  bne x18, x31, fail
  li x31, 0x0000000000000000
  bne x27, x31, fail
  li x31, 0x57adf00000000000
  bne x7, x31, fail

dependency_block_72:
  li TESTNUM, 75
  sra x13, x5, x9
  or x24, x13, x12
  sraw x7, x24, x13
  sllw x13, x7, x24
  li x31, 0xffffffff80000000
  bne x13, x31, fail
  li x31, 0xffffffffffffffff
  bne x24, x31, fail
  li x31, 0xffffffffffffffff
  bne x7, x31, fail

dependency_block_73:
  li TESTNUM, 76
  sllw x26, x29, x6
  sltu x7, x26, x19
  sllw x12, x7, x26
  sllw x26, x12, x7
  li x31, 0x0000000000000000
  bne x26, x31, fail
  li x31, 0x0000000000000000
  bne x7, x31, fail
  li x31, 0x0000000000000000
  bne x12, x31, fail

dependency_block_74:
  li TESTNUM, 77
  add x27, x13, x12
  slt x7, x27, x6
  sraw x21, x7, x27
  slt x27, x21, x7
  li x31, 0x0000000000000000
  bne x27, x31, fail
  li x31, 0x0000000000000001
  bne x7, x31, fail
  li x31, 0x0000000000000001
  bne x21, x31, fail

dependency_block_75:
  li TESTNUM, 78
  sra x22, x19, x8
  add x26, x22, x21
  srlw x9, x26, x22
  sltu x22, x9, x26
  li x31, 0x0000000000000000
  bne x22, x31, fail
  li x31, 0x0000000000000001
  bne x26, x31, fail
  li x31, 0x0000000000000001
  bne x9, x31, fail

dependency_block_76:
  li TESTNUM, 79
  sra x16, x19, x12
  add x25, x16, x9
  sltu x11, x25, x16
  subw x16, x11, x25
  li x31, 0xffffffffffffffff
  bne x16, x31, fail
  li x31, 0x0000000000000001
  bne x25, x31, fail
  li x31, 0x0000000000000000
  bne x11, x31, fail

dependency_block_77:
  li TESTNUM, 80
  sraw x25, x19, x10
  sub x11, x25, x26
  add x14, x11, x25
  srl x25, x14, x11
  li x31, 0x0000000000000001
  bne x25, x31, fail
  li x31, 0xffffffffffffffff
  bne x11, x31, fail
  li x31, 0xffffffffffffffff
  bne x14, x31, fail

dependency_block_78:
  li TESTNUM, 81
  mul x24, x18, x7
  sra x11, x24, x11
  or x13, x11, x24
  sra x24, x13, x11
  li x31, 0x0000000000000000
  bne x24, x31, fail
  li x31, 0x0000000000000000
  bne x11, x31, fail
  li x31, 0x0000000000000000
  bne x13, x31, fail

dependency_block_79:
  li TESTNUM, 82
  xor x16, x18, x6
  sraw x23, x16, x24
  and x11, x23, x16
  sra x16, x11, x23
  li x31, 0xffffffffffffffff
  bne x16, x31, fail
  li x31, 0xffffffffe3324422
  bne x23, x31, fail
  li x31, 0xffffffffe3324422
  bne x11, x31, fail

dependency_block_80:
  li TESTNUM, 83
  xor x10, x19, x23
  mul x22, x10, x6
  sltu x16, x22, x10
  subw x10, x16, x22
  li x31, 0x000000000495eb7d
  bne x10, x31, fail
  li x31, 0x033da66efb6a1484
  bne x22, x31, fail
  li x31, 0x0000000000000001
  bne x16, x31, fail

dependency_block_81:
  li TESTNUM, 84
  sraw x30, x6, x17
  add x6, x30, x6
  sll x23, x6, x30
  sltu x30, x23, x6
  li x31, 0x0000000000000001
  bne x30, x31, fail
  li x31, 0xffffffffdbfed52a
  bne x6, x31, fail
  li x31, 0xffffffdbfed52a00
  bne x23, x31, fail

dependency_block_82:
  li TESTNUM, 85
  srlw x26, x9, x15
  xor x11, x26, x17
  subw x6, x11, x26
  sub x26, x6, x11
  li x31, 0xffffffffffffffff
  bne x26, x31, fail
  li x31, 0xffffffffe3324423
  bne x11, x31, fail
  li x31, 0xffffffffe3324422
  bne x6, x31, fail

dependency_block_83:
  li TESTNUM, 86
  or x8, x12, x5
  sub x23, x8, x15
  sraw x30, x23, x8
  mul x8, x30, x23
  li x31, 0x000033da67308588
  bne x8, x31, fail
  li x31, 0xfffffffff8cc9108
  bne x23, x31, fail
  li x31, 0xfffffffffff8cc91
  bne x30, x31, fail

dependency_block_84:
  li TESTNUM, 87
  and x23, x12, x21
  xor x18, x23, x29
  sllw x22, x18, x23
  add x23, x22, x18
  li x31, 0x0000000000000000
  bne x23, x31, fail
  li x31, 0x0000000000000000
  bne x18, x31, fail
  li x31, 0x0000000000000000
  bne x22, x31, fail

dependency_block_85:
  li TESTNUM, 88
  sltu x7, x26, x25
  sraw x16, x7, x29
  sll x27, x16, x7
  srlw x7, x27, x16
  li x31, 0x0000000000000000
  bne x7, x31, fail
  li x31, 0x0000000000000000
  bne x16, x31, fail
  li x31, 0x0000000000000000
  bne x27, x31, fail

dependency_block_86:
  li TESTNUM, 89
  sraw x12, x6, x12
  xor x25, x12, x10
  xor x16, x25, x12
  or x12, x16, x25
  li x31, 0xffffffffe7b7ef7f
  bne x12, x31, fail
  li x31, 0xffffffffe7a7af5f
  bne x25, x31, fail
  li x31, 0x000000000495eb7d
  bne x16, x31, fail

dependency_block_87:
  li TESTNUM, 90
  sltu x24, x26, x15
  srl x23, x24, x8
  subw x16, x23, x24
  mul x24, x16, x23
  li x31, 0x0000000000000000
  bne x24, x31, fail
  li x31, 0x0000000000000000
  bne x23, x31, fail
  li x31, 0x0000000000000000
  bne x16, x31, fail

dependency_block_88:
  li TESTNUM, 91
  or x29, x26, x28
  srlw x24, x29, x6
  sub x22, x24, x29
  or x29, x22, x24
  li x31, 0x000000007fffffff
  bne x29, x31, fail
  li x31, 0x000000003fffffff
  bne x24, x31, fail
  li x31, 0x0000000040000000
  bne x22, x31, fail

dependency_block_89:
  li TESTNUM, 92
  srl x14, x29, x26
  sltu x17, x14, x19
  sll x6, x17, x14
  sltu x14, x6, x17
  li x31, 0x0000000000000000
  bne x14, x31, fail
  li x31, 0x0000000000000000
  bne x17, x31, fail
  li x31, 0x0000000000000000
  bne x6, x31, fail

dependency_block_90:
  li TESTNUM, 93
  xor x7, x10, x15
  sllw x6, x7, x16
  and x30, x6, x7
  sra x7, x30, x6
  li x31, 0x0000000000000000
  bne x7, x31, fail
  li x31, 0x000000000495eb7d
  bne x6, x31, fail
  li x31, 0x000000000495eb7d
  bne x30, x31, fail

dependency_block_91:
  li TESTNUM, 94
  slt x29, x7, x5
  and x28, x29, x30
  subw x12, x28, x29
  sll x29, x12, x28
  li x31, 0x0000000000000000
  bne x29, x31, fail
  li x31, 0x0000000000000000
  bne x28, x31, fail
  li x31, 0x0000000000000000
  bne x12, x31, fail

dependency_block_92:
  li TESTNUM, 95
  or x25, x25, x18
  xor x21, x25, x18
  srlw x30, x21, x25
  sra x25, x30, x21
  li x31, 0x0000000000000000
  bne x25, x31, fail
  li x31, 0xffffffffe7a7af5f
  bne x21, x31, fail
  li x31, 0x0000000000000001
  bne x30, x31, fail

dependency_block_93:
  li TESTNUM, 96
  sub x29, x19, x25
  xor x11, x29, x13
  srlw x12, x11, x29
  or x29, x12, x11
  li x31, 0x0000000000000000
  bne x29, x31, fail
  li x31, 0x0000000000000000
  bne x11, x31, fail
  li x31, 0x0000000000000000
  bne x12, x31, fail

dependency_block_94:
  li TESTNUM, 97
  srlw x8, x20, x16
  addw x25, x8, x26
  subw x19, x25, x8
  and x8, x19, x25
  li x31, 0xffffffffffffffff
  bne x8, x31, fail
  li x31, 0xffffffffffffffff
  bne x25, x31, fail
  li x31, 0xffffffffffffffff
  bne x19, x31, fail

dependency_block_95:
  li TESTNUM, 98
  sltu x15, x15, x5
  sllw x14, x15, x20
  sltu x20, x14, x15
  srl x15, x20, x14
  li x31, 0x0000000000000000
  bne x15, x31, fail
  li x31, 0x0000000000000001
  bne x14, x31, fail
  li x31, 0x0000000000000000
  bne x20, x31, fail

dependency_block_96:
  li TESTNUM, 99
  sltu x30, x19, x24
  or x13, x30, x29
  sll x11, x13, x30
  sub x30, x11, x13
  li x31, 0x0000000000000000
  bne x30, x31, fail
  li x31, 0x0000000000000000
  bne x13, x31, fail
  li x31, 0x0000000000000000
  bne x11, x31, fail

dependency_block_97:
  li TESTNUM, 100
  and x27, x13, x18
  srlw x10, x27, x26
  xor x21, x10, x27
  srlw x27, x21, x10
  li x31, 0x0000000000000000
  bne x27, x31, fail
  li x31, 0x0000000000000000
  bne x10, x31, fail
  li x31, 0x0000000000000000
  bne x21, x31, fail

dependency_block_98:
  li TESTNUM, 101
  srl x8, x5, x22
  sra x25, x8, x18
  sllw x12, x25, x8
  add x8, x12, x25
  li x31, 0xffffffffc55d9908
  bne x8, x31, fail
  li x31, 0xfffffffff8cc9108
  bne x25, x31, fail
  li x31, 0xffffffffcc910800
  bne x12, x31, fail

dependency_block_99:
  li TESTNUM, 102
  sltu x29, x30, x12
  sll x7, x29, x9
  or x28, x7, x29
  sraw x29, x28, x7
  li x31, 0x0000000000000000
  bne x29, x31, fail
  li x31, 0x0000000000000002
  bne x7, x31, fail
  li x31, 0x0000000000000003
  bne x28, x31, fail

dependency_block_100:
  li TESTNUM, 103
  addw x5, x21, x7
  sll x20, x5, x23
  sraw x8, x20, x5
  slt x5, x8, x20
  li x31, 0x0000000000000001
  bne x5, x31, fail
  li x31, 0x0000000000000002
  bne x20, x31, fail
  li x31, 0x0000000000000000
  bne x8, x31, fail

dependency_block_101:
  li TESTNUM, 104
  sll x25, x30, x21
  subw x26, x25, x15
  sub x16, x26, x25
  sllw x25, x16, x26
  li x31, 0x0000000000000000
  bne x25, x31, fail
  li x31, 0x0000000000000000
  bne x26, x31, fail
  li x31, 0x0000000000000000
  bne x16, x31, fail

dependency_block_102:
  li TESTNUM, 105
  slt x19, x29, x27
  mul x7, x19, x19
  sraw x27, x7, x19
  sra x19, x27, x7
  li x31, 0x0000000000000000
  bne x19, x31, fail
  li x31, 0x0000000000000000
  bne x7, x31, fail
  li x31, 0x0000000000000000
  bne x27, x31, fail

dependency_block_103:
  li TESTNUM, 106
  or x18, x8, x19
  sraw x17, x18, x16
  sltu x6, x17, x18
  or x18, x6, x17
  li x31, 0x0000000000000000
  bne x18, x31, fail
  li x31, 0x0000000000000000
  bne x17, x31, fail
  li x31, 0x0000000000000000
  bne x6, x31, fail

dependency_block_104:
  li TESTNUM, 107
  mul x17, x21, x23
  mul x24, x17, x5
  add x27, x24, x17
  addw x17, x27, x24
  li x31, 0x0000000000000000
  bne x17, x31, fail
  li x31, 0x0000000000000000
  bne x24, x31, fail
  li x31, 0x0000000000000000
  bne x27, x31, fail

dependency_block_105:
  li TESTNUM, 108
  subw x8, x29, x5
  sub x20, x8, x23
  mul x28, x20, x8
  slt x8, x28, x20
  li x31, 0x0000000000000000
  bne x8, x31, fail
  li x31, 0xffffffffffffffff
  bne x20, x31, fail
  li x31, 0x0000000000000001
  bne x28, x31, fail

dependency_block_106:
  li TESTNUM, 109
  addw x13, x27, x6
  sltu x14, x13, x16
  sll x27, x14, x13
  sltu x13, x27, x14
  li x31, 0x0000000000000000
  bne x13, x31, fail
  li x31, 0x0000000000000000
  bne x14, x31, fail
  li x31, 0x0000000000000000
  bne x27, x31, fail

dependency_block_107:
  li TESTNUM, 110
  srlw x20, x9, x30
  addw x10, x20, x23
  mul x26, x10, x20
  and x20, x26, x10
  li x31, 0x0000000000000001
  bne x20, x31, fail
  li x31, 0x0000000000000001
  bne x10, x31, fail
  li x31, 0x0000000000000001
  bne x26, x31, fail

dependency_block_108:
  li TESTNUM, 111
  sltu x10, x15, x11
  srl x30, x10, x10
  srl x29, x30, x10
  sraw x10, x29, x30
  li x31, 0x0000000000000000
  bne x10, x31, fail
  li x31, 0x0000000000000000
  bne x30, x31, fail
  li x31, 0x0000000000000000
  bne x29, x31, fail

dependency_block_109:
  li TESTNUM, 112
  and x25, x18, x21
  add x14, x25, x19
  and x30, x14, x25
  add x25, x30, x14
  li x31, 0x0000000000000000
  bne x25, x31, fail
  li x31, 0x0000000000000000
  bne x14, x31, fail
  li x31, 0x0000000000000000
  bne x30, x31, fail

dependency_block_110:
  li TESTNUM, 113
  add x5, x10, x12
  subw x10, x5, x11
  srl x11, x10, x5
  add x5, x11, x10
  li x31, 0xffffffff99221000
  bne x5, x31, fail
  li x31, 0xffffffffcc910800
  bne x10, x31, fail
  li x31, 0xffffffffcc910800
  bne x11, x31, fail

dependency_block_111:
  li TESTNUM, 114
  subw x30, x9, x10
  addw x25, x30, x26
  or x14, x25, x30
  srl x30, x14, x25
  li x31, 0x000000000cdbbe00
  bne x30, x31, fail
  li x31, 0x00000000336ef802
  bne x25, x31, fail
  li x31, 0x00000000336ef803
  bne x14, x31, fail

dependency_block_112:
  li TESTNUM, 115
  srlw x18, x5, x23
  srlw x16, x18, x22
  or x26, x16, x18
  srl x18, x26, x16
  li x31, 0xffffffff99221000
  bne x18, x31, fail
  li x31, 0xffffffff99221000
  bne x16, x31, fail
  li x31, 0xffffffff99221000
  bne x26, x31, fail

dependency_block_113:
  li TESTNUM, 116
  slt x9, x11, x29
  sub x20, x9, x14
  sll x24, x20, x9
  srl x9, x24, x20
  li x31, 0x0000000000000003
  bne x9, x31, fail
  li x31, 0xffffffffcc9107fe
  bne x20, x31, fail
  li x31, 0xffffffff99220ffc
  bne x24, x31, fail

dependency_block_114:
  li TESTNUM, 117
  subw x13, x28, x11
  mul x9, x13, x23
  add x21, x9, x13
  xor x13, x21, x9
  li x31, 0x00000000336ef801
  bne x13, x31, fail
  li x31, 0x0000000000000000
  bne x9, x31, fail
  li x31, 0x00000000336ef801
  bne x21, x31, fail

dependency_block_115:
  li TESTNUM, 118
  sraw x30, x9, x7
  sra x23, x30, x10
  sllw x26, x23, x30
  addw x30, x26, x23
  li x31, 0x0000000000000000
  bne x30, x31, fail
  li x31, 0x0000000000000000
  bne x23, x31, fail
  li x31, 0x0000000000000000
  bne x26, x31, fail

dependency_block_116:
  li TESTNUM, 119
  sraw x14, x6, x24
  addw x22, x14, x13
  srlw x7, x22, x14
  slt x14, x7, x22
  li x31, 0x0000000000000000
  bne x14, x31, fail
  li x31, 0x00000000336ef801
  bne x22, x31, fail
  li x31, 0x00000000336ef801
  bne x7, x31, fail

dependency_block_117:
  li TESTNUM, 120
  sraw x30, x27, x5
  sub x20, x30, x12
  sltu x18, x20, x30
  subw x30, x18, x20
  li x31, 0xffffffffcc910800
  bne x30, x31, fail
  li x31, 0x00000000336ef800
  bne x20, x31, fail
  li x31, 0x0000000000000000
  bne x18, x31, fail

dependency_block_118:
  li TESTNUM, 121
  and x14, x14, x23
  sraw x10, x14, x21
  sub x21, x10, x14
  mul x14, x21, x10
  li x31, 0x0000000000000000
  bne x14, x31, fail
  li x31, 0x0000000000000000
  bne x10, x31, fail
  li x31, 0x0000000000000000
  bne x21, x31, fail

dependency_block_119:
  li TESTNUM, 122
  sltu x9, x11, x19
  sllw x26, x9, x27
  srl x25, x26, x9
  addw x9, x25, x26
  li x31, 0x0000000000000000
  bne x9, x31, fail
  li x31, 0x0000000000000000
  bne x26, x31, fail
  li x31, 0x0000000000000000
  bne x25, x31, fail

dependency_block_120:
  li TESTNUM, 123
  sraw x29, x15, x30
  addw x11, x29, x29
  and x14, x11, x29
  sraw x29, x14, x11
  li x31, 0x0000000000000000
  bne x29, x31, fail
  li x31, 0x0000000000000000
  bne x11, x31, fail
  li x31, 0x0000000000000000
  bne x14, x31, fail

dependency_block_121:
  li TESTNUM, 124
  add x12, x25, x22
  sltu x26, x12, x23
  sub x16, x26, x12
  addw x12, x16, x26
  li x31, 0xffffffffcc9107ff
  bne x12, x31, fail
  li x31, 0x0000000000000000
  bne x26, x31, fail
  li x31, 0xffffffffcc9107ff
  bne x16, x31, fail

dependency_block_122:
  li TESTNUM, 125
  xor x22, x28, x14
  addw x21, x22, x30
  or x5, x21, x22
  sra x22, x5, x21
  li x31, 0xffffffffe6488400
  bne x22, x31, fail
  li x31, 0xffffffffcc910801
  bne x21, x31, fail
  li x31, 0xffffffffcc910801
  bne x5, x31, fail

dependency_block_123:
  li TESTNUM, 126
  xor x28, x7, x9
  add x20, x28, x6
  sllw x21, x20, x28
  addw x28, x21, x20
  li x31, 0xffffffff9a4ce803
  bne x28, x31, fail
  li x31, 0x00000000336ef801
  bne x20, x31, fail
  li x31, 0x0000000066ddf002
  bne x21, x31, fail

dependency_block_124:
  li TESTNUM, 127
  addw x22, x20, x21
  xor x12, x22, x19
  sltu x10, x12, x22
  sllw x22, x10, x12
  li x31, 0x0000000000000000
  bne x22, x31, fail
  li x31, 0xffffffff9a4ce803
  bne x12, x31, fail
  li x31, 0x0000000000000000
  bne x10, x31, fail

dependency_block_125:
  li TESTNUM, 128
  srl x22, x7, x21
  add x29, x22, x10
  sll x5, x29, x22
  and x22, x5, x29
  li x31, 0x000000000cdbbe00
  bne x22, x31, fail
  li x31, 0x000000000cdbbe00
  bne x29, x31, fail
  li x31, 0x000000000cdbbe00
  bne x5, x31, fail

dependency_block_126:
  li TESTNUM, 129
  srl x21, x22, x6
  sub x26, x21, x15
  sra x25, x26, x21
  and x21, x25, x26
  li x31, 0x000000000cdbbe00
  bne x21, x31, fail
  li x31, 0x000000000cdbbe00
  bne x26, x31, fail
  li x31, 0x000000000cdbbe00
  bne x25, x31, fail

dependency_block_127:
  li TESTNUM, 130
  sraw x10, x5, x23
  slt x6, x10, x23
  slt x5, x6, x10
  sllw x10, x5, x6
  li x31, 0x0000000000000001
  bne x10, x31, fail
  li x31, 0x0000000000000000
  bne x6, x31, fail
  li x31, 0x0000000000000001
  bne x5, x31, fail

dependency_block_128:
  li TESTNUM, 131
  sraw x23, x19, x27
  sltu x28, x23, x19
  mul x21, x28, x23
  slt x23, x21, x28
  li x31, 0x0000000000000000
  bne x23, x31, fail
  li x31, 0x0000000000000000
  bne x28, x31, fail
  li x31, 0x0000000000000000
  bne x21, x31, fail

dependency_block_129:
  li TESTNUM, 132
  sraw x28, x17, x12
  and x15, x28, x17
  xor x29, x15, x28
  and x28, x29, x15
  li x31, 0x0000000000000000
  bne x28, x31, fail
  li x31, 0x0000000000000000
  bne x15, x31, fail
  li x31, 0x0000000000000000
  bne x29, x31, fail

dependency_block_130:
  li TESTNUM, 133
  sra x12, x18, x18
  add x16, x12, x14
  srl x7, x16, x12
  sraw x12, x7, x16
  li x31, 0x0000000000000000
  bne x12, x31, fail
  li x31, 0x0000000000000000
  bne x16, x31, fail
  li x31, 0x0000000000000000
  bne x7, x31, fail

dependency_block_131:
  li TESTNUM, 134
  subw x16, x30, x22
  sra x13, x16, x7
  mul x6, x13, x16
  add x16, x6, x13
  li x31, 0x102570cd79194a00
  bne x16, x31, fail
  li x31, 0xffffffffbfb54a00
  bne x13, x31, fail
  li x31, 0x102570cdb9640000
  bne x6, x31, fail

dependency_block_132:
  li TESTNUM, 135
  addw x22, x16, x10
  sll x27, x22, x20
  sraw x18, x27, x22
  sll x22, x18, x27
  li x31, 0xffffffffe4652804
  bne x22, x31, fail
  li x31, 0x00000000f2329402
  bne x27, x31, fail
  li x31, 0xfffffffff9194a01
  bne x18, x31, fail

dependency_block_133:
  li TESTNUM, 136
  srlw x6, x11, x25
  sll x8, x6, x10
  mul x30, x8, x6
  sraw x6, x30, x8
  li x31, 0x0000000000000000
  bne x6, x31, fail
  li x31, 0x0000000000000000
  bne x8, x31, fail
  li x31, 0x0000000000000000
  bne x30, x31, fail

dependency_block_134:
  li TESTNUM, 137
  sll x25, x14, x19
  add x19, x25, x6
  sra x26, x19, x25
  sllw x25, x26, x19
  li x31, 0x0000000000000000
  bne x25, x31, fail
  li x31, 0x0000000000000000
  bne x19, x31, fail
  li x31, 0x0000000000000000
  bne x26, x31, fail

dependency_block_135:
  li TESTNUM, 138
  sllw x14, x10, x13
  sub x30, x14, x9
  sraw x7, x30, x14
  sltu x14, x7, x30
  li x31, 0x0000000000000001
  bne x14, x31, fail
  li x31, 0x0000000000000001
  bne x30, x31, fail
  li x31, 0x0000000000000000
  bne x7, x31, fail

dependency_block_136:
  li TESTNUM, 139
  sraw x22, x9, x18
  mul x13, x22, x20
  add x17, x13, x22
  addw x22, x17, x13
  li x31, 0x0000000000000000
  bne x22, x31, fail
  li x31, 0x0000000000000000
  bne x13, x31, fail
  li x31, 0x0000000000000000
  bne x17, x31, fail

dependency_block_137:
  li TESTNUM, 140
  sll x8, x6, x9
  subw x11, x8, x8
  or x15, x11, x8
  sra x8, x15, x11
  li x31, 0x0000000000000000
  bne x8, x31, fail
  li x31, 0x0000000000000000
  bne x11, x31, fail
  li x31, 0x0000000000000000
  bne x15, x31, fail

dependency_block_138:
  li TESTNUM, 141
  slt x26, x6, x23
  and x19, x26, x17
  sub x28, x19, x26
  add x26, x28, x19
  li x31, 0x0000000000000000
  bne x26, x31, fail
  li x31, 0x0000000000000000
  bne x19, x31, fail
  li x31, 0x0000000000000000
  bne x28, x31, fail

dependency_block_139:
  li TESTNUM, 142
  and x11, x21, x11
  and x14, x11, x20
  and x13, x14, x11
  sub x11, x13, x14
  li x31, 0x0000000000000000
  bne x11, x31, fail
  li x31, 0x0000000000000000
  bne x14, x31, fail
  li x31, 0x0000000000000000
  bne x13, x31, fail

dependency_block_140:
  li TESTNUM, 143
  sraw x28, x13, x20
  sraw x7, x28, x21
  subw x24, x7, x28
  addw x28, x24, x7
  li x31, 0x0000000000000000
  bne x28, x31, fail
  li x31, 0x0000000000000000
  bne x7, x31, fail
  li x31, 0x0000000000000000
  bne x24, x31, fail

dependency_block_141:
  li TESTNUM, 144
  sub x27, x15, x16
  slt x14, x27, x28
  mul x21, x14, x27
  sraw x27, x21, x14
  li x31, 0xffffffffc3735b00
  bne x27, x31, fail
  li x31, 0x0000000000000001
  bne x14, x31, fail
  li x31, 0xefda8f3286e6b600
  bne x21, x31, fail

dependency_block_142:
  li TESTNUM, 145
  and x18, x19, x6
  xor x19, x18, x30
  addw x15, x19, x18
  sra x18, x15, x19
  li x31, 0x0000000000000000
  bne x18, x31, fail
  li x31, 0x0000000000000001
  bne x19, x31, fail
  li x31, 0x0000000000000001
  bne x15, x31, fail

dependency_block_143:
  li TESTNUM, 146
  xor x24, x26, x17
  sltu x9, x24, x7
  sraw x15, x9, x24
  sltu x24, x15, x9
  li x31, 0x0000000000000000
  bne x24, x31, fail
  li x31, 0x0000000000000000
  bne x9, x31, fail
  li x31, 0x0000000000000000
  bne x15, x31, fail

dependency_block_144:
  li TESTNUM, 147
  mul x12, x18, x22
  sll x7, x12, x12
  sll x19, x7, x12
  slt x12, x19, x7
  li x31, 0x0000000000000000
  bne x12, x31, fail
  li x31, 0x0000000000000000
  bne x7, x31, fail
  li x31, 0x0000000000000000
  bne x19, x31, fail

dependency_block_145:
  li TESTNUM, 148
  slt x12, x26, x22
  srlw x21, x12, x29
  slt x30, x21, x12
  slt x12, x30, x21
  li x31, 0x0000000000000000
  bne x12, x31, fail
  li x31, 0x0000000000000000
  bne x21, x31, fail
  li x31, 0x0000000000000000
  bne x30, x31, fail

dependency_block_146:
  li TESTNUM, 149
  srl x11, x9, x24
  srlw x28, x11, x16
  subw x15, x28, x11
  xor x11, x15, x28
  li x31, 0x0000000000000000
  bne x11, x31, fail
  li x31, 0x0000000000000000
  bne x28, x31, fail
  li x31, 0x0000000000000000
  bne x15, x31, fail

dependency_block_147:
  li TESTNUM, 150
  mul x21, x14, x19
  sub x8, x21, x20
  addw x13, x8, x21
  xor x21, x13, x8
  li x31, 0x0000000000000000
  bne x21, x31, fail
  li x31, 0xffffffffcc9107ff
  bne x8, x31, fail
  li x31, 0xffffffffcc9107ff
  bne x13, x31, fail

dependency_block_148:
  li TESTNUM, 151
  sltu x9, x18, x17
  or x19, x9, x10
  sra x29, x19, x9
  and x9, x29, x19
  li x31, 0x0000000000000001
  bne x9, x31, fail
  li x31, 0x0000000000000001
  bne x19, x31, fail
  li x31, 0x0000000000000001
  bne x29, x31, fail

dependency_block_149:
  li TESTNUM, 152
  sltu x30, x19, x20
  slt x7, x30, x18
  add x25, x7, x30
  slt x30, x25, x7
  li x31, 0x0000000000000000
  bne x30, x31, fail
  li x31, 0x0000000000000000
  bne x7, x31, fail
  li x31, 0x0000000000000001
  bne x25, x31, fail

dependency_block_150:
  li TESTNUM, 153
  sraw x7, x23, x28
  or x13, x7, x11
  add x9, x13, x7
  slt x7, x9, x13
  li x31, 0x0000000000000000
  bne x7, x31, fail
  li x31, 0x0000000000000000
  bne x13, x31, fail
  li x31, 0x0000000000000000
  bne x9, x31, fail

dependency_block_151:
  li TESTNUM, 154
  subw x25, x12, x28
  sub x12, x25, x26
  add x13, x12, x25
  sllw x25, x13, x12
  li x31, 0x0000000000000000
  bne x25, x31, fail
  li x31, 0x0000000000000000
  bne x12, x31, fail
  li x31, 0x0000000000000000
  bne x13, x31, fail

dependency_block_152:
  li TESTNUM, 155
  addw x13, x14, x15
  sllw x29, x13, x10
  and x18, x29, x13
  slt x13, x18, x29
  li x31, 0x0000000000000001
  bne x13, x31, fail
  li x31, 0x0000000000000002
  bne x29, x31, fail
  li x31, 0x0000000000000000
  bne x18, x31, fail

dependency_block_153:
  li TESTNUM, 156
  or x10, x12, x15
  srl x28, x10, x27
  sra x18, x28, x10
  add x10, x18, x28
  li x31, 0x0000000000000000
  bne x10, x31, fail
  li x31, 0x0000000000000000
  bne x28, x31, fail
  li x31, 0x0000000000000000
  bne x18, x31, fail

dependency_block_154:
  li TESTNUM, 157
  sltu x12, x15, x30
  add x28, x12, x7
  slt x21, x28, x12
  sraw x12, x21, x28
  li x31, 0x0000000000000000
  bne x12, x31, fail
  li x31, 0x0000000000000000
  bne x28, x31, fail
  li x31, 0x0000000000000000
  bne x21, x31, fail

dependency_block_155:
  li TESTNUM, 158
  mul x8, x17, x24
  srl x30, x8, x20
  sra x12, x30, x8
  or x8, x12, x30
  li x31, 0x0000000000000000
  bne x8, x31, fail
  li x31, 0x0000000000000000
  bne x30, x31, fail
  li x31, 0x0000000000000000
  bne x12, x31, fail

dependency_block_156:
  li TESTNUM, 159
  sraw x17, x5, x8
  xor x10, x17, x29
  and x25, x10, x17
  sraw x17, x25, x10
  li x31, 0x0000000000000000
  bne x17, x31, fail
  li x31, 0x0000000000000003
  bne x10, x31, fail
  li x31, 0x0000000000000001
  bne x25, x31, fail

dependency_block_157:
  li TESTNUM, 160
  subw x7, x21, x8
  sllw x9, x7, x7
  sub x14, x9, x7
  sra x7, x14, x9
  li x31, 0x0000000000000000
  bne x7, x31, fail
  li x31, 0x0000000000000000
  bne x9, x31, fail
  li x31, 0x0000000000000000
  bne x14, x31, fail

dependency_block_158:
  li TESTNUM, 161
  sraw x30, x26, x16
  sllw x14, x30, x17
  xor x26, x14, x30
  sra x30, x26, x14
  li x31, 0x0000000000000000
  bne x30, x31, fail
  li x31, 0x0000000000000000
  bne x14, x31, fail
  li x31, 0x0000000000000000
  bne x26, x31, fail

dependency_block_159:
  li TESTNUM, 162
  addw x12, x6, x28
  subw x24, x12, x22
  sub x6, x24, x12
  xor x12, x6, x24
  li x31, 0x0000000000000000
  bne x12, x31, fail
  li x31, 0x0000000000000000
  bne x24, x31, fail
  li x31, 0x0000000000000000
  bne x6, x31, fail

dependency_block_160:
  li TESTNUM, 163
  srlw x5, x29, x5
  srlw x18, x5, x21
  mul x12, x18, x5
  or x5, x12, x18
  li x31, 0x0000000000000001
  bne x5, x31, fail
  li x31, 0x0000000000000001
  bne x18, x31, fail
  li x31, 0x0000000000000001
  bne x12, x31, fail

dependency_block_161:
  li TESTNUM, 164
  addw x29, x15, x24
  subw x14, x29, x18
  add x7, x14, x29
  sra x29, x7, x14
  li x31, 0xffffffffffffffff
  bne x29, x31, fail
  li x31, 0xffffffffffffffff
  bne x14, x31, fail
  li x31, 0xffffffffffffffff
  bne x7, x31, fail

dependency_block_162:
  li TESTNUM, 165
  srl x27, x8, x18
  srlw x7, x27, x11
  srlw x18, x7, x27
  sra x27, x18, x7
  li x31, 0x0000000000000000
  bne x27, x31, fail
  li x31, 0x0000000000000000
  bne x7, x31, fail
  li x31, 0x0000000000000000
  bne x18, x31, fail

dependency_block_163:
  li TESTNUM, 166
  sra x15, x6, x11
  subw x5, x15, x26
  mul x26, x5, x15
  srlw x15, x26, x5
  li x31, 0x0000000000000000
  bne x15, x31, fail
  li x31, 0x0000000000000000
  bne x5, x31, fail
  li x31, 0x0000000000000000
  bne x26, x31, fail

dependency_block_164:
  li TESTNUM, 167
  mul x15, x27, x5
  sltu x7, x15, x29
  and x9, x7, x15
  sll x15, x9, x7
  li x31, 0x0000000000000000
  bne x15, x31, fail
  li x31, 0x0000000000000001
  bne x7, x31, fail
  li x31, 0x0000000000000000
  bne x9, x31, fail

dependency_block_165:
  li TESTNUM, 168
  slt x21, x7, x14
  add x27, x21, x30
  slt x7, x27, x21
  xor x21, x7, x27
  li x31, 0x0000000000000000
  bne x21, x31, fail
  li x31, 0x0000000000000000
  bne x27, x31, fail
  li x31, 0x0000000000000000
  bne x7, x31, fail

dependency_block_166:
  li TESTNUM, 169
  xor x10, x5, x24
  srl x25, x10, x7
  add x19, x25, x10
  addw x10, x19, x25
  li x31, 0x0000000000000000
  bne x10, x31, fail
  li x31, 0x0000000000000000
  bne x25, x31, fail
  li x31, 0x0000000000000000
  bne x19, x31, fail

dependency_block_167:
  li TESTNUM, 170
  add x5, x15, x10
  or x8, x5, x12
  srl x9, x8, x5
  subw x5, x9, x8
  li x31, 0x0000000000000000
  bne x5, x31, fail
  li x31, 0x0000000000000001
  bne x8, x31, fail
  li x31, 0x0000000000000001
  bne x9, x31, fail

dependency_block_168:
  li TESTNUM, 171
  addw x16, x13, x12
  xor x15, x16, x18
  mul x27, x15, x16
  srlw x16, x27, x15
  li x31, 0x0000000000000001
  bne x16, x31, fail
  li x31, 0x0000000000000002
  bne x15, x31, fail
  li x31, 0x0000000000000004
  bne x27, x31, fail

dependency_block_169:
  li TESTNUM, 172
  mul x18, x28, x19
  srlw x5, x18, x23
  sll x26, x5, x18
  sraw x18, x26, x5
  li x31, 0x0000000000000000
  bne x18, x31, fail
  li x31, 0x0000000000000000
  bne x5, x31, fail
  li x31, 0x0000000000000000
  bne x26, x31, fail

dependency_block_170:
  li TESTNUM, 173
  sltu x18, x22, x10
  addw x26, x18, x18
  sll x17, x26, x18
  xor x18, x17, x26
  li x31, 0x0000000000000000
  bne x18, x31, fail
  li x31, 0x0000000000000000
  bne x26, x31, fail
  li x31, 0x0000000000000000
  bne x17, x31, fail

dependency_block_171:
  li TESTNUM, 174
  mul x19, x6, x6
  sllw x5, x19, x16
  sra x24, x5, x19
  srl x19, x24, x5
  li x31, 0x0000000000000000
  bne x19, x31, fail
  li x31, 0x0000000000000000
  bne x5, x31, fail
  li x31, 0x0000000000000000
  bne x24, x31, fail

dependency_block_172:
  li TESTNUM, 175
  srlw x21, x30, x18
  sub x15, x21, x5
  sll x22, x15, x21
  xor x21, x22, x15
  li x31, 0x0000000000000000
  bne x21, x31, fail
  li x31, 0x0000000000000000
  bne x15, x31, fail
  li x31, 0x0000000000000000
  bne x22, x31, fail

dependency_block_173:
  li TESTNUM, 176
  sltu x26, x29, x29
  sltu x5, x26, x15
  addw x22, x5, x26
  addw x26, x22, x5
  li x31, 0x0000000000000000
  bne x26, x31, fail
  li x31, 0x0000000000000000
  bne x5, x31, fail
  li x31, 0x0000000000000000
  bne x22, x31, fail

dependency_block_174:
  li TESTNUM, 177
  xor x25, x9, x21
  sraw x8, x25, x9
  sllw x30, x8, x25
  addw x25, x30, x8
  li x31, 0x0000000000000000
  bne x25, x31, fail
  li x31, 0x0000000000000000
  bne x8, x31, fail
  li x31, 0x0000000000000000
  bne x30, x31, fail

dependency_block_175:
  li TESTNUM, 178
  sltu x16, x29, x16
  sraw x23, x16, x27
  sltu x6, x23, x16
  xor x16, x6, x23
  li x31, 0x0000000000000000
  bne x16, x31, fail
  li x31, 0x0000000000000000
  bne x23, x31, fail
  li x31, 0x0000000000000000
  bne x6, x31, fail

dependency_block_176:
  li TESTNUM, 179
  sra x9, x28, x22
  subw x28, x9, x5
  sltu x18, x28, x9
  subw x9, x18, x28
  li x31, 0x0000000000000000
  bne x9, x31, fail
  li x31, 0x0000000000000000
  bne x28, x31, fail
  li x31, 0x0000000000000000
  bne x18, x31, fail

dependency_block_177:
  li TESTNUM, 180
  and x7, x23, x11
  sltu x26, x7, x28
  sra x22, x26, x7
  sraw x7, x22, x26
  li x31, 0x0000000000000000
  bne x7, x31, fail
  li x31, 0x0000000000000000
  bne x26, x31, fail
  li x31, 0x0000000000000000
  bne x22, x31, fail

dependency_block_178:
  li TESTNUM, 181
  slt x29, x26, x28
  sll x21, x29, x10
  subw x16, x21, x29
  sra x29, x16, x21
  li x31, 0x0000000000000000
  bne x29, x31, fail
  li x31, 0x0000000000000000
  bne x21, x31, fail
  li x31, 0x0000000000000000
  bne x16, x31, fail

dependency_block_179:
  li TESTNUM, 182
  srl x7, x27, x30
  subw x23, x7, x18
  sra x9, x23, x7
  add x7, x9, x23
  li x31, 0x0000000000000004
  bne x7, x31, fail
  li x31, 0x0000000000000004
  bne x23, x31, fail
  li x31, 0x0000000000000000
  bne x9, x31, fail

  TEST_PASSFAIL

RVTEST_CODE_END

  .data
RVTEST_DATA_BEGIN
  TEST_DATA
RVTEST_DATA_END
