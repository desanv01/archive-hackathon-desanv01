#include "riscv_test.h"

RVTEST_RV64U
RVTEST_CODE_BEGIN

  la    s0, tdat
  li    t2, 617
  li    t4, -1653
  add   a2, s4, a3
  sub   t3, s5, a1
  xor   s3, a6, a1
  or    a2, t5, t5
  and   a2, a7, a2
  addi  s4, t5, -1564
  andi  s5, a3, 914
  ori   s7, s7, 253
  xori  s5, s5, 1201
  slli  a1, a7, 5
  srli  s4, a4, 37
  srai  t5, a4, 15
  sllw  s5, t1, s4
  sraw  s8, a5, a3
  slt   s5, s5, s7
  sltu  a6, t3, a3
  sltiu s4, s9, 257
  lui   s5, 0x1e840
  auipc s6, 0x69
  addw  s2, s8, s4
  subw  t5, s11, t2
  addiw t6, s5, 1664
  mul   t3, t1, a7
  mulh  a5, s9, s11
  mulhu a7, a2, s5
  mulw  t1, s3, s2
  div   t2, s10, t6
  divu  t1, s6, a2
  rem   a3, s3, t5
  remu  a5, s11, t2
  divw  a4, s2, t5
  remw  a1, s8, a2
  sd    t2, 8(s0)
  ld    s9, 8(s0)
  sw    t3, 8(s0)
  lw    s6, 8(s0)
  lwu   s2, 8(s0)
  lh    s5, 8(s0)
  lbu   t6, 8(s0)
  lr.d      a2, (s0)
  sc.d      a2, t0, (s0)
  amoadd.w  s2, s9, (s0)
  amoswap.d s8, a2, (s0)
  amoand.w  a1, s10, (s0)
  amoor.d   s9, t1, (s0)
  amoxor.w  s7, s5, (s0)
  amomax.d  s8, t6, (s0)
  amominu.w t1, s9, (s0)
  fmv.w.x   f18, s8
  fmv.d.x   f11, a0
  fadd.s    f20, f11, f5
  fsub.s    f3, f21, f1
  fmul.s    f6, f9, f4
  fdiv.s    f7, f18, f18
  fmin.s    f21, f2, f5
  fmax.s    f20, f18, f8
  fsgnj.s   f4, f19, f8
  fadd.d    f19, f11, f18
  fsub.d    f7, f4, f2
  fmul.d    f5, f4, f7
  fdiv.d    f7, f0, f21
  fsqrt.d   f5, f8
  fmadd.d   f9, f0, f4, f19
  fcvt.s.w  f11, s6
  fcvt.d.w  f10, a4
  fcvt.d.s  f1, f20
  fcvt.s.d  f18, f18
  fcvt.w.s  t4, f18, rtz
  fcvt.l.d  a3, f21, rtz
  feq.d     s7, f18, f1
  flt.s     a6, f2, f6
  fclass.d  t6, f5
  csrr  a3, mscratch
  csrw  mscratch, t2
  csrrw s6, mscratch, a1
  csrrs a3, mstatus, x0
  csrrc a0, mscratch, x0
  csrrwi s5, mscratch, 9
  fence
  fence.i
  c.addi a0, 3
  c.mv   a1, a2
  c.li   a3, -20
  c.add  a4, a5
  la    s0, tdat
  li    t3, 104
  li    a2, -345
  add   s6, t4, a4
  sub   s7, t0, t3
  xor   s6, t3, s2
  or    a3, a3, s2
  and   t6, s2, s2
  addi  t1, a2, -868
  andi  a3, s10, 1403
  ori   s10, t0, 1960
  xori  s9, a5, -1859
  slli  a6, s3, 46
  srli  a4, s9, 3
  srai  s11, s3, 38
  sllw  s7, a2, s9
  sraw  t0, s3, t3
  slt   a5, t3, s11
  sltu  a7, s4, s4
  sltiu s11, s3, 1350
  lui   s7, 0x72328
  auipc s6, 0x63
  addw  a7, t4, s10
  subw  a7, a6, s3
  addiw s2, t3, -1811
  mul   a0, t0, s2
  mulh  t0, a6, s9
  mulhu s6, t3, t6
  mulw  s10, t3, t3
  div   a2, a7, a3
  divu  a7, s2, a6
  rem   t2, a6, s2
  remu  s6, s6, a0
  divw  s2, s7, t3
  remw  s7, a2, s8
  sd    t4, 0(s0)
  ld    s9, 0(s0)
  sw    s11, 0(s0)
  lw    a6, 0(s0)
  lwu   s2, 0(s0)
  lh    a5, 0(s0)
  lbu   t5, 0(s0)
  lr.d      s7, (s0)
  sc.d      t2, a2, (s0)
  amoadd.w  s10, t4, (s0)
  amoswap.d t6, t4, (s0)
  amoand.w  s10, a2, (s0)
  amoor.d   s10, a5, (s0)
  amoxor.w  a5, a4, (s0)
  amomax.d  a0, a4, (s0)
  amominu.w s5, t6, (s0)
  fmv.w.x   f4, s6
  fmv.d.x   f21, s8
  fadd.s    f11, f4, f4
  fsub.s    f0, f0, f3
  fmul.s    f4, f19, f6
  fdiv.s    f6, f0, f8
  fmin.s    f6, f9, f7
  fmax.s    f10, f8, f19
  fsgnj.s   f4, f1, f11
  fadd.d    f20, f19, f4
  fsub.d    f4, f0, f20
  fmul.d    f5, f0, f4
  fdiv.d    f5, f4, f21
  fsqrt.d   f3, f1
  fmadd.d   f10, f21, f3, f1
  fcvt.s.w  f7, a6
  fcvt.d.w  f8, a1
  fcvt.d.s  f3, f20
  fcvt.s.d  f0, f2
  fcvt.w.s  t6, f10, rtz
  fcvt.l.d  s6, f6, rtz
  feq.d     s9, f8, f20
  flt.s     s3, f21, f7
  fclass.d  s9, f8
  csrr  s4, mscratch
  csrw  mscratch, a6
  csrrw t6, mscratch, a4
  csrrs t5, mstatus, x0
  csrrc a3, mscratch, x0
  csrrwi t4, mscratch, 28
  fence
  fence.i
  c.addi a0, -12
  c.mv   a1, a2
  c.li   a3, -23
  c.add  a4, a5
  la    s0, tdat
  li    s8, 985
  li    t5, -1449
  add   a6, s8, t1
  sub   a3, s11, a4
  xor   s9, s7, s8
  or    t3, a4, t0
  and   a4, t6, a7
  addi  s10, a3, 1214
  andi  s2, a5, 916
  ori   a5, s9, 1767
  xori  s3, t4, 730
  slli  t5, a6, 45
  srli  t2, a2, 46
  srai  a0, t2, 58
  sllw  t6, s9, a0
  sraw  t4, t2, s3
  slt   s6, t1, s3
  sltu  a2, a3, a7
  sltiu a3, a2, 1087
  lui   t0, 0x1444e
  auipc s11, 0x5c
  addw  t0, s11, a4
  subw  t5, s8, t0
  addiw t4, a4, 2003
  mul   s9, t2, a2
  mulh  t0, a1, s9
  mulhu a5, t5, a2
  mulw  t0, a0, s7
  div   a2, t0, a2
  divu  s6, a7, a2
  rem   t0, a3, t6
  remu  a0, t2, s4
  divw  t5, t0, s6
  remw  a4, a1, s3
  sd    a3, 0(s0)
  ld    a5, 0(s0)
  sw    t0, 0(s0)
  lw    a1, 0(s0)
  lwu   a5, 0(s0)
  lh    a6, 0(s0)
  lbu   t1, 0(s0)
  lr.d      s7, (s0)
  sc.d      t1, s3, (s0)
  amoadd.w  s11, a6, (s0)
  amoswap.d t1, t6, (s0)
  amoand.w  s3, s8, (s0)
  amoor.d   a5, t0, (s0)
  amoxor.w  t3, a0, (s0)
  amomax.d  t0, a1, (s0)
  amominu.w a0, a0, (s0)
  fmv.w.x   f6, s3
  fmv.d.x   f21, a7
  fadd.s    f20, f3, f19
  fsub.s    f21, f18, f9
  fmul.s    f6, f7, f10
  fdiv.s    f6, f4, f18
  fmin.s    f11, f1, f4
  fmax.s    f0, f2, f8
  fsgnj.s   f19, f5, f1
  fadd.d    f2, f18, f9
  fsub.d    f7, f9, f1
  fmul.d    f20, f5, f5
  fdiv.d    f8, f20, f0
  fsqrt.d   f8, f11
  fmadd.d   f10, f10, f7, f1
  fcvt.s.w  f9, a6
  fcvt.d.w  f11, a5
  fcvt.d.s  f0, f10
  fcvt.s.d  f18, f2
  fcvt.w.s  s2, f8, rtz
  fcvt.l.d  s3, f6, rtz
  feq.d     a7, f0, f2
  flt.s     t0, f2, f4
  fclass.d  t4, f1
  csrr  t4, mscratch
  csrw  mscratch, a0
  csrrw t1, mscratch, t1
  csrrs s7, mstatus, x0
  csrrc a7, mscratch, x0
  csrrwi a2, mscratch, 9
  fence
  fence.i
  c.addi a0, 11
  c.mv   a1, a2
  c.li   a3, 17
  c.add  a4, a5
  la    s0, tdat
  li    s11, 1335
  li    s10, 2000
  add   a4, t1, s10
  sub   s6, s7, a4
  xor   a1, s9, s3
  or    s7, t5, s10
  and   s9, s3, a4
  addi  s3, s11, -1917
  andi  s8, s5, 941
  ori   a2, a0, 171
  xori  a4, s7, 906
  slli  a3, t4, 57
  srli  s4, a1, 2
  srai  s7, s4, 31
  sllw  s2, t0, a0
  sraw  t6, a2, s10
  slt   s3, s4, a2
  sltu  s8, s3, a2
  sltiu s10, s10, 1940
  lui   t0, 0x261e4
  auipc t0, 0x78
  addw  s10, s11, a6
  subw  a7, s10, s7
  addiw t6, s2, 1085
  mul   a2, s2, s8
  mulh  t1, s11, a1
  mulhu s6, s7, s7
  mulw  a6, a2, s6
  div   a4, t2, t0
  divu  s7, s10, s9
  rem   t1, s6, s5
  remu  a4, a0, s2
  divw  a1, s2, t0
  remw  s8, a3, s9
  sd    s8, 0(s0)
  ld    s2, 0(s0)
  sw    t1, 0(s0)
  lw    s9, 0(s0)
  lwu   s3, 0(s0)
  lh    t1, 0(s0)
  lbu   t6, 0(s0)
  lr.d      t6, (s0)
  sc.d      t6, s11, (s0)
  amoadd.w  a3, s4, (s0)
  amoswap.d a6, t1, (s0)
  amoand.w  a2, s2, (s0)
  amoor.d   a0, t1, (s0)
  amoxor.w  t6, a2, (s0)
  amomax.d  s3, t6, (s0)
  amominu.w t0, t4, (s0)
  fmv.w.x   f6, a6
  fmv.d.x   f2, s5
  fadd.s    f2, f4, f8
  fsub.s    f11, f4, f8
  fmul.s    f3, f11, f7
  fdiv.s    f21, f21, f18
  fmin.s    f0, f5, f0
  fmax.s    f21, f20, f18
  fsgnj.s   f9, f4, f19
  fadd.d    f11, f18, f10
  fsub.d    f3, f10, f0
  fmul.d    f10, f10, f18
  fdiv.d    f3, f6, f0
  fsqrt.d   f9, f8
  fmadd.d   f11, f2, f18, f18
  fcvt.s.w  f2, t3
  fcvt.d.w  f19, s11
  fcvt.d.s  f8, f1
  fcvt.s.d  f8, f3
  fcvt.w.s  a1, f9, rtz
  fcvt.l.d  s7, f4, rtz
  feq.d     a7, f8, f19
  flt.s     s3, f10, f6
  fclass.d  s11, f11
  csrr  t5, mscratch
  csrw  mscratch, a0
  csrrw s11, mscratch, s7
  csrrs t4, mstatus, x0
  csrrc s4, mscratch, x0
  csrrwi s4, mscratch, 13
  fence
  fence.i
  c.addi a0, 15
  c.mv   a1, a2
  c.li   a3, -22
  c.add  a4, a5
  la    s0, tdat
  li    a1, 1682
  li    t6, -913
  add   s7, t1, s2
  sub   a1, s4, a4
  xor   a5, s2, t5
  or    t2, t1, t1
  and   t0, s10, s10
  addi  s7, t0, 1279
  andi  s7, a7, 1232
  ori   s2, s4, 1615
  xori  a3, a5, -724
  slli  a2, a6, 63
  srli  s4, a7, 57
  srai  t2, s11, 57
  sllw  t5, a4, s4
  sraw  a6, a7, a2
  slt   a5, t2, s4
  sltu  a2, t2, a7
  sltiu t3, t0, 827
  lui   a0, 0xd3581
  auipc t4, 0xd3
  addw  s10, s3, a6
  subw  t4, t0, t2
  addiw s11, a1, 2032
  mul   t0, s5, t3
  mulh  a4, s8, s3
  mulhu s3, s7, a6
  mulw  a2, t0, a7
  div   t4, t4, s7
  divu  t6, t5, t1
  rem   a0, a4, a1
  remu  t5, s9, s11
  divw  s2, s5, s2
  remw  a0, a2, t4
  sd    t6, 8(s0)
  ld    a7, 8(s0)
  sw    a3, 8(s0)
  lw    a7, 8(s0)
  lwu   a4, 8(s0)
  lh    a4, 8(s0)
  lbu   s3, 8(s0)
  lr.d      s8, (s0)
  sc.d      a3, s10, (s0)
  amoadd.w  s9, s7, (s0)
  amoswap.d s11, t6, (s0)
  amoand.w  a2, s4, (s0)
  amoor.d   s11, a1, (s0)
  amoxor.w  a0, a4, (s0)
  amomax.d  a7, s5, (s0)
  amominu.w a1, s7, (s0)
  fmv.w.x   f9, a4
  fmv.d.x   f8, s3
  fadd.s    f19, f3, f3
  fsub.s    f2, f9, f6
  fmul.s    f18, f8, f7
  fdiv.s    f0, f0, f9
  fmin.s    f20, f8, f10
  fmax.s    f7, f21, f7
  fsgnj.s   f7, f0, f19
  fadd.d    f9, f1, f0
  fsub.d    f6, f21, f19
  fmul.d    f2, f8, f7
  fdiv.d    f19, f11, f7
  fsqrt.d   f21, f1
  fmadd.d   f10, f19, f11, f18
  fcvt.s.w  f6, a0
  fcvt.d.w  f9, s10
  fcvt.d.s  f2, f6
  fcvt.s.d  f21, f6
  fcvt.w.s  t1, f6, rtz
  fcvt.l.d  a7, f20, rtz
  feq.d     a7, f8, f9
  flt.s     a3, f21, f5
  fclass.d  a7, f21
  csrr  t5, mscratch
  csrw  mscratch, s8
  csrrw a1, mscratch, s6
  csrrs a4, mstatus, x0
  csrrc t4, mscratch, x0
  csrrwi a1, mscratch, 13
  fence
  fence.i
  c.addi a0, -31
  c.mv   a1, a2
  c.li   a3, -14
  c.add  a4, a5
  la    s0, tdat
  li    t5, 212
  li    s9, -1556
  add   a5, t4, t6
  sub   s9, t2, s10
  xor   a3, a2, a5
  or    t2, a6, a5
  and   s7, s3, s10
  addi  t6, a1, 506
  andi  s8, s10, 1550
  ori   t3, t2, 1812
  xori  a5, a3, -2025
  slli  a2, t0, 10
  srli  t3, t5, 15
  srai  s4, s11, 26
  sllw  t4, t3, s11
  sraw  t1, t5, a2
  slt   a1, s9, s2
  sltu  a6, t3, s4
  sltiu t6, a6, 1324
  lui   t3, 0xf2f62
  auipc a0, 0xd2
  addw  a7, s7, s11
  subw  t4, a1, t4
  addiw a1, t6, -1536
  mul   a1, t0, a6
  mulh  s10, a2, s6
  mulhu t2, t3, t0
  mulw  t2, s6, a1
  div   t0, s10, s9
  divu  s9, t2, t0
  rem   t1, a0, s10
  remu  s11, s6, s7
  divw  a2, a0, a7
  remw  a3, s2, s9
  sd    s11, 8(s0)
  ld    t4, 8(s0)
  sw    t0, 8(s0)
  lw    t5, 8(s0)
  lwu   s2, 8(s0)
  lh    a4, 8(s0)
  lbu   s2, 8(s0)
  lr.d      a5, (s0)
  sc.d      a0, s10, (s0)
  amoadd.w  t1, s9, (s0)
  amoswap.d s11, a4, (s0)
  amoand.w  s6, a7, (s0)
  amoor.d   t2, t2, (s0)
  amoxor.w  t6, t3, (s0)
  amomax.d  s6, a2, (s0)
  amominu.w s3, a6, (s0)
  fmv.w.x   f18, s11
  fmv.d.x   f5, a7
  fadd.s    f19, f2, f1
  fsub.s    f21, f10, f5
  fmul.s    f19, f3, f2
  fdiv.s    f8, f2, f6
  fmin.s    f3, f19, f21
  fmax.s    f20, f5, f7
  fsgnj.s   f4, f19, f20
  fadd.d    f7, f3, f9
  fsub.d    f9, f8, f8
  fmul.d    f11, f8, f8
  fdiv.d    f6, f20, f7
  fsqrt.d   f5, f7
  fmadd.d   f7, f4, f9, f6
  fcvt.s.w  f10, a2
  fcvt.d.w  f18, t0
  fcvt.d.s  f7, f7
  fcvt.s.d  f3, f20
  fcvt.w.s  a1, f3, rtz
  fcvt.l.d  a0, f21, rtz
  feq.d     a7, f20, f11
  flt.s     a1, f9, f7
  fclass.d  a3, f1
  csrr  a6, mscratch
  csrw  mscratch, s6
  csrrw s5, mscratch, a6
  csrrs a2, mstatus, x0
  csrrc t3, mscratch, x0
  csrrwi s3, mscratch, 11
  fence
  fence.i
  c.addi a0, -4
  c.mv   a1, a2
  c.li   a3, 1
  c.add  a4, a5
  la    s0, tdat
  li    s11, 25
  li    a3, 816
  add   a6, a1, t3
  sub   t2, a4, a1
  xor   a6, t0, a1
  or    s6, s10, s7
  and   a6, a0, t2
  addi  t5, s8, 997
  andi  a5, s6, 1278
  ori   a2, a6, 128
  xori  s2, s4, 1912
  slli  a2, t5, 12
  srli  t4, s8, 19
  srai  s7, s4, 11
  sllw  s7, a5, t4
  sraw  s9, t0, t5
  slt   t1, s8, t1
  sltu  t5, a1, t1
  sltiu s10, s5, 1463
  lui   t5, 0xd5385
  auipc a0, 0xba
  addw  s7, a6, t4
  subw  s10, t4, a6
  addiw a0, t5, -766
  mul   t5, a3, a2
  mulh  t4, s5, t3
  mulhu t6, s11, a5
  mulw  a4, a0, a1
  div   s4, a4, s7
  divu  t4, a2, s5
  rem   s6, t3, s10
  remu  s3, a5, a4
  divw  t3, t1, a5
  remw  s3, a5, a2
  sd    t4, 0(s0)
  ld    s2, 0(s0)
  sw    s11, 0(s0)
  lw    a6, 0(s0)
  lwu   t1, 0(s0)
  lh    a4, 0(s0)
  lbu   a1, 0(s0)
  lr.d      s2, (s0)
  sc.d      t2, a1, (s0)
  amoadd.w  s6, s7, (s0)
  amoswap.d t4, a2, (s0)
  amoand.w  s9, s6, (s0)
  amoor.d   s9, a5, (s0)
  amoxor.w  s7, a7, (s0)
  amomax.d  s6, t4, (s0)
  amominu.w s6, a6, (s0)
  fmv.w.x   f21, a5
  fmv.d.x   f6, a1
  fadd.s    f18, f5, f18
  fsub.s    f11, f3, f4
  fmul.s    f7, f6, f1
  fdiv.s    f1, f10, f3
  fmin.s    f18, f20, f9
  fmax.s    f19, f9, f7
  fsgnj.s   f19, f18, f11
  fadd.d    f20, f20, f5
  fsub.d    f0, f0, f21
  fmul.d    f20, f7, f20
  fdiv.d    f20, f5, f21
  fsqrt.d   f18, f3
  fmadd.d   f2, f4, f11, f19
  fcvt.s.w  f11, a2
  fcvt.d.w  f20, s3
  fcvt.d.s  f1, f1
  fcvt.s.d  f4, f2
  fcvt.w.s  s10, f10, rtz
  fcvt.l.d  s11, f2, rtz
  feq.d     a1, f18, f4
  flt.s     a0, f2, f3
  fclass.d  a6, f4
  csrr  s2, mscratch
  csrw  mscratch, t1
  csrrw a5, mscratch, s8
  csrrs s10, mstatus, x0
  csrrc a7, mscratch, x0
  csrrwi a2, mscratch, 22
  fence
  fence.i
  c.addi a0, 8
  c.mv   a1, a2
  c.li   a3, 0
  c.add  a4, a5
  la    s0, tdat
  li    a5, 1326
  li    s6, 204
  add   t6, a4, t0
  sub   s3, s2, a6
  xor   s5, t0, s6
  or    s3, a7, t2
  and   t3, a1, a6
  addi  a5, t4, -728
  andi  s7, t0, 1342
  ori   t4, a5, 1082
  xori  a3, s11, -1651
  slli  s7, t3, 57
  srli  s4, s3, 13
  srai  t0, s4, 50
  sllw  s10, t3, t0
  sraw  t4, t3, s5
  slt   a4, t3, t2
  sltu  s11, a2, t6
  sltiu a7, a5, 197
  lui   t1, 0x81deb
  auipc t1, 0xa0
  addw  s10, a0, s10
  subw  a1, a7, a4
  addiw t1, s6, 1492
  mul   t5, s3, t3
  mulh  a1, a4, s2
  mulhu a7, s6, s7
  mulw  a1, a0, a1
  div   a0, s5, t3
  divu  t1, a3, s3
  rem   t3, s4, a7
  remu  t5, s5, t1
  divw  s5, a4, a6
  remw  t3, s6, s2
  sd    a4, 0(s0)
  ld    a0, 0(s0)
  sw    a7, 0(s0)
  lw    s9, 0(s0)
  lwu   a4, 0(s0)
  lh    t6, 0(s0)
  lbu   a3, 0(s0)
  lr.d      a2, (s0)
  sc.d      s7, a4, (s0)
  amoadd.w  s8, t0, (s0)
  amoswap.d t4, t0, (s0)
  amoand.w  a0, a1, (s0)
  amoor.d   s7, s4, (s0)
  amoxor.w  t3, s6, (s0)
  amomax.d  s7, s5, (s0)
  amominu.w t6, s6, (s0)
  fmv.w.x   f21, a7
  fmv.d.x   f5, a0
  fadd.s    f1, f1, f0
  fsub.s    f18, f5, f7
  fmul.s    f5, f1, f3
  fdiv.s    f0, f6, f4
  fmin.s    f19, f6, f19
  fmax.s    f5, f9, f2
  fsgnj.s   f9, f1, f21
  fadd.d    f0, f18, f19
  fsub.d    f20, f2, f20
  fmul.d    f5, f7, f3
  fdiv.d    f8, f7, f1
  fsqrt.d   f3, f10
  fmadd.d   f8, f1, f8, f19
  fcvt.s.w  f8, t1
  fcvt.d.w  f6, a2
  fcvt.d.s  f0, f5
  fcvt.s.d  f8, f7
  fcvt.w.s  s10, f6, rtz
  fcvt.l.d  a5, f10, rtz
  feq.d     a6, f18, f10
  flt.s     s6, f7, f18
  fclass.d  s7, f21
  csrr  s2, mscratch
  csrw  mscratch, s3
  csrrw s9, mscratch, a0
  csrrs a0, mstatus, x0
  csrrc t5, mscratch, x0
  csrrwi s10, mscratch, 14
  fence
  fence.i
  c.addi a0, 5
  c.mv   a1, a2
  c.li   a3, 7
  c.add  a4, a5
  la    s0, tdat
  li    a6, 1603
  li    s6, -1411
  add   s5, a5, a4
  sub   a1, a0, a3
  xor   a3, s6, a5
  or    t3, a4, s9
  and   a0, a0, a1
  addi  a4, s9, -1699
  andi  s9, a2, 191
  ori   a2, s5, 1488
  xori  a6, s4, -1508
  slli  s11, s9, 49
  srli  a3, a7, 26
  srai  a6, a3, 4
  sllw  a1, s11, s7
  sraw  a2, s11, s7
  slt   s7, t1, s2
  sltu  a3, a4, a3
  sltiu s11, s7, 839
  lui   t1, 0xa3662
  auipc t2, 0xd8
  addw  t0, a0, t3
  subw  t0, t1, a1
  addiw s9, s11, 966
  mul   t2, s11, s6
  mulh  s3, s2, t1
  mulhu s6, s10, a0
  mulw  t5, a0, t5
  div   s3, s11, a3
  divu  t3, s2, s9
  rem   a1, s4, s5
  remu  a6, s9, a2
  divw  s5, t1, a5
  remw  t5, a0, s3
  sd    t1, 0(s0)
  ld    s11, 0(s0)
  sw    s11, 0(s0)
  lw    a1, 0(s0)
  lwu   a0, 0(s0)
  lh    t3, 0(s0)
  lbu   s2, 0(s0)
  lr.d      a3, (s0)
  sc.d      s2, s9, (s0)
  amoadd.w  a5, s2, (s0)
  amoswap.d s5, t3, (s0)
  amoand.w  s3, t0, (s0)
  amoor.d   s5, a5, (s0)
  amoxor.w  t1, a6, (s0)
  amomax.d  s9, a7, (s0)
  amominu.w s2, a5, (s0)
  fmv.w.x   f3, s7
  fmv.d.x   f2, s2
  fadd.s    f3, f10, f11
  fsub.s    f3, f18, f18
  fmul.s    f2, f19, f0
  fdiv.s    f11, f6, f9
  fmin.s    f8, f19, f5
  fmax.s    f18, f7, f20
  fsgnj.s   f4, f1, f11
  fadd.d    f10, f4, f20
  fsub.d    f10, f5, f20
  fmul.d    f20, f8, f7
  fdiv.d    f4, f10, f20
  fsqrt.d   f7, f6
  fmadd.d   f8, f9, f4, f4
  fcvt.s.w  f7, s10
  fcvt.d.w  f10, s6
  fcvt.d.s  f11, f5
  fcvt.s.d  f7, f10
  fcvt.w.s  a6, f8, rtz
  fcvt.l.d  s10, f3, rtz
  feq.d     a5, f3, f6
  flt.s     t4, f4, f4
  fclass.d  t1, f9
  csrr  t5, mscratch
  csrw  mscratch, t0
  csrrw a6, mscratch, a3
  csrrs s7, mstatus, x0
  csrrc a3, mscratch, x0
  csrrwi t0, mscratch, 13
  fence
  fence.i
  c.addi a0, 25
  c.mv   a1, a2
  c.li   a3, 17
  c.add  a4, a5
  la    s0, tdat
  li    t6, 138
  li    a0, 1220
  add   t5, s9, a7
  sub   s3, s7, t1
  xor   t6, a0, a4
  or    t0, s6, s10
  and   t4, a0, s10
  addi  a7, t5, 1402
  andi  a7, s8, 936
  ori   s8, a5, 508
  xori  t6, t5, 516
  slli  t0, s7, 12
  srli  t5, a7, 51
  srai  s9, s9, 20
  sllw  t0, t5, s2
  sraw  t6, a0, s6
  slt   t5, s3, s8
  sltu  s8, a5, s7
  sltiu t2, s11, 43
  lui   t4, 0xfacc5
  auipc a3, 0x13
  addw  t0, s4, a6
  subw  a5, s9, a6
  addiw s3, t3, -1220
  mul   s5, t6, s4
  mulh  a6, s9, s2
  mulhu s3, a0, s7
  mulw  t3, s3, t2
  div   t5, s10, t6
  divu  a6, s8, a5
  rem   t4, s3, s11
  remu  a3, s10, s6
  divw  t3, s7, a1
  remw  t0, t0, t4
  sd    a1, 8(s0)
  ld    a0, 8(s0)
  sw    a2, 8(s0)
  lw    t5, 8(s0)
  lwu   t5, 8(s0)
  lh    s7, 8(s0)
  lbu   s9, 8(s0)
  lr.d      s8, (s0)
  sc.d      t3, s5, (s0)
  amoadd.w  t0, a3, (s0)
  amoswap.d a7, t1, (s0)
  amoand.w  s10, t4, (s0)
  amoor.d   s3, a7, (s0)
  amoxor.w  t4, t6, (s0)
  amomax.d  a6, a5, (s0)
  amominu.w a4, s11, (s0)
  fmv.w.x   f2, s7
  fmv.d.x   f6, s2
  fadd.s    f7, f4, f11
  fsub.s    f19, f20, f9
  fmul.s    f4, f21, f11
  fdiv.s    f7, f8, f18
  fmin.s    f8, f19, f5
  fmax.s    f21, f0, f8
  fsgnj.s   f11, f7, f9
  fadd.d    f10, f21, f21
  fsub.d    f19, f2, f11
  fmul.d    f4, f9, f18
  fdiv.d    f1, f2, f10
  fsqrt.d   f4, f11
  fmadd.d   f0, f0, f6, f2
  fcvt.s.w  f9, t0
  fcvt.d.w  f3, s5
  fcvt.d.s  f4, f7
  fcvt.s.d  f5, f20
  fcvt.w.s  t3, f4, rtz
  fcvt.l.d  a6, f18, rtz
  feq.d     s4, f5, f2
  flt.s     s8, f9, f6
  fclass.d  s2, f6
  csrr  s3, mscratch
  csrw  mscratch, a2
  csrrw s10, mscratch, t6
  csrrs s8, mstatus, x0
  csrrc a3, mscratch, x0
  csrrwi s4, mscratch, 7
  fence
  fence.i
  c.addi a0, -16
  c.mv   a1, a2
  c.li   a3, 21
  c.add  a4, a5
  la    s0, tdat
  li    a7, 570
  li    s2, 1991
  add   s4, a1, s2
  sub   t6, a4, s9
  xor   s2, a7, s2
  or    a5, s4, s6
  and   s10, a0, a5
  addi  t2, t6, 2028
  andi  s8, t1, 1907
  ori   t3, t5, 1715
  xori  s8, a2, -570
  slli  s7, t3, 3
  srli  a0, s6, 5
  srai  s8, s10, 42
  sllw  a3, s3, s2
  sraw  s2, s11, a4
  slt   a1, a6, s9
  sltu  t5, s7, a4
  sltiu t2, a3, 1499
  lui   t2, 0xf2f60
  auipc s11, 0x6b
  addw  t1, t5, t2
  subw  t5, t0, s4
  addiw a1, t1, 351
  mul   t3, s2, t4
  mulh  t2, s3, t0
  mulhu s3, t3, a6
  mulw  s7, s2, a3
  div   t2, a6, t2
  divu  s9, t1, a4
  rem   s5, s7, a2
  remu  a1, t4, s10
  divw  s4, t4, s4
  remw  s5, a1, t4
  sd    a3, 8(s0)
  ld    a0, 8(s0)
  sw    a1, 8(s0)
  lw    a6, 8(s0)
  lwu   s2, 8(s0)
  lh    s6, 8(s0)
  lbu   s11, 8(s0)
  lr.d      s8, (s0)
  sc.d      a1, s3, (s0)
  amoadd.w  s4, s6, (s0)
  amoswap.d t4, s6, (s0)
  amoand.w  a4, s7, (s0)
  amoor.d   s8, s9, (s0)
  amoxor.w  s9, s6, (s0)
  amomax.d  s8, a2, (s0)
  amominu.w a6, a1, (s0)
  fmv.w.x   f20, s7
  fmv.d.x   f5, a3
  fadd.s    f5, f1, f19
  fsub.s    f3, f0, f11
  fmul.s    f4, f9, f8
  fdiv.s    f9, f5, f19
  fmin.s    f1, f10, f0
  fmax.s    f19, f1, f21
  fsgnj.s   f1, f3, f19
  fadd.d    f18, f20, f2
  fsub.d    f0, f18, f4
  fmul.d    f21, f19, f3
  fdiv.d    f2, f21, f6
  fsqrt.d   f4, f0
  fmadd.d   f19, f0, f0, f3
  fcvt.s.w  f2, a6
  fcvt.d.w  f3, a4
  fcvt.d.s  f21, f0
  fcvt.s.d  f8, f7
  fcvt.w.s  t6, f5, rtz
  fcvt.l.d  a1, f11, rtz
  feq.d     s11, f4, f2
  flt.s     t1, f21, f20
  fclass.d  s8, f8
  csrr  a1, mscratch
  csrw  mscratch, s9
  csrrw a1, mscratch, a0
  csrrs a1, mstatus, x0
  csrrc a0, mscratch, x0
  csrrwi s7, mscratch, 5
  fence
  fence.i
  c.addi a0, -8
  c.mv   a1, a2
  c.li   a3, 7
  c.add  a4, a5
  la    s0, tdat
  li    t1, 679
  li    s2, -1559
  add   t2, t3, s5
  sub   s10, t6, s2
  xor   s8, a5, a4
  or    a3, t3, s7
  and   a5, s7, t5
  addi  s2, t4, 1660
  andi  t0, s11, 1367
  ori   t1, t0, 248
  xori  s6, s7, 672
  slli  s6, s10, 1
  srli  a4, s6, 39
  srai  s5, t5, 31
  sllw  t4, t4, s8
  sraw  t4, s6, s11
  slt   a7, t6, t1
  sltu  s9, a0, t2
  sltiu t0, t0, 1730
  lui   a5, 0x15a7e
  auipc t1, 0x48
  addw  s5, a4, t0
  subw  s4, s8, s11
  addiw s2, t3, -1352
  mul   s4, s4, s2
  mulh  t4, a6, s11
  mulhu s10, a7, t1
  mulw  s6, a1, s8
  div   t4, t6, s9
  divu  a6, t0, s5
  rem   s11, a0, t4
  remu  t6, s4, a2
  divw  s4, t3, s11
  remw  a2, a7, t4
  sd    s3, 8(s0)
  ld    t2, 8(s0)
  sw    s2, 8(s0)
  lw    s3, 8(s0)
  lwu   s5, 8(s0)
  lh    a6, 8(s0)
  lbu   a6, 8(s0)
  lr.d      a6, (s0)
  sc.d      a6, a2, (s0)
  amoadd.w  a5, s9, (s0)
  amoswap.d t1, t3, (s0)
  amoand.w  s5, s5, (s0)
  amoor.d   t3, t4, (s0)
  amoxor.w  s11, s3, (s0)
  amomax.d  a4, a7, (s0)
  amominu.w a1, s2, (s0)
  fmv.w.x   f11, a3
  fmv.d.x   f11, s7
  fadd.s    f20, f2, f4
  fsub.s    f10, f0, f11
  fmul.s    f8, f0, f3
  fdiv.s    f1, f6, f21
  fmin.s    f6, f8, f8
  fmax.s    f19, f3, f20
  fsgnj.s   f4, f8, f1
  fadd.d    f10, f6, f5
  fsub.d    f18, f2, f0
  fmul.d    f1, f1, f11
  fdiv.d    f20, f21, f2
  fsqrt.d   f18, f3
  fmadd.d   f2, f8, f10, f7
  fcvt.s.w  f2, s8
  fcvt.d.w  f18, a5
  fcvt.d.s  f20, f5
  fcvt.s.d  f11, f7
  fcvt.w.s  s10, f7, rtz
  fcvt.l.d  a5, f1, rtz
  feq.d     t0, f11, f1
  flt.s     s4, f0, f1
  fclass.d  t0, f21
  csrr  a1, mscratch
  csrw  mscratch, a3
  csrrw a4, mscratch, t2
  csrrs s11, mstatus, x0
  csrrc a0, mscratch, x0
  csrrwi a6, mscratch, 19
  fence
  fence.i
  c.addi a0, 6
  c.mv   a1, a2
  c.li   a3, 24
  c.add  a4, a5
  la    s0, tdat
  li    s11, 431
  li    s2, 605
  add   t3, t0, t4
  sub   a3, t3, s2
  xor   t4, a5, t6
  or    a7, a4, s8
  and   a0, t6, s9
  addi  a6, a1, -763
  andi  a7, a2, 1528
  ori   s10, a4, 1831
  xori  a3, t4, -1870
  slli  s7, a2, 57
  srli  t2, t2, 29
  srai  s2, a3, 46
  sllw  a4, t2, a7
  sraw  s10, a1, a5
  slt   s9, t6, s4
  sltu  a4, t6, a4
  sltiu t0, t5, 1686
  lui   a7, 0x4fb62
  auipc a0, 0x8a
  addw  s5, t1, t2
  subw  a5, t0, s2
  addiw a3, t2, 1689
  mul   s2, a3, a4
  mulh  s3, a1, s7
  mulhu s8, a6, s4
  mulw  s2, t1, a3
  div   t0, s11, a6
  divu  t3, t5, t0
  rem   a7, a7, a3
  remu  t4, t1, t5
  divw  a5, a1, s10
  remw  t1, a4, s7
  sd    t6, 0(s0)
  ld    s3, 0(s0)
  sw    t2, 0(s0)
  lw    s3, 0(s0)
  lwu   a4, 0(s0)
  lh    t6, 0(s0)
  lbu   a0, 0(s0)
  lr.d      s3, (s0)
  sc.d      t1, a5, (s0)
  amoadd.w  t3, t5, (s0)
  amoswap.d a1, t5, (s0)
  amoand.w  a6, t0, (s0)
  amoor.d   s5, a5, (s0)
  amoxor.w  a4, a5, (s0)
  amomax.d  s3, s11, (s0)
  amominu.w a7, s9, (s0)
  fmv.w.x   f5, a6
  fmv.d.x   f2, a2
  fadd.s    f21, f8, f5
  fsub.s    f6, f4, f6
  fmul.s    f9, f6, f0
  fdiv.s    f2, f19, f1
  fmin.s    f11, f10, f9
  fmax.s    f21, f2, f0
  fsgnj.s   f19, f21, f4
  fadd.d    f8, f7, f5
  fsub.d    f11, f1, f5
  fmul.d    f11, f0, f11
  fdiv.d    f20, f2, f3
  fsqrt.d   f11, f7
  fmadd.d   f10, f18, f1, f9
  fcvt.s.w  f3, s10
  fcvt.d.w  f21, t6
  fcvt.d.s  f0, f4
  fcvt.s.d  f0, f7
  fcvt.w.s  a2, f7, rtz
  fcvt.l.d  s6, f5, rtz
  feq.d     a5, f3, f9
  flt.s     t0, f0, f0
  fclass.d  a3, f6
  csrr  t0, mscratch
  csrw  mscratch, a0
  csrrw s6, mscratch, s7
  csrrs s5, mstatus, x0
  csrrc t6, mscratch, x0
  csrrwi s3, mscratch, 15
  fence
  fence.i
  c.addi a0, 13
  c.mv   a1, a2
  c.li   a3, 24
  c.add  a4, a5
  la    s0, tdat
  li    a3, 1436
  li    a3, -582
  add   a1, t0, a3
  sub   t6, s2, s5
  xor   s3, s11, t0
  or    a3, a3, a3
  and   t4, a4, s4
  addi  s5, a7, -189
  andi  a4, s8, 1892
  ori   s10, t4, 673
  xori  a0, s7, 1136
  slli  s9, t5, 4
  srli  t4, a1, 46
  srai  t2, t4, 30
  sllw  t2, s9, t5
  sraw  s5, t2, t4
  slt   s4, a1, t2
  sltu  s3, a4, s8
  sltiu t3, a7, 1729
  lui   s8, 0x5ea7
  auipc t3, 0x37
  addw  s3, a5, a2
  subw  t2, t5, a6
  addiw s3, s8, -1878
  mul   a7, a4, t5
  mulh  t4, s11, t6
  mulhu s7, a1, a1
  mulw  a1, s7, s6
  div   t0, s8, s6
  divu  t0, s7, s4
  rem   a1, s6, a3
  remu  t0, a3, s3
  divw  a0, t5, a7
  remw  a1, t1, a3
  sd    t3, 8(s0)
  ld    s7, 8(s0)
  sw    a5, 8(s0)
  lw    a3, 8(s0)
  lwu   a1, 8(s0)
  lh    s6, 8(s0)
  lbu   s3, 8(s0)
  lr.d      t0, (s0)
  sc.d      a2, t6, (s0)
  amoadd.w  s5, s4, (s0)
  amoswap.d a4, t6, (s0)
  amoand.w  a3, s3, (s0)
  amoor.d   a4, t1, (s0)
  amoxor.w  t5, s5, (s0)
  amomax.d  t1, t0, (s0)
  amominu.w a7, s10, (s0)
  fmv.w.x   f2, s10
  fmv.d.x   f9, t6
  fadd.s    f7, f18, f6
  fsub.s    f11, f20, f9
  fmul.s    f21, f21, f9
  fdiv.s    f0, f7, f10
  fmin.s    f7, f6, f18
  fmax.s    f18, f0, f11
  fsgnj.s   f5, f7, f10
  fadd.d    f10, f21, f8
  fsub.d    f9, f6, f9
  fmul.d    f1, f0, f5
  fdiv.d    f2, f11, f20
  fsqrt.d   f1, f18
  fmadd.d   f20, f11, f3, f7
  fcvt.s.w  f4, t5
  fcvt.d.w  f10, s8
  fcvt.d.s  f11, f4
  fcvt.s.d  f6, f8
  fcvt.w.s  s3, f3, rtz
  fcvt.l.d  s10, f21, rtz
  feq.d     t0, f4, f19
  flt.s     a3, f0, f19
  fclass.d  s11, f3
  csrr  s2, mscratch
  csrw  mscratch, t4
  csrrw s5, mscratch, a4
  csrrs t5, mstatus, x0
  csrrc t0, mscratch, x0
  csrrwi s6, mscratch, 7
  fence
  fence.i
  c.addi a0, -8
  c.mv   a1, a2
  c.li   a3, 25
  c.add  a4, a5
  la    s0, tdat
  li    s9, 1875
  li    t1, 840
  add   t1, t3, t4
  sub   s3, s4, s6
  xor   t4, s7, t2
  or    a0, s10, s2
  and   t4, t6, t1
  addi  a5, s4, 442
  andi  a4, t5, 1544
  ori   s5, a7, 360
  xori  t2, t2, -61
  slli  t2, a6, 54
  srli  a0, a0, 6
  srai  t0, s5, 63
  sllw  t1, s4, s11
  sraw  t1, s4, s6
  slt   t5, s3, s3
  sltu  s10, s8, t5
  sltiu t4, t6, 1465
  lui   a1, 0xb3c44
  auipc t6, 0x5
  addw  s8, a2, s3
  subw  a7, a3, t5
  addiw t3, s3, 1236
  mul   s7, s4, s5
  mulh  a4, a6, t5
  mulhu s2, t4, t6
  mulw  s11, s6, s5
  div   t2, s9, s3
  divu  s10, a2, a5
  rem   t3, t2, t3
  remu  a2, t1, s3
  divw  a5, a3, s7
  remw  t1, s9, t2
  sd    s7, 8(s0)
  ld    a5, 8(s0)
  sw    s3, 8(s0)
  lw    t1, 8(s0)
  lwu   s3, 8(s0)
  lh    a6, 8(s0)
  lbu   s3, 8(s0)
  lr.d      a6, (s0)
  sc.d      t5, a5, (s0)
  amoadd.w  a1, s7, (s0)
  amoswap.d s5, s6, (s0)
  amoand.w  a3, t3, (s0)
  amoor.d   s5, s7, (s0)
  amoxor.w  s7, s10, (s0)
  amomax.d  a1, s9, (s0)
  amominu.w t5, a0, (s0)
  fmv.w.x   f0, t1
  fmv.d.x   f0, t1
  fadd.s    f18, f3, f0
  fsub.s    f0, f6, f5
  fmul.s    f21, f8, f4
  fdiv.s    f6, f19, f3
  fmin.s    f4, f5, f3
  fmax.s    f0, f3, f2
  fsgnj.s   f5, f21, f20
  fadd.d    f19, f1, f0
  fsub.d    f10, f4, f7
  fmul.d    f11, f8, f5
  fdiv.d    f1, f8, f3
  fsqrt.d   f2, f11
  fmadd.d   f6, f20, f18, f0
  fcvt.s.w  f1, a7
  fcvt.d.w  f18, s5
  fcvt.d.s  f1, f20
  fcvt.s.d  f1, f7
  fcvt.w.s  a7, f7, rtz
  fcvt.l.d  a1, f5, rtz
  feq.d     s5, f5, f10
  flt.s     a0, f20, f9
  fclass.d  t5, f8
  csrr  s2, mscratch
  csrw  mscratch, a2
  csrrw a7, mscratch, s8
  csrrs t4, mstatus, x0
  csrrc s8, mscratch, x0
  csrrwi s9, mscratch, 14
  fence
  fence.i
  c.addi a0, -6
  c.mv   a1, a2
  c.li   a3, 7
  c.add  a4, a5
  la    s0, tdat
  li    t4, 1984
  li    a0, -55
  add   a2, a5, a5
  sub   t3, t4, a5
  xor   a0, t1, t4
  or    s4, t3, a3
  and   t2, s4, t4
  addi  t2, t4, -1512
  andi  a3, t5, 1438
  ori   s4, a7, 1586
  xori  a6, t6, 275
  slli  t3, a7, 55
  srli  a1, t0, 3
  srai  t2, a4, 30
  sllw  s9, a4, a2
  sraw  a6, t0, s4
  slt   a4, s4, t6
  sltu  t6, a7, a5
  sltiu t3, t3, 886
  lui   s10, 0xcf701
  auipc t4, 0x6a
  addw  t1, s2, s3
  subw  a6, a7, t6
  addiw s8, a4, 88
  mul   s6, t6, s5
  mulh  t3, s4, a7
  mulhu t4, s6, s3
  mulw  a6, a4, s11
  div   a3, s8, s3
  divu  a2, s4, t0
  rem   s10, s11, s11
  remu  t4, a0, s8
  divw  s9, s5, a4
  remw  t1, a0, t4
  sd    s9, 0(s0)
  ld    a5, 0(s0)
  sw    s11, 0(s0)
  lw    a7, 0(s0)
  lwu   t2, 0(s0)
  lh    a6, 0(s0)
  lbu   s8, 0(s0)
  lr.d      a3, (s0)
  sc.d      a2, s4, (s0)
  amoadd.w  t3, s3, (s0)
  amoswap.d s11, t1, (s0)
  amoand.w  a6, a2, (s0)
  amoor.d   s9, t1, (s0)
  amoxor.w  a2, a7, (s0)
  amomax.d  t1, a4, (s0)
  amominu.w s9, t4, (s0)
  fmv.w.x   f9, t3
  fmv.d.x   f18, t6
  fadd.s    f4, f8, f5
  fsub.s    f0, f11, f11
  fmul.s    f19, f0, f20
  fdiv.s    f7, f18, f11
  fmin.s    f3, f5, f9
  fmax.s    f3, f8, f7
  fsgnj.s   f1, f18, f1
  fadd.d    f5, f19, f6
  fsub.d    f9, f4, f18
  fmul.d    f1, f9, f5
  fdiv.d    f7, f21, f8
  fsqrt.d   f19, f11
  fmadd.d   f0, f3, f9, f1
  fcvt.s.w  f1, a7
  fcvt.d.w  f3, a1
  fcvt.d.s  f10, f6
  fcvt.s.d  f11, f2
  fcvt.w.s  t5, f18, rtz
  fcvt.l.d  s10, f7, rtz
  feq.d     t0, f2, f11
  flt.s     t5, f20, f10
  fclass.d  s9, f20
  csrr  s3, mscratch
  csrw  mscratch, a1
  csrrw s8, mscratch, s9
  csrrs a6, mstatus, x0
  csrrc t5, mscratch, x0
  csrrwi s8, mscratch, 8
  fence
  fence.i
  c.addi a0, -1
  c.mv   a1, a2
  c.li   a3, -8
  c.add  a4, a5
  la    s0, tdat
  li    a1, 1069
  li    a5, -708
  add   s11, s7, a7
  sub   s4, t0, a7
  xor   a1, a5, t3
  or    t3, t5, a2
  and   a6, s7, t1
  addi  a4, a4, 1936
  andi  s8, s2, 974
  ori   s9, a7, 24
  xori  s3, s9, 1597
  slli  a4, s7, 44
  srli  s9, t1, 17
  srai  s9, a4, 30
  sllw  t2, s7, a3
  sraw  s4, t5, s11
  slt   a5, s8, s8
  sltu  a4, s6, t6
  sltiu s11, t4, 845
  lui   a3, 0x94246
  auipc a0, 0xb8
  addw  s2, a6, a1
  subw  a1, t0, t1
  addiw a6, a3, 482
  mul   t6, a3, a5
  mulh  t2, t6, t6
  mulhu s5, t3, t1
  mulw  a5, s4, a2
  div   a1, a0, t6
  divu  s11, s2, a2
  rem   s10, s9, t2
  remu  s10, s5, t0
  divw  a3, s7, s2
  remw  t5, s2, a6
  sd    a0, 8(s0)
  ld    t3, 8(s0)
  sw    a2, 8(s0)
  lw    s7, 8(s0)
  lwu   t1, 8(s0)
  lh    s7, 8(s0)
  lbu   s6, 8(s0)
  lr.d      s10, (s0)
  sc.d      s7, s9, (s0)
  amoadd.w  t0, s7, (s0)
  amoswap.d a7, a2, (s0)
  amoand.w  a4, s10, (s0)
  amoor.d   a0, a0, (s0)
  amoxor.w  s11, t4, (s0)
  amomax.d  a4, t1, (s0)
  amominu.w t3, a5, (s0)
  fmv.w.x   f5, a3
  fmv.d.x   f9, s10
  fadd.s    f10, f18, f5
  fsub.s    f11, f10, f7
  fmul.s    f11, f4, f11
  fdiv.s    f8, f7, f1
  fmin.s    f1, f3, f18
  fmax.s    f1, f6, f21
  fsgnj.s   f19, f21, f5
  fadd.d    f9, f2, f4
  fsub.d    f7, f5, f4
  fmul.d    f20, f18, f2
  fdiv.d    f1, f20, f21
  fsqrt.d   f6, f6
  fmadd.d   f11, f0, f1, f19
  fcvt.s.w  f4, t1
  fcvt.d.w  f2, s8
  fcvt.d.s  f1, f19
  fcvt.s.d  f10, f2
  fcvt.w.s  t6, f0, rtz
  fcvt.l.d  s8, f5, rtz
  feq.d     s10, f5, f18
  flt.s     t1, f0, f20
  fclass.d  s5, f11
  csrr  s5, mscratch
  csrw  mscratch, a6
  csrrw s2, mscratch, a2
  csrrs s4, mstatus, x0
  csrrc t2, mscratch, x0
  csrrwi s3, mscratch, 29
  fence
  fence.i
  c.addi a0, -5
  c.mv   a1, a2
  c.li   a3, -13
  c.add  a4, a5
  la    s0, tdat
  li    t4, 333
  li    a1, 667
  add   s6, s8, t1
  sub   s5, s5, t5
  xor   t3, s2, s8
  or    s7, a4, t1
  and   t2, s3, s7
  addi  a0, a6, -226
  andi  s8, s10, 1832
  ori   s9, a2, 601
  xori  s8, s5, 999
  slli  s4, s5, 53
  srli  t3, s3, 30
  srai  s5, t6, 50
  sllw  t0, a3, a7
  sraw  a5, a6, s4
  slt   s10, a3, a7
  sltu  t0, s7, a3
  sltiu a6, s3, 1030
  lui   s9, 0xfa828
  auipc a7, 0xea
  addw  a7, s4, s5
  subw  s9, a3, s10
  addiw s3, s5, -1391
  mul   t5, s8, a2
  mulh  t6, a4, s3
  mulhu s4, s3, s9
  mulw  s11, a3, s7
  div   s10, s3, a3
  divu  t6, s8, t4
  rem   s4, a5, a6
  remu  s5, s2, s11
  divw  a2, a4, t3
  remw  s11, s6, a1
  sd    a7, 8(s0)
  ld    a1, 8(s0)
  sw    t3, 8(s0)
  lw    a1, 8(s0)
  lwu   a0, 8(s0)
  lh    s9, 8(s0)
  lbu   s6, 8(s0)
  lr.d      a6, (s0)
  sc.d      t6, t1, (s0)
  amoadd.w  a3, s9, (s0)
  amoswap.d a4, t5, (s0)
  amoand.w  a2, s6, (s0)
  amoor.d   a6, s5, (s0)
  amoxor.w  a3, s10, (s0)
  amomax.d  t3, a5, (s0)
  amominu.w t3, s10, (s0)
  fmv.w.x   f10, s11
  fmv.d.x   f0, t0
  fadd.s    f3, f7, f11
  fsub.s    f11, f21, f1
  fmul.s    f11, f3, f11
  fdiv.s    f10, f3, f1
  fmin.s    f7, f8, f11
  fmax.s    f6, f20, f0
  fsgnj.s   f20, f3, f0
  fadd.d    f21, f3, f2
  fsub.d    f8, f5, f4
  fmul.d    f9, f18, f4
  fdiv.d    f8, f8, f20
  fsqrt.d   f0, f0
  fmadd.d   f10, f4, f21, f21
  fcvt.s.w  f1, a1
  fcvt.d.w  f2, a5
  fcvt.d.s  f18, f21
  fcvt.s.d  f5, f20
  fcvt.w.s  t4, f7, rtz
  fcvt.l.d  s6, f2, rtz
  feq.d     t3, f10, f6
  flt.s     t1, f4, f1
  fclass.d  a6, f5
  csrr  t3, mscratch
  csrw  mscratch, s10
  csrrw t6, mscratch, t2
  csrrs s5, mstatus, x0
  csrrc t6, mscratch, x0
  csrrwi t4, mscratch, 22
  fence
  fence.i
  c.addi a0, -12
  c.mv   a1, a2
  c.li   a3, -32
  c.add  a4, a5
  la    s0, tdat
  li    t2, 1980
  li    t2, -192
  add   a0, a7, t6
  sub   s6, a1, s7
  xor   a4, s10, s8
  or    a4, t0, t4
  and   t0, a2, s3
  addi  t0, t3, -909
  andi  s9, a1, 390
  ori   a6, s11, 1745
  xori  s7, s5, -1238
  slli  t3, t1, 30
  srli  a4, s8, 9
  srai  t1, s11, 43
  sllw  s10, t3, s3
  sraw  s7, a7, t3
  slt   s4, s9, t4
  sltu  t2, a1, s9
  sltiu t2, s8, 1323
  lui   s2, 0xbc0cd
  auipc a7, 0x78
  addw  t3, a4, a4
  subw  a6, a0, s8
  addiw t6, t4, 1601
  mul   t4, s5, s11
  mulh  t1, a5, s5
  mulhu a2, a4, t1
  mulw  s10, t1, t0
  div   s10, s5, s4
  divu  s8, t2, a2
  rem   a6, s5, a2
  remu  s5, a5, t1
  divw  s5, t3, t6
  remw  t3, s11, s9
  sd    s10, 8(s0)
  ld    a2, 8(s0)
  sw    s2, 8(s0)
  lw    t2, 8(s0)
  lwu   a5, 8(s0)
  lh    t0, 8(s0)
  lbu   t0, 8(s0)
  lr.d      s4, (s0)
  sc.d      a0, s11, (s0)
  amoadd.w  a5, s7, (s0)
  amoswap.d t0, a7, (s0)
  amoand.w  s9, a0, (s0)
  amoor.d   a6, a1, (s0)
  amoxor.w  t4, t6, (s0)
  amomax.d  a6, s6, (s0)
  amominu.w t1, s3, (s0)
  fmv.w.x   f3, a6
  fmv.d.x   f7, s10
  fadd.s    f1, f4, f1
  fsub.s    f2, f2, f10
  fmul.s    f4, f0, f6
  fdiv.s    f8, f0, f10
  fmin.s    f0, f6, f10
  fmax.s    f10, f0, f21
  fsgnj.s   f18, f10, f5
  fadd.d    f1, f19, f1
  fsub.d    f2, f10, f21
  fmul.d    f18, f8, f20
  fdiv.d    f0, f0, f10
  fsqrt.d   f10, f1
  fmadd.d   f19, f10, f5, f2
  fcvt.s.w  f0, a4
  fcvt.d.w  f6, a4
  fcvt.d.s  f2, f11
  fcvt.s.d  f11, f19
  fcvt.w.s  t3, f4, rtz
  fcvt.l.d  s8, f10, rtz
  feq.d     a7, f8, f21
  flt.s     s11, f1, f9
  fclass.d  s7, f20
  csrr  s4, mscratch
  csrw  mscratch, t0
  csrrw t3, mscratch, s3
  csrrs s3, mstatus, x0
  csrrc t0, mscratch, x0
  csrrwi a4, mscratch, 16
  fence
  fence.i
  c.addi a0, -32
  c.mv   a1, a2
  c.li   a3, 28
  c.add  a4, a5
  la    s0, tdat
  li    a3, 1484
  li    a4, -179
  add   t4, s11, a2
  sub   a0, s6, a4
  xor   a3, a1, s4
  or    s3, a6, s4
  and   s11, a5, t0
  addi  s6, t3, -825
  andi  a5, s10, 663
  ori   s3, a0, 1436
  xori  s11, s9, -61
  slli  t6, s2, 27
  srli  s7, t3, 49
  srai  t6, a6, 41
  sllw  a0, a3, s8
  sraw  s10, a0, a2
  slt   s7, t4, s8
  sltu  t3, a1, a7
  sltiu s5, t4, 1679
  lui   t4, 0x72baf
  auipc a0, 0x80
  addw  a0, t0, s9
  subw  t5, a7, a7
  addiw t3, a6, 622
  mul   s11, t5, s7
  mulh  t0, t1, s2
  mulhu a6, s5, a5
  mulw  s2, s11, t0
  div   s11, a4, t1
  divu  t1, a2, t2
  rem   a0, s2, a7
  remu  a5, t2, s8
  divw  s6, s6, t6
  remw  a6, s5, a1
  sd    s10, 0(s0)
  ld    t3, 0(s0)
  sw    a1, 0(s0)
  lw    s11, 0(s0)
  lwu   s11, 0(s0)
  lh    t6, 0(s0)
  lbu   a5, 0(s0)
  lr.d      t5, (s0)
  sc.d      a4, t1, (s0)
  amoadd.w  s8, a0, (s0)
  amoswap.d a3, a4, (s0)
  amoand.w  a0, a4, (s0)
  amoor.d   t1, a4, (s0)
  amoxor.w  s3, s10, (s0)
  amomax.d  t3, a3, (s0)
  amominu.w s11, a5, (s0)
  fmv.w.x   f20, s8
  fmv.d.x   f18, a2
  fadd.s    f19, f10, f18
  fsub.s    f10, f1, f7
  fmul.s    f6, f0, f1
  fdiv.s    f4, f7, f19
  fmin.s    f3, f0, f1
  fmax.s    f10, f2, f3
  fsgnj.s   f3, f21, f4
  fadd.d    f19, f0, f5
  fsub.d    f7, f4, f3
  fmul.d    f11, f21, f2
  fdiv.d    f11, f6, f7
  fsqrt.d   f2, f8
  fmadd.d   f5, f0, f8, f8
  fcvt.s.w  f2, a1
  fcvt.d.w  f6, s3
  fcvt.d.s  f1, f19
  fcvt.s.d  f11, f8
  fcvt.w.s  a0, f10, rtz
  fcvt.l.d  s9, f1, rtz
  feq.d     s7, f20, f9
  flt.s     s4, f10, f19
  fclass.d  s10, f8
  csrr  t4, mscratch
  csrw  mscratch, t5
  csrrw t2, mscratch, s4
  csrrs t5, mstatus, x0
  csrrc t4, mscratch, x0
  csrrwi a4, mscratch, 24
  fence
  fence.i
  c.addi a0, 17
  c.mv   a1, a2
  c.li   a3, 17
  c.add  a4, a5
  la    s0, tdat
  li    t5, 585
  li    s7, -2005
  add   a7, s6, s3
  sub   t0, s9, s6
  xor   s10, t4, a7
  or    a6, s8, a3
  and   a2, s6, a1
  addi  s9, a1, 1276
  andi  s9, s4, 1328
  ori   s8, s7, 1812
  xori  s4, s8, 537
  slli  t6, s5, 0
  srli  s2, s10, 60
  srai  s3, t2, 48
  sllw  a7, s7, s10
  sraw  t4, t3, s9
  slt   a2, t4, s3
  sltu  t0, s6, s8
  sltiu s8, t2, 294
  lui   s7, 0x724fa
  auipc s6, 0x87
  addw  t0, s2, s10
  subw  t3, s3, s5
  addiw s2, s5, -236
  mul   a4, a2, s11
  mulh  s3, t3, s3
  mulhu a6, s3, a5
  mulw  t3, a7, s8
  div   a5, a4, s8
  divu  t6, a5, s7
  rem   s7, a1, t2
  remu  t4, t3, t5
  divw  a3, t5, a4
  remw  s9, t0, t4
  sd    t3, 0(s0)
  ld    t3, 0(s0)
  sw    s8, 0(s0)
  lw    s3, 0(s0)
  lwu   s3, 0(s0)
  lh    t1, 0(s0)
  lbu   t6, 0(s0)
  lr.d      s8, (s0)
  sc.d      a2, t0, (s0)
  amoadd.w  t4, t1, (s0)
  amoswap.d t6, s9, (s0)
  amoand.w  a3, t6, (s0)
  amoor.d   s7, s2, (s0)
  amoxor.w  s10, a5, (s0)
  amomax.d  s11, s3, (s0)
  amominu.w a4, a0, (s0)
  fmv.w.x   f4, t3
  fmv.d.x   f21, s3
  fadd.s    f7, f11, f10
  fsub.s    f18, f8, f0
  fmul.s    f6, f0, f8
  fdiv.s    f1, f5, f9
  fmin.s    f8, f10, f8
  fmax.s    f7, f8, f20
  fsgnj.s   f2, f21, f2
  fadd.d    f6, f4, f19
  fsub.d    f9, f11, f1
  fmul.d    f20, f18, f11
  fdiv.d    f1, f9, f19
  fsqrt.d   f19, f8
  fmadd.d   f11, f7, f18, f4
  fcvt.s.w  f6, s9
  fcvt.d.w  f11, a2
  fcvt.d.s  f6, f10
  fcvt.s.d  f2, f2
  fcvt.w.s  s11, f20, rtz
  fcvt.l.d  t4, f18, rtz
  feq.d     s3, f19, f21
  flt.s     s7, f0, f3
  fclass.d  s5, f20
  csrr  t6, mscratch
  csrw  mscratch, s9
  csrrw t5, mscratch, t5
  csrrs s2, mstatus, x0
  csrrc a5, mscratch, x0
  csrrwi a2, mscratch, 28
  fence
  fence.i
  c.addi a0, -7
  c.mv   a1, a2
  c.li   a3, 30
  c.add  a4, a5
  la    s0, tdat
  li    a4, 38
  li    s8, -145
  add   s10, a6, t4
  sub   s4, a1, s8
  xor   t1, s4, t2
  or    s11, t4, s11
  and   t6, a3, a2
  addi  a7, a2, -1922
  andi  a3, s2, 361
  ori   s11, a6, 1860
  xori  a1, s8, -411
  slli  s9, t2, 61
  srli  a1, s4, 53
  srai  s5, a4, 52
  sllw  a1, s7, a4
  sraw  t2, t2, a6
  slt   s3, a0, a5
  sltu  s4, t0, s3
  sltiu t0, a2, 1282
  lui   t4, 0x82927
  auipc s8, 0x98
  addw  s4, t4, s3
  subw  t5, s8, a1
  addiw t1, t1, -13
  mul   t4, t5, s4
  mulh  t0, t1, a6
  mulhu a4, a1, a6
  mulw  s4, s7, t3
  div   t6, s8, s2
  divu  s9, s5, a4
  rem   t3, t2, a6
  remu  t6, s9, s4
  divw  s8, a1, s10
  remw  t2, a0, s4
  sd    t5, 0(s0)
  ld    s5, 0(s0)
  sw    t2, 0(s0)
  lw    a1, 0(s0)
  lwu   t0, 0(s0)
  lh    a7, 0(s0)
  lbu   t6, 0(s0)
  lr.d      t1, (s0)
  sc.d      a6, s9, (s0)
  amoadd.w  a6, s5, (s0)
  amoswap.d s6, t6, (s0)
  amoand.w  t4, s10, (s0)
  amoor.d   t6, a6, (s0)
  amoxor.w  a6, a1, (s0)
  amomax.d  a5, t5, (s0)
  amominu.w s7, a3, (s0)
  fmv.w.x   f1, a4
  fmv.d.x   f2, s6
  fadd.s    f21, f5, f0
  fsub.s    f5, f21, f7
  fmul.s    f9, f6, f5
  fdiv.s    f4, f6, f3
  fmin.s    f20, f3, f6
  fmax.s    f2, f1, f19
  fsgnj.s   f7, f8, f20
  fadd.d    f19, f4, f1
  fsub.d    f4, f1, f5
  fmul.d    f20, f9, f7
  fdiv.d    f10, f4, f9
  fsqrt.d   f8, f10
  fmadd.d   f6, f4, f7, f18
  fcvt.s.w  f1, t2
  fcvt.d.w  f18, a4
  fcvt.d.s  f9, f7
  fcvt.s.d  f2, f6
  fcvt.w.s  t6, f4, rtz
  fcvt.l.d  s10, f5, rtz
  feq.d     t5, f10, f18
  flt.s     a3, f1, f11
  fclass.d  a3, f6
  csrr  s7, mscratch
  csrw  mscratch, s3
  csrrw s3, mscratch, a2
  csrrs t1, mstatus, x0
  csrrc s2, mscratch, x0
  csrrwi t3, mscratch, 1
  fence
  fence.i
  c.addi a0, 17
  c.mv   a1, a2
  c.li   a3, 31
  c.add  a4, a5
  la    s0, tdat
  li    a2, 821
  li    s2, 245
  add   t1, s6, s5
  sub   s4, s11, a2
  xor   a6, a4, s2
  or    t0, s11, s11
  and   a7, s5, t1
  addi  a1, s5, -1224
  andi  a0, t3, 796
  ori   a4, s8, 1228
  xori  a1, a5, 681
  slli  t3, t6, 61
  srli  a7, t2, 46
  srai  a5, a3, 38
  sllw  a2, s10, s4
  sraw  t6, a3, s10
  slt   s4, a3, a5
  sltu  s6, t4, t6
  sltiu a1, a1, 162
  lui   s3, 0x31c7b
  auipc t5, 0x43
  addw  t5, s5, t3
  subw  a2, t3, s10
  addiw s8, s10, -706
  mul   t3, a5, s8
  mulh  a2, t2, a0
  mulhu s7, s2, t1
  mulw  a4, t0, a3
  div   a3, a7, a3
  divu  a4, s2, t0
  rem   s4, s4, a3
  remu  t2, t6, a7
  divw  a5, s5, s4
  remw  a1, s3, t0
  sd    a6, 8(s0)
  ld    t1, 8(s0)
  sw    t4, 8(s0)
  lw    s4, 8(s0)
  lwu   a6, 8(s0)
  lh    a4, 8(s0)
  lbu   a7, 8(s0)
  lr.d      s10, (s0)
  sc.d      s4, s3, (s0)
  amoadd.w  a7, a3, (s0)
  amoswap.d a0, a3, (s0)
  amoand.w  a1, s2, (s0)
  amoor.d   s9, s5, (s0)
  amoxor.w  a6, s9, (s0)
  amomax.d  s10, a7, (s0)
  amominu.w a2, s11, (s0)
  fmv.w.x   f5, a4
  fmv.d.x   f8, a0
  fadd.s    f19, f18, f3
  fsub.s    f9, f3, f2
  fmul.s    f6, f7, f7
  fdiv.s    f1, f7, f2
  fmin.s    f10, f3, f1
  fmax.s    f6, f5, f9
  fsgnj.s   f10, f2, f20
  fadd.d    f5, f0, f10
  fsub.d    f19, f19, f1
  fmul.d    f2, f7, f4
  fdiv.d    f5, f4, f11
  fsqrt.d   f4, f6
  fmadd.d   f6, f7, f10, f2
  fcvt.s.w  f0, s2
  fcvt.d.w  f1, s2
  fcvt.d.s  f10, f2
  fcvt.s.d  f2, f6
  fcvt.w.s  s7, f1, rtz
  fcvt.l.d  t3, f19, rtz
  feq.d     a2, f11, f5
  flt.s     s2, f21, f4
  fclass.d  t0, f9
  csrr  a1, mscratch
  csrw  mscratch, s10
  csrrw t6, mscratch, s8
  csrrs s5, mstatus, x0
  csrrc a5, mscratch, x0
  csrrwi t5, mscratch, 24
  fence
  fence.i
  c.addi a0, 21
  c.mv   a1, a2
  c.li   a3, 6
  c.add  a4, a5
  la    s0, tdat
  li    s10, 474
  li    a2, 16
  add   s11, a7, a7
  sub   a6, s5, t6
  xor   s4, a7, s2
  or    s5, s8, s9
  and   a1, t4, s8
  addi  t4, s7, 758
  andi  t4, t4, 356
  ori   a7, s7, 1390
  xori  s8, s6, 1446
  slli  t1, a0, 38
  srli  s2, s6, 2
  srai  a3, s2, 53
  sllw  t5, s6, t1
  sraw  t6, a4, t2
  slt   s4, a6, a2
  sltu  t3, t4, t6
  sltiu s6, a1, 1196
  lui   t2, 0x2d0b3
  auipc t0, 0x5f
  addw  s9, t6, t5
  subw  s8, s4, a7
  addiw a3, a6, -1708
  mul   t4, a5, t4
  mulh  t0, t2, a4
  mulhu t3, a5, a7
  mulw  t3, s6, t4
  div   t1, s2, t2
  divu  s3, s6, a6
  rem   a5, t4, s3
  remu  a0, a0, a5
  divw  a3, a7, t6
  remw  s5, s8, t0
  sd    s8, 8(s0)
  ld    a3, 8(s0)
  sw    s4, 8(s0)
  lw    s10, 8(s0)
  lwu   s11, 8(s0)
  lh    s3, 8(s0)
  lbu   s8, 8(s0)
  lr.d      t4, (s0)
  sc.d      a4, s11, (s0)
  amoadd.w  t0, s8, (s0)
  amoswap.d t5, a2, (s0)
  amoand.w  s3, s6, (s0)
  amoor.d   t2, t6, (s0)
  amoxor.w  t0, t1, (s0)
  amomax.d  t3, t1, (s0)
  amominu.w s8, s9, (s0)
  fmv.w.x   f18, s3
  fmv.d.x   f1, s7
  fadd.s    f21, f21, f11
  fsub.s    f0, f1, f3
  fmul.s    f18, f20, f9
  fdiv.s    f4, f20, f1
  fmin.s    f10, f21, f4
  fmax.s    f0, f8, f4
  fsgnj.s   f6, f1, f18
  fadd.d    f5, f8, f7
  fsub.d    f9, f0, f19
  fmul.d    f19, f2, f18
  fdiv.d    f21, f11, f8
  fsqrt.d   f10, f5
  fmadd.d   f21, f1, f11, f4
  fcvt.s.w  f6, s3
  fcvt.d.w  f1, a5
  fcvt.d.s  f9, f5
  fcvt.s.d  f9, f1
  fcvt.w.s  s5, f9, rtz
  fcvt.l.d  t4, f11, rtz
  feq.d     s9, f5, f8
  flt.s     t1, f21, f6
  fclass.d  s6, f10
  csrr  t6, mscratch
  csrw  mscratch, t4
  csrrw a3, mscratch, s8
  csrrs t0, mstatus, x0
  csrrc t3, mscratch, x0
  csrrwi t4, mscratch, 20
  fence
  fence.i
  c.addi a0, -8
  c.mv   a1, a2
  c.li   a3, 28
  c.add  a4, a5
  la    s0, tdat
  li    t0, 460
  li    a6, 1640
  add   s3, t5, s7
  sub   a5, s11, t2
  xor   a1, a4, t0
  or    s11, s4, s2
  and   s8, s4, s8
  addi  t5, s11, -1422
  andi  t0, t4, 1485
  ori   s9, t4, 1181
  xori  s7, a3, 79
  slli  t6, s11, 1
  srli  a1, s4, 39
  srai  t3, s6, 46
  sllw  t0, a7, a2
  sraw  s4, a3, s11
  slt   s6, s8, t5
  sltu  s9, a3, t1
  sltiu a5, s7, 722
  lui   s10, 0x3c545
  auipc s11, 0xce
  addw  t4, s10, t2
  subw  t4, t4, s2
  addiw t2, t3, -527
  mul   s9, a4, s4
  mulh  s10, s3, t5
  mulhu s8, t1, a4
  mulw  a6, t2, s8
  div   a2, t5, a2
  divu  s3, a0, s5
  rem   s8, a7, s5
  remu  t5, t4, a6
  divw  s5, s10, t0
  remw  s8, a4, a4
  sd    s8, 0(s0)
  ld    s11, 0(s0)
  sw    a7, 0(s0)
  lw    s3, 0(s0)
  lwu   a3, 0(s0)
  lh    t1, 0(s0)
  lbu   a1, 0(s0)
  lr.d      s10, (s0)
  sc.d      s7, t4, (s0)
  amoadd.w  t1, a4, (s0)
  amoswap.d s7, s9, (s0)
  amoand.w  s9, t4, (s0)
  amoor.d   s6, t0, (s0)
  amoxor.w  s9, a2, (s0)
  amomax.d  s11, s6, (s0)
  amominu.w s6, s3, (s0)
  fmv.w.x   f8, s6
  fmv.d.x   f6, a7
  fadd.s    f9, f3, f11
  fsub.s    f2, f11, f0
  fmul.s    f2, f3, f10
  fdiv.s    f6, f0, f20
  fmin.s    f4, f20, f8
  fmax.s    f1, f20, f1
  fsgnj.s   f1, f20, f3
  fadd.d    f21, f7, f9
  fsub.d    f10, f10, f7
  fmul.d    f6, f6, f9
  fdiv.d    f0, f7, f5
  fsqrt.d   f0, f8
  fmadd.d   f19, f11, f2, f8
  fcvt.s.w  f2, s5
  fcvt.d.w  f3, t4
  fcvt.d.s  f18, f19
  fcvt.s.d  f7, f1
  fcvt.w.s  t3, f10, rtz
  fcvt.l.d  s8, f8, rtz
  feq.d     a2, f21, f4
  flt.s     t5, f20, f20
  fclass.d  a6, f10
  csrr  s6, mscratch
  csrw  mscratch, a6
  csrrw a3, mscratch, t4
  csrrs a5, mstatus, x0
  csrrc t1, mscratch, x0
  csrrwi s11, mscratch, 12
  fence
  fence.i
  c.addi a0, -28
  c.mv   a1, a2
  c.li   a3, -30
  c.add  a4, a5
  la    s0, tdat
  li    t6, 809
  li    s9, -437
  add   s11, t0, a6
  sub   s4, s11, s9
  xor   t1, s10, a0
  or    s10, s10, s6
  and   s10, a0, a2
  addi  t3, a6, 1375
  andi  a0, s7, 1080
  ori   s4, t3, 670
  xori  s5, s7, 538
  slli  t3, t1, 13
  srli  a1, s10, 22
  srai  s9, t3, 53
  sllw  a0, s9, t6
  sraw  s11, a3, t2
  slt   a3, a4, t3
  sltu  s11, s2, s2
  sltiu a2, t2, 1304
  lui   s2, 0x41b23
  auipc a3, 0x80
  addw  s3, t4, a6
  subw  t3, t0, s8
  addiw a0, a6, 231
  mul   s3, t5, s11
  mulh  s10, s10, t4
  mulhu a5, t5, a4
  mulw  a4, a0, a3
  div   a6, s10, s5
  divu  s4, t4, a0
  rem   a0, a2, t6
  remu  s11, a1, a6
  divw  s5, s4, a2
  remw  t2, t2, s6
  sd    s2, 8(s0)
  ld    s11, 8(s0)
  sw    s7, 8(s0)
  lw    a6, 8(s0)
  lwu   a0, 8(s0)
  lh    a7, 8(s0)
  lbu   a6, 8(s0)
  lr.d      t3, (s0)
  sc.d      t4, a3, (s0)
  amoadd.w  a3, s5, (s0)
  amoswap.d a4, a6, (s0)
  amoand.w  t6, t6, (s0)
  amoor.d   s5, s5, (s0)
  amoxor.w  s7, s8, (s0)
  amomax.d  s9, t6, (s0)
  amominu.w s11, a2, (s0)
  fmv.w.x   f1, s2
  fmv.d.x   f5, t4
  fadd.s    f7, f21, f21
  fsub.s    f4, f3, f21
  fmul.s    f18, f2, f7
  fdiv.s    f7, f0, f18
  fmin.s    f7, f1, f7
  fmax.s    f3, f6, f0
  fsgnj.s   f1, f20, f1
  fadd.d    f18, f7, f7
  fsub.d    f1, f19, f8
  fmul.d    f1, f4, f20
  fdiv.d    f0, f21, f3
  fsqrt.d   f3, f5
  fmadd.d   f4, f5, f10, f3
  fcvt.s.w  f18, a0
  fcvt.d.w  f2, a0
  fcvt.d.s  f2, f2
  fcvt.s.d  f1, f9
  fcvt.w.s  t6, f18, rtz
  fcvt.l.d  s8, f0, rtz
  feq.d     s4, f6, f0
  flt.s     a5, f20, f6
  fclass.d  a3, f6
  csrr  s8, mscratch
  csrw  mscratch, t5
  csrrw a3, mscratch, s6
  csrrs a2, mstatus, x0
  csrrc s4, mscratch, x0
  csrrwi s3, mscratch, 22
  fence
  fence.i
  c.addi a0, 12
  c.mv   a1, a2
  c.li   a3, -20
  c.add  a4, a5
  la    s0, tdat
  li    a2, 978
  li    a3, -1313
  add   t3, t0, t1
  sub   t1, s11, t1
  xor   a4, s2, s6
  or    s5, t2, s11
  and   a6, a0, a2
  addi  a2, a1, -1117
  andi  s8, s9, 876
  ori   s3, t4, 1866
  xori  t5, s6, -321
  slli  s11, s10, 10
  srli  a0, a1, 3
  srai  s8, s8, 17
  sllw  t5, a1, a5
  sraw  s6, t1, t6
  slt   t0, s9, a4
  sltu  t0, t1, t3
  sltiu a0, t2, 1565
  lui   a3, 0x53035
  auipc t6, 0x53
  addw  s7, s7, s2
  subw  s11, s6, s11
  addiw s11, s11, 622
  mul   t0, a7, a0
  mulh  t5, s4, a0
  mulhu t2, a7, s4
  mulw  t3, t2, a0
  div   s11, s11, s11
  divu  a7, t2, a2
  rem   s4, a5, a3
  remu  a1, t2, t5
  divw  s7, t2, t3
  remw  a2, s4, a3
  sd    a5, 8(s0)
  ld    a6, 8(s0)
  sw    s3, 8(s0)
  lw    a1, 8(s0)
  lwu   s7, 8(s0)
  lh    s8, 8(s0)
  lbu   s4, 8(s0)
  lr.d      a7, (s0)
  sc.d      t5, s3, (s0)
  amoadd.w  s9, s11, (s0)
  amoswap.d s7, a2, (s0)
  amoand.w  s7, a6, (s0)
  amoor.d   a6, t1, (s0)
  amoxor.w  s11, a0, (s0)
  amomax.d  s9, t0, (s0)
  amominu.w t5, s9, (s0)
  fmv.w.x   f3, a5
  fmv.d.x   f20, s6
  fadd.s    f5, f9, f18
  fsub.s    f7, f10, f8
  fmul.s    f0, f2, f6
  fdiv.s    f8, f4, f2
  fmin.s    f2, f18, f9
  fmax.s    f2, f2, f2
  fsgnj.s   f0, f2, f11
  fadd.d    f2, f4, f3
  fsub.d    f21, f8, f20
  fmul.d    f5, f3, f8
  fdiv.d    f9, f18, f19
  fsqrt.d   f5, f20
  fmadd.d   f3, f20, f10, f10
  fcvt.s.w  f6, a0
  fcvt.d.w  f18, a7
  fcvt.d.s  f3, f6
  fcvt.s.d  f11, f10
  fcvt.w.s  t0, f0, rtz
  fcvt.l.d  a6, f2, rtz
  feq.d     a2, f5, f9
  flt.s     s8, f8, f5
  fclass.d  a1, f4
  csrr  s2, mscratch
  csrw  mscratch, a3
  csrrw a1, mscratch, t4
  csrrs t0, mstatus, x0
  csrrc s7, mscratch, x0
  csrrwi a2, mscratch, 14
  fence
  fence.i
  c.addi a0, -29
  c.mv   a1, a2
  c.li   a3, -24
  c.add  a4, a5
  la    s0, tdat
  li    t1, 60
  li    t0, -983
  add   t3, t3, s4
  sub   s10, a5, a4
  xor   t3, s10, t0
  or    t3, t3, a5
  and   s3, s8, a3
  addi  a7, a5, 289
  andi  s11, t4, 123
  ori   a7, s7, 794
  xori  a7, s11, 1099
  slli  t3, a7, 60
  srli  t0, a0, 6
  srai  a3, s8, 48
  sllw  t3, a7, t1
  sraw  a0, s2, t6
  slt   s2, a3, a3
  sltu  t6, s4, s9
  sltiu s2, a2, 1657
  lui   a3, 0xf84cf
  auipc s2, 0x58
  addw  a7, t5, t6
  subw  a1, a3, a6
  addiw a2, t0, 910
  mul   t6, s2, a7
  mulh  t2, s4, a1
  mulhu a2, s3, a7
  mulw  s2, s10, a6
  div   s5, s6, t4
  divu  a3, a1, t5
  rem   s3, a1, a7
  remu  s3, a5, s3
  divw  t2, a6, a3
  remw  a2, s2, t0
  sd    t6, 8(s0)
  ld    s10, 8(s0)
  sw    a4, 8(s0)
  lw    a2, 8(s0)
  lwu   t6, 8(s0)
  lh    s7, 8(s0)
  lbu   t2, 8(s0)
  lr.d      a3, (s0)
  sc.d      a6, t0, (s0)
  amoadd.w  s8, t3, (s0)
  amoswap.d a2, a3, (s0)
  amoand.w  s9, s2, (s0)
  amoor.d   s2, t0, (s0)
  amoxor.w  a5, s3, (s0)
  amomax.d  a0, s7, (s0)
  amominu.w s7, s3, (s0)
  fmv.w.x   f0, s7
  fmv.d.x   f21, s8
  fadd.s    f1, f7, f21
  fsub.s    f4, f11, f4
  fmul.s    f18, f10, f1
  fdiv.s    f11, f5, f7
  fmin.s    f0, f20, f2
  fmax.s    f20, f6, f1
  fsgnj.s   f9, f20, f4
  fadd.d    f6, f9, f10
  fsub.d    f6, f2, f18
  fmul.d    f0, f5, f0
  fdiv.d    f11, f21, f7
  fsqrt.d   f2, f21
  fmadd.d   f11, f21, f6, f6
  fcvt.s.w  f6, s2
  fcvt.d.w  f6, t1
  fcvt.d.s  f20, f8
  fcvt.s.d  f7, f10
  fcvt.w.s  a1, f19, rtz
  fcvt.l.d  a5, f10, rtz
  feq.d     t5, f0, f11
  flt.s     s11, f5, f7
  fclass.d  a0, f4
  csrr  s6, mscratch
  csrw  mscratch, t0
  csrrw s6, mscratch, t6
  csrrs s2, mstatus, x0
  csrrc s4, mscratch, x0
  csrrwi s4, mscratch, 24
  fence
  fence.i
  c.addi a0, -24
  c.mv   a1, a2
  c.li   a3, 1
  c.add  a4, a5
  la    s0, tdat
  li    a7, 493
  li    t0, 1360
  add   a4, a4, s3
  sub   a4, s5, t2
  xor   s11, a1, a5
  or    a7, t5, a5
  and   a2, s5, t6
  addi  t5, t0, -222
  andi  a4, s10, 1101
  ori   s9, t5, 388
  xori  a1, t5, -1196
  slli  a0, t1, 9
  srli  t1, s11, 22
  srai  a4, t5, 9
  sllw  s3, t4, t1
  sraw  s8, s7, s9
  slt   s3, s5, a3
  sltu  t6, a7, s2
  sltiu s8, s3, 1513
  lui   s3, 0x62a79
  auipc t5, 0x26
  addw  s5, t0, s5
  subw  t4, a5, s9
  addiw t0, s7, -111
  mul   t5, t3, s3
  mulh  t0, s8, a2
  mulhu s9, s10, a1
  mulw  s6, s8, s2
  div   a6, s8, t2
  divu  a0, t6, s2
  rem   t2, s8, s11
  remu  s9, s7, a5
  divw  t6, t2, a7
  remw  t5, a2, a6
  sd    t4, 8(s0)
  ld    a4, 8(s0)
  sw    s10, 8(s0)
  lw    a7, 8(s0)
  lwu   t3, 8(s0)
  lh    s10, 8(s0)
  lbu   s9, 8(s0)
  lr.d      t3, (s0)
  sc.d      t4, s8, (s0)
  amoadd.w  s2, s11, (s0)
  amoswap.d t3, a4, (s0)
  amoand.w  a7, s7, (s0)
  amoor.d   a6, t0, (s0)
  amoxor.w  a3, a1, (s0)
  amomax.d  s3, a4, (s0)
  amominu.w t4, s6, (s0)
  fmv.w.x   f19, s7
  fmv.d.x   f2, s2
  fadd.s    f20, f10, f11
  fsub.s    f11, f19, f10
  fmul.s    f5, f21, f0
  fdiv.s    f5, f18, f11
  fmin.s    f3, f9, f6
  fmax.s    f7, f6, f11
  fsgnj.s   f9, f8, f5
  fadd.d    f2, f20, f1
  fsub.d    f6, f0, f19
  fmul.d    f8, f0, f2
  fdiv.d    f0, f5, f2
  fsqrt.d   f7, f0
  fmadd.d   f5, f7, f5, f8
  fcvt.s.w  f7, a0
  fcvt.d.w  f0, a3
  fcvt.d.s  f2, f2
  fcvt.s.d  f6, f4
  fcvt.w.s  s2, f10, rtz
  fcvt.l.d  a2, f11, rtz
  feq.d     t2, f9, f19
  flt.s     s10, f21, f8
  fclass.d  t2, f1
  csrr  a2, mscratch
  csrw  mscratch, t0
  csrrw a5, mscratch, t0
  csrrs a2, mstatus, x0
  csrrc a2, mscratch, x0
  csrrwi s6, mscratch, 3
  fence
  fence.i
  c.addi a0, 13
  c.mv   a1, a2
  c.li   a3, 1
  c.add  a4, a5
  la    s0, tdat
  li    a4, 1346
  li    t2, 1980
  add   a4, a6, s6
  sub   s4, a1, s11
  xor   a4, s9, t5
  or    t4, t1, s9
  and   a0, a7, t1
  addi  a2, s2, -1277
  andi  a2, s5, 623
  ori   a6, s9, 1852
  xori  t6, a7, -1284
  slli  s8, s2, 55
  srli  a4, a0, 24
  srai  s5, a6, 13
  sllw  s7, t6, a7
  sraw  s11, t0, s3
  slt   t5, s3, s4
  sltu  t2, s10, a1
  sltiu a0, a7, 96
  lui   a7, 0x94e48
  auipc a6, 0xe8
  addw  s6, a6, a5
  subw  a6, t1, s8
  addiw t0, a4, -760
  mul   a1, a7, t6
  mulh  s11, t2, s9
  mulhu s9, s8, s9
  mulw  t1, t4, t2
  div   s3, s10, t1
  divu  a1, s11, s6
  rem   t2, a2, t1
  remu  a1, t2, s3
  divw  a7, a4, a5
  remw  s7, a7, t6
  sd    a6, 0(s0)
  ld    t2, 0(s0)
  sw    a3, 0(s0)
  lw    s3, 0(s0)
  lwu   s9, 0(s0)
  lh    s3, 0(s0)
  lbu   t3, 0(s0)
  lr.d      s8, (s0)
  sc.d      s9, s2, (s0)
  amoadd.w  s3, t1, (s0)
  amoswap.d s11, a2, (s0)
  amoand.w  a3, s8, (s0)
  amoor.d   a2, s6, (s0)
  amoxor.w  t4, t5, (s0)
  amomax.d  s2, a2, (s0)
  amominu.w t0, s8, (s0)
  fmv.w.x   f7, t6
  fmv.d.x   f10, s2
  fadd.s    f19, f11, f20
  fsub.s    f10, f1, f3
  fmul.s    f20, f2, f8
  fdiv.s    f4, f1, f4
  fmin.s    f2, f20, f1
  fmax.s    f9, f2, f10
  fsgnj.s   f19, f2, f4
  fadd.d    f18, f3, f1
  fsub.d    f1, f9, f4
  fmul.d    f3, f2, f10
  fdiv.d    f5, f19, f5
  fsqrt.d   f7, f5
  fmadd.d   f18, f19, f10, f11
  fcvt.s.w  f3, a7
  fcvt.d.w  f20, s4
  fcvt.d.s  f3, f2
  fcvt.s.d  f8, f18
  fcvt.w.s  s2, f7, rtz
  fcvt.l.d  a5, f9, rtz
  feq.d     s11, f20, f18
  flt.s     s9, f6, f4
  fclass.d  s10, f6
  csrr  s2, mscratch
  csrw  mscratch, a3
  csrrw s3, mscratch, t2
  csrrs a7, mstatus, x0
  csrrc a0, mscratch, x0
  csrrwi t0, mscratch, 30
  fence
  fence.i
  c.addi a0, 21
  c.mv   a1, a2
  c.li   a3, -13
  c.add  a4, a5
  la    s0, tdat
  li    s6, 1315
  li    t2, -633
  add   s10, s10, t2
  sub   s8, a6, s8
  xor   t5, a1, a0
  or    a7, s5, t3
  and   a0, s11, t0
  addi  s6, a1, -1741
  andi  t2, a7, 1301
  ori   t0, t3, 1235
  xori  t3, s6, 842
  slli  t4, t4, 36
  srli  a3, a7, 1
  srai  s8, t5, 31
  sllw  s7, a1, s10
  sraw  a5, s11, a4
  slt   t1, t0, s3
  sltu  s7, t2, t4
  sltiu t5, t1, 547
  lui   a7, 0xac3dc
  auipc s8, 0x1c
  addw  t3, a5, t2
  subw  s11, a4, s10
  addiw s8, s4, -1655
  mul   s4, t6, t2
  mulh  s2, t6, s10
  mulhu a6, s10, t2
  mulw  t3, a7, a2
  div   a3, a3, t2
  divu  a0, a0, a7
  rem   t3, a2, s6
  remu  a2, s2, s10
  divw  a1, a6, t6
  remw  s7, t4, t1
  sd    t4, 8(s0)
  ld    t1, 8(s0)
  sw    s7, 8(s0)
  lw    s7, 8(s0)
  lwu   s5, 8(s0)
  lh    s2, 8(s0)
  lbu   t2, 8(s0)
  lr.d      t3, (s0)
  sc.d      s10, t1, (s0)
  amoadd.w  s10, t3, (s0)
  amoswap.d s5, a3, (s0)
  amoand.w  s6, s5, (s0)
  amoor.d   s3, a2, (s0)
  amoxor.w  s2, t6, (s0)
  amomax.d  t5, a0, (s0)
  amominu.w s8, a7, (s0)
  fmv.w.x   f6, a6
  fmv.d.x   f11, s4
  fadd.s    f11, f3, f1
  fsub.s    f20, f19, f0
  fmul.s    f4, f19, f2
  fdiv.s    f5, f9, f11
  fmin.s    f3, f7, f1
  fmax.s    f7, f11, f19
  fsgnj.s   f5, f18, f2
  fadd.d    f19, f6, f10
  fsub.d    f9, f10, f5
  fmul.d    f21, f0, f4
  fdiv.d    f18, f5, f5
  fsqrt.d   f0, f3
  fmadd.d   f11, f1, f1, f6
  fcvt.s.w  f0, s3
  fcvt.d.w  f6, s3
  fcvt.d.s  f20, f4
  fcvt.s.d  f6, f4
  fcvt.w.s  a4, f20, rtz
  fcvt.l.d  a0, f19, rtz
  feq.d     a4, f8, f8
  flt.s     a7, f19, f6
  fclass.d  s3, f20
  csrr  a1, mscratch
  csrw  mscratch, a2
  csrrw s11, mscratch, a0
  csrrs t2, mstatus, x0
  csrrc s9, mscratch, x0
  csrrwi a5, mscratch, 15
  fence
  fence.i
  c.addi a0, 3
  c.mv   a1, a2
  c.li   a3, 0
  c.add  a4, a5
  la    s0, tdat
  li    a7, 718
  li    a7, -616
  add   a6, s5, s10
  sub   s10, a3, s10
  xor   t6, s9, s6
  or    s9, a6, t0
  and   t5, s3, a1
  addi  s2, a0, 1577
  andi  a2, a2, 1700
  ori   a4, t2, 1884
  xori  a5, s7, -275
  slli  s4, t2, 52
  srli  s11, s10, 31
  srai  a6, a7, 20
  sllw  t5, t3, s6
  sraw  t5, t1, t1
  slt   a5, s7, a6
  sltu  t6, a2, a4
  sltiu a6, s5, 1293
  lui   a3, 0x979ed
  auipc a5, 0xd5
  addw  s2, t6, s11
  subw  s5, s2, s2
  addiw t0, s2, -427
  mul   s2, s5, s3
  mulh  a4, s3, a5
  mulhu a7, a2, t3
  mulw  s9, t4, a2
  div   t4, a3, t3
  divu  s10, t5, t2
  rem   t3, s9, s9
  remu  t4, s7, a4
  divw  t6, s5, s4
  remw  a0, a1, s10
  sd    t3, 8(s0)
  ld    s3, 8(s0)
  sw    s7, 8(s0)
  lw    s9, 8(s0)
  lwu   s8, 8(s0)
  lh    t4, 8(s0)
  lbu   t5, 8(s0)
  lr.d      s6, (s0)
  sc.d      t1, a5, (s0)
  amoadd.w  s4, s7, (s0)
  amoswap.d s8, s10, (s0)
  amoand.w  s10, a0, (s0)
  amoor.d   s8, a4, (s0)
  amoxor.w  s7, t3, (s0)
  amomax.d  s8, t4, (s0)
  amominu.w t2, s5, (s0)
  fmv.w.x   f7, t2
  fmv.d.x   f5, s4
  fadd.s    f18, f5, f9
  fsub.s    f3, f4, f0
  fmul.s    f10, f21, f20
  fdiv.s    f21, f8, f11
  fmin.s    f0, f11, f10
  fmax.s    f21, f3, f10
  fsgnj.s   f8, f18, f8
  fadd.d    f0, f11, f18
  fsub.d    f2, f11, f0
  fmul.d    f8, f10, f9
  fdiv.d    f21, f5, f18
  fsqrt.d   f0, f2
  fmadd.d   f6, f6, f1, f4
  fcvt.s.w  f4, t1
  fcvt.d.w  f7, a7
  fcvt.d.s  f1, f19
  fcvt.s.d  f8, f3
  fcvt.w.s  s10, f3, rtz
  fcvt.l.d  a4, f2, rtz
  feq.d     s11, f4, f19
  flt.s     a6, f1, f21
  fclass.d  s10, f18
  csrr  t5, mscratch
  csrw  mscratch, a2
  csrrw s7, mscratch, s9
  csrrs s11, mstatus, x0
  csrrc a5, mscratch, x0
  csrrwi s6, mscratch, 8
  fence
  fence.i
  c.addi a0, 31
  c.mv   a1, a2
  c.li   a3, 6
  c.add  a4, a5
  la    s0, tdat
  li    a1, 344
  li    a1, -734
  add   a3, a1, a0
  sub   t2, s9, s9
  xor   s7, a5, a3
  or    t6, a5, a3
  and   a5, a6, s6
  addi  t3, s8, -426
  andi  t3, a3, 1779
  ori   t2, t4, 1675
  xori  t0, t6, -143
  slli  s2, a0, 22
  srli  a5, a5, 19
  srai  t3, s7, 7
  sllw  t6, s3, s6
  sraw  s8, a1, t6
  slt   s4, s5, a0
  sltu  t6, t6, a0
  sltiu s6, s7, 1380
  lui   s8, 0xcab77
  auipc s3, 0x4b
  addw  a1, s4, s3
  subw  a4, s2, a5
  addiw s9, t4, -765
  mul   s9, s7, a0
  mulh  s3, s9, s3
  mulhu a0, t3, t5
  mulw  s9, s8, a6
  div   s5, t4, s10
  divu  s8, t5, t2
  rem   s2, s5, s6
  remu  a5, t2, t4
  divw  a6, t0, a6
  remw  s8, s6, a0
  sd    t2, 8(s0)
  ld    s7, 8(s0)
  sw    s11, 8(s0)
  lw    s4, 8(s0)
  lwu   t0, 8(s0)
  lh    s6, 8(s0)
  lbu   t2, 8(s0)
  lr.d      a5, (s0)
  sc.d      s5, s4, (s0)
  amoadd.w  s2, t0, (s0)
  amoswap.d a2, s2, (s0)
  amoand.w  s11, a1, (s0)
  amoor.d   a4, t5, (s0)
  amoxor.w  s11, a2, (s0)
  amomax.d  s5, t5, (s0)
  amominu.w t1, s5, (s0)
  fmv.w.x   f19, s9
  fmv.d.x   f0, a2
  fadd.s    f4, f3, f18
  fsub.s    f8, f3, f19
  fmul.s    f20, f8, f2
  fdiv.s    f20, f11, f3
  fmin.s    f1, f21, f9
  fmax.s    f6, f2, f8
  fsgnj.s   f8, f11, f6
  fadd.d    f19, f8, f20
  fsub.d    f10, f18, f21
  fmul.d    f3, f1, f4
  fdiv.d    f9, f1, f4
  fsqrt.d   f11, f18
  fmadd.d   f7, f8, f1, f20
  fcvt.s.w  f21, a0
  fcvt.d.w  f2, a2
  fcvt.d.s  f1, f6
  fcvt.s.d  f20, f21
  fcvt.w.s  s9, f2, rtz
  fcvt.l.d  s10, f9, rtz
  feq.d     t2, f5, f4
  flt.s     s7, f3, f5
  fclass.d  s3, f8
  csrr  t2, mscratch
  csrw  mscratch, a5
  csrrw a5, mscratch, a7
  csrrs s2, mstatus, x0
  csrrc a7, mscratch, x0
  csrrwi t0, mscratch, 16
  fence
  fence.i
  c.addi a0, 27
  c.mv   a1, a2
  c.li   a3, -25
  c.add  a4, a5
  la    s0, tdat
  li    a7, 659
  li    s6, 425
  add   s11, a2, s7
  sub   t4, s4, s6
  xor   t6, a6, a3
  or    t5, s2, t2
  and   s8, a1, s10
  addi  t4, a7, 1747
  andi  s2, s3, 802
  ori   t0, a5, 490
  xori  s4, t2, 1270
  slli  a5, a4, 60
  srli  s2, s2, 34
  srai  s5, t3, 12
  sllw  s4, s2, s11
  sraw  s5, t2, a5
  slt   t2, a3, t3
  sltu  t4, a3, a4
  sltiu s2, s5, 1157
  lui   t2, 0xc5238
  auipc s5, 0x5b
  addw  t2, s11, a0
  subw  t2, a6, t6
  addiw a3, t1, 1681
  mul   s7, t3, s5
  mulh  s11, s8, s9
  mulhu t3, s2, s7
  mulw  a6, s4, s8
  div   s8, a5, t3
  divu  a6, s6, a6
  rem   t1, t1, s9
  remu  a7, s9, s5
  divw  a2, t5, a0
  remw  a6, s4, a2
  sd    s3, 0(s0)
  ld    s3, 0(s0)
  sw    s8, 0(s0)
  lw    a3, 0(s0)
  lwu   s11, 0(s0)
  lh    a7, 0(s0)
  lbu   s8, 0(s0)
  lr.d      a3, (s0)
  sc.d      s8, t1, (s0)
  amoadd.w  a3, a6, (s0)
  amoswap.d s8, s5, (s0)
  amoand.w  s9, s8, (s0)
  amoor.d   a0, t0, (s0)
  amoxor.w  a1, t5, (s0)
  amomax.d  a2, t0, (s0)
  amominu.w t2, s5, (s0)
  fmv.w.x   f0, s3
  fmv.d.x   f19, t3
  fadd.s    f5, f0, f6
  fsub.s    f5, f7, f3
  fmul.s    f6, f3, f8
  fdiv.s    f10, f18, f18
  fmin.s    f0, f2, f19
  fmax.s    f3, f8, f4
  fsgnj.s   f19, f11, f0
  fadd.d    f0, f1, f19
  fsub.d    f18, f5, f11
  fmul.d    f11, f4, f11
  fdiv.d    f11, f8, f4
  fsqrt.d   f5, f5
  fmadd.d   f4, f4, f3, f3
  fcvt.s.w  f5, t1
  fcvt.d.w  f3, s4
  fcvt.d.s  f21, f19
  fcvt.s.d  f20, f0
  fcvt.w.s  s10, f1, rtz
  fcvt.l.d  a7, f19, rtz
  feq.d     a4, f7, f0
  flt.s     a7, f11, f7
  fclass.d  s11, f2
  csrr  s2, mscratch
  csrw  mscratch, s5
  csrrw t4, mscratch, t5
  csrrs t2, mstatus, x0
  csrrc s2, mscratch, x0
  csrrwi s11, mscratch, 2
  fence
  fence.i
  c.addi a0, -18
  c.mv   a1, a2
  c.li   a3, -26
  c.add  a4, a5
  la    s0, tdat
  li    t6, 978
  li    a1, -566
  add   a6, a2, t0
  sub   a2, s11, t2
  xor   s11, a2, t2
  or    s7, a2, t5
  and   s11, t1, a2
  addi  s3, s11, 1613
  andi  a7, s8, 633
  ori   a5, t1, 1769
  xori  t2, a3, 1465
  slli  a5, s5, 5
  srli  s2, a3, 20
  srai  s7, a1, 36
  sllw  s3, a1, t2
  sraw  a1, a3, s3
  slt   s10, s10, s9
  sltu  a6, s3, t4
  sltiu a5, a7, 858
  lui   t5, 0x84965
  auipc s8, 0xe8
  addw  a2, a7, t6
  subw  a0, s9, a7
  addiw s8, t4, -1221
  mul   a6, t5, a2
  mulh  s4, s8, t1
  mulhu t3, t2, a7
  mulw  t0, s8, s8
  div   t2, a7, a1
  divu  t4, t5, s9
  rem   t5, a2, a4
  remu  a2, a2, a1
  divw  s4, a6, t0
  remw  s7, a3, t4
  sd    t0, 8(s0)
  ld    a6, 8(s0)
  sw    a3, 8(s0)
  lw    s8, 8(s0)
  lwu   s2, 8(s0)
  lh    s5, 8(s0)
  lbu   t6, 8(s0)
  lr.d      t1, (s0)
  sc.d      a2, s5, (s0)
  amoadd.w  s2, a4, (s0)
  amoswap.d a4, a2, (s0)
  amoand.w  s2, t5, (s0)
  amoor.d   a4, s8, (s0)
  amoxor.w  s8, a0, (s0)
  amomax.d  s9, a5, (s0)
  amominu.w s5, s10, (s0)
  fmv.w.x   f1, s9
  fmv.d.x   f2, a3
  fadd.s    f10, f7, f1
  fsub.s    f7, f8, f11
  fmul.s    f5, f11, f19
  fdiv.s    f8, f5, f20
  fmin.s    f20, f5, f0
  fmax.s    f4, f2, f19
  fsgnj.s   f7, f4, f8
  fadd.d    f3, f3, f18
  fsub.d    f2, f7, f0
  fmul.d    f4, f1, f11
  fdiv.d    f2, f9, f10
  fsqrt.d   f20, f6
  fmadd.d   f9, f6, f21, f10
  fcvt.s.w  f4, t3
  fcvt.d.w  f11, s3
  fcvt.d.s  f7, f8
  fcvt.s.d  f4, f0
  fcvt.w.s  t5, f19, rtz
  fcvt.l.d  s8, f5, rtz
  feq.d     a1, f9, f8
  flt.s     a3, f20, f11
  fclass.d  s3, f21
  csrr  a7, mscratch
  csrw  mscratch, s9
  csrrw s3, mscratch, s4
  csrrs t4, mstatus, x0
  csrrc s4, mscratch, x0
  csrrwi t1, mscratch, 18
  fence
  fence.i
  c.addi a0, -7
  c.mv   a1, a2
  c.li   a3, -28
  c.add  a4, a5
  la    s0, tdat
  li    t0, 1976
  li    t2, -304
  add   s10, t6, t3
  sub   s9, t1, t6
  xor   t3, a2, s11
  or    t3, s10, s7
  and   a6, a7, t5
  addi  s7, s10, 47
  andi  s7, t3, 68
  ori   t0, s4, 249
  xori  t2, t3, 1307
  slli  a1, t5, 39
  srli  a7, t2, 43
  srai  s2, a3, 23
  sllw  s2, a3, t3
  sraw  a6, t0, s2
  slt   a1, s9, a4
  sltu  t2, t5, t6
  sltiu t1, t5, 636
  lui   t2, 0x4ecdc
  auipc s7, 0x5d
  addw  s9, a5, t3
  subw  t0, a1, s8
  addiw a7, t2, -1748
  mul   a5, a1, t5
  mulh  t5, a6, a4
  mulhu s11, t3, s3
  mulw  a3, a3, t0
  div   t6, s3, t4
  divu  s6, t0, a0
  rem   t4, t4, a5
  remu  t4, a0, s10
  divw  t3, a3, s11
  remw  t2, t2, a4
  sd    s6, 0(s0)
  ld    s9, 0(s0)
  sw    a6, 0(s0)
  lw    a6, 0(s0)
  lwu   a0, 0(s0)
  lh    s5, 0(s0)
  lbu   s8, 0(s0)
  lr.d      s5, (s0)
  sc.d      s6, a7, (s0)
  amoadd.w  t1, a3, (s0)
  amoswap.d a6, s9, (s0)
  amoand.w  a7, a7, (s0)
  amoor.d   s2, s5, (s0)
  amoxor.w  s11, s5, (s0)
  amomax.d  t2, a3, (s0)
  amominu.w a1, s5, (s0)
  fmv.w.x   f10, s3
  fmv.d.x   f2, s3
  fadd.s    f20, f3, f7
  fsub.s    f6, f20, f9
  fmul.s    f19, f11, f0
  fdiv.s    f7, f3, f10
  fmin.s    f18, f7, f19
  fmax.s    f7, f10, f7
  fsgnj.s   f18, f1, f9
  fadd.d    f8, f21, f21
  fsub.d    f20, f0, f1
  fmul.d    f18, f20, f7
  fdiv.d    f5, f21, f18
  fsqrt.d   f5, f3
  fmadd.d   f8, f20, f2, f9
  fcvt.s.w  f20, a6
  fcvt.d.w  f0, a2
  fcvt.d.s  f2, f2
  fcvt.s.d  f5, f11
  fcvt.w.s  a0, f19, rtz
  fcvt.l.d  t5, f20, rtz
  feq.d     t1, f11, f11
  flt.s     s9, f5, f3
  fclass.d  s3, f21
  csrr  a3, mscratch
  csrw  mscratch, t3
  csrrw t1, mscratch, s4
  csrrs a6, mstatus, x0
  csrrc a7, mscratch, x0
  csrrwi t4, mscratch, 22
  fence
  fence.i
  c.addi a0, 23
  c.mv   a1, a2
  c.li   a3, 10
  c.add  a4, a5
  la    s0, tdat
  li    s6, 1122
  li    t1, -1357
  add   s6, s9, t3
  sub   a3, t3, s8
  xor   s4, s7, t2
  or    a4, t2, s8
  and   a3, t2, a5
  addi  t5, a0, 908
  andi  a7, t4, 15
  ori   a5, s8, 809
  xori  s8, s4, 1608
  slli  t3, t4, 33
  srli  a7, a5, 58
  srai  a5, t3, 7
  sllw  a0, t4, a7
  sraw  t2, s8, t4
  slt   s8, a1, s2
  sltu  s4, s2, a6
  sltiu s4, a5, 276
  lui   s7, 0x59579
  auipc s9, 0x5f
  addw  t0, s7, s3
  subw  a4, s9, s6
  addiw s11, a5, 524
  mul   t1, s4, s4
  mulh  a4, s9, s2
  mulhu s10, s6, a3
  mulw  a4, t0, t1
  div   t1, s8, a6
  divu  s4, s6, s11
  rem   s5, a7, s8
  remu  t6, s10, t2
  divw  s5, a4, s11
  remw  t3, s2, t6
  sd    a1, 0(s0)
  ld    s7, 0(s0)
  sw    a3, 0(s0)
  lw    a2, 0(s0)
  lwu   s6, 0(s0)
  lh    s6, 0(s0)
  lbu   a1, 0(s0)
  lr.d      s5, (s0)
  sc.d      s9, s3, (s0)
  amoadd.w  s10, a4, (s0)
  amoswap.d t0, a2, (s0)
  amoand.w  a5, s3, (s0)
  amoor.d   a0, a0, (s0)
  amoxor.w  s6, a7, (s0)
  amomax.d  t6, a2, (s0)
  amominu.w s9, t6, (s0)
  fmv.w.x   f7, a5
  fmv.d.x   f6, t2
  fadd.s    f10, f0, f4
  fsub.s    f10, f11, f2
  fmul.s    f2, f0, f3
  fdiv.s    f1, f5, f9
  fmin.s    f8, f9, f2
  fmax.s    f6, f20, f8
  fsgnj.s   f0, f1, f9
  fadd.d    f7, f9, f2
  fsub.d    f21, f4, f18
  fmul.d    f20, f18, f20
  fdiv.d    f6, f7, f8
  fsqrt.d   f8, f7
  fmadd.d   f4, f9, f18, f1
  fcvt.s.w  f7, a3
  fcvt.d.w  f6, t6
  fcvt.d.s  f11, f20
  fcvt.s.d  f11, f21
  fcvt.w.s  a0, f11, rtz
  fcvt.l.d  t4, f6, rtz
  feq.d     a5, f11, f21
  flt.s     s10, f18, f5
  fclass.d  s3, f4
  csrr  t5, mscratch
  csrw  mscratch, a5
  csrrw s2, mscratch, s3
  csrrs a6, mstatus, x0
  csrrc a6, mscratch, x0
  csrrwi s7, mscratch, 15
  fence
  fence.i
  c.addi a0, -10
  c.mv   a1, a2
  c.li   a3, -20
  c.add  a4, a5
  la    s0, tdat
  li    t0, 1130
  li    t3, -1056
  add   s2, t1, t4
  sub   s5, s5, a6
  xor   t2, t5, a0
  or    t1, t0, a4
  and   s4, s4, s6
  addi  s5, s7, -1021
  andi  s9, s11, 696
  ori   t1, s8, 391
  xori  s8, t5, 1778
  slli  t5, s8, 55
  srli  a6, a3, 19
  srai  t5, a5, 19
  sllw  t2, a7, s7
  sraw  t5, t4, t0
  slt   a4, a3, a5
  sltu  s10, s5, a6
  sltiu a5, s2, 791
  lui   t6, 0xf8e7a
  auipc a3, 0x8
  addw  a6, t6, a1
  subw  s11, s7, s5
  addiw a3, s4, 1518
  mul   a6, s11, t1
  mulh  s7, s10, s6
  mulhu a7, s5, a5
  mulw  s7, t3, t3
  div   a3, s2, a2
  divu  s7, a5, s9
  rem   t1, a4, t0
  remu  s4, s10, a3
  divw  a1, s5, a1
  remw  a6, a7, a6
  sd    t0, 0(s0)
  ld    t0, 0(s0)
  sw    a2, 0(s0)
  lw    t0, 0(s0)
  lwu   s2, 0(s0)
  lh    a5, 0(s0)
  lbu   t0, 0(s0)
  lr.d      a0, (s0)
  sc.d      t1, t6, (s0)
  amoadd.w  a7, t3, (s0)
  amoswap.d a7, s10, (s0)
  amoand.w  t5, a3, (s0)
  amoor.d   s11, a7, (s0)
  amoxor.w  a0, a3, (s0)
  amomax.d  t2, s10, (s0)
  amominu.w a3, t6, (s0)
  fmv.w.x   f21, s11
  fmv.d.x   f0, a7
  fadd.s    f6, f11, f1
  fsub.s    f10, f18, f19
  fmul.s    f18, f7, f9
  fdiv.s    f19, f2, f20
  fmin.s    f19, f21, f8
  fmax.s    f5, f19, f19
  fsgnj.s   f6, f1, f6
  fadd.d    f20, f7, f3
  fsub.d    f2, f11, f19
  fmul.d    f0, f0, f8
  fdiv.d    f21, f5, f6
  fsqrt.d   f21, f4
  fmadd.d   f9, f19, f6, f4
  fcvt.s.w  f18, s8
  fcvt.d.w  f0, s8
  fcvt.d.s  f9, f0
  fcvt.s.d  f18, f20
  fcvt.w.s  s10, f10, rtz
  fcvt.l.d  s3, f7, rtz
  feq.d     t2, f2, f4
  flt.s     a1, f2, f9
  fclass.d  a1, f9
  csrr  t1, mscratch
  csrw  mscratch, s4
  csrrw s9, mscratch, a5
  csrrs a3, mstatus, x0
  csrrc a2, mscratch, x0
  csrrwi s10, mscratch, 4
  fence
  fence.i
  c.addi a0, 28
  c.mv   a1, a2
  c.li   a3, 6
  c.add  a4, a5
  la    s0, tdat
  li    a0, 1510
  li    s9, -577
  add   s6, t4, s7
  sub   s3, s10, t5
  xor   a3, a3, s3
  or    t6, t1, s2
  and   t6, t4, a3
  addi  t5, a7, 1065
  andi  a6, t2, 1967
  ori   s7, s9, 1551
  xori  t4, s3, 235
  slli  a3, s5, 5
  srli  s7, t6, 33
  srai  a6, a4, 56
  sllw  t4, s11, s6
  sraw  t0, t3, a4
  slt   s6, s3, a5
  sltu  t5, a4, t0
  sltiu a7, a3, 68
  lui   t5, 0x29d8f
  auipc a1, 0xe3
  addw  s8, t1, s5
  subw  t6, s9, s11
  addiw a2, a3, -1154
  mul   t4, t1, s3
  mulh  s9, a0, t4
  mulhu t3, a4, s2
  mulw  a2, a0, a0
  div   a4, s3, a7
  divu  s7, a2, a2
  rem   s4, a6, s6
  remu  s3, a2, a4
  divw  t1, t5, t6
  remw  t0, s5, a7
  sd    a1, 8(s0)
  ld    s5, 8(s0)
  sw    s10, 8(s0)
  lw    a3, 8(s0)
  lwu   s4, 8(s0)
  lh    s8, 8(s0)
  lbu   t5, 8(s0)
  lr.d      t1, (s0)
  sc.d      s6, a1, (s0)
  amoadd.w  a3, a3, (s0)
  amoswap.d t5, a2, (s0)
  amoand.w  s5, s9, (s0)
  amoor.d   a6, s5, (s0)
  amoxor.w  s10, t0, (s0)
  amomax.d  s8, s2, (s0)
  amominu.w t1, a5, (s0)
  fmv.w.x   f19, a0
  fmv.d.x   f9, t6
  fadd.s    f10, f9, f8
  fsub.s    f2, f3, f21
  fmul.s    f10, f7, f11
  fdiv.s    f3, f10, f9
  fmin.s    f9, f11, f7
  fmax.s    f19, f8, f7
  fsgnj.s   f19, f20, f8
  fadd.d    f6, f4, f4
  fsub.d    f0, f2, f8
  fmul.d    f5, f11, f8
  fdiv.d    f6, f18, f20
  fsqrt.d   f5, f3
  fmadd.d   f9, f3, f5, f21
  fcvt.s.w  f19, a1
  fcvt.d.w  f6, t4
  fcvt.d.s  f18, f19
  fcvt.s.d  f6, f11
  fcvt.w.s  s8, f9, rtz
  fcvt.l.d  t4, f18, rtz
  feq.d     s3, f18, f6
  flt.s     t4, f4, f10
  fclass.d  s4, f20
  csrr  a1, mscratch
  csrw  mscratch, a2
  csrrw a7, mscratch, s8
  csrrs s10, mstatus, x0
  csrrc a2, mscratch, x0
  csrrwi s9, mscratch, 11
  fence
  fence.i
  c.addi a0, 22
  c.mv   a1, a2
  c.li   a3, 14
  c.add  a4, a5
  la    s0, tdat
  li    t0, 1880
  li    s2, 675
  add   t1, s6, t3
  sub   a5, s4, s8
  xor   a5, a5, a2
  or    a4, s5, s3
  and   a6, s2, t2
  addi  a3, s3, -781
  andi  a4, s9, 916
  ori   t2, t1, 1239
  xori  a2, t0, -361
  slli  t4, a0, 55
  srli  a7, t4, 59
  srai  a0, t6, 48
  sllw  a0, a3, a7
  sraw  t4, t0, a7
  slt   a0, s5, a3
  sltu  t6, s9, t5
  sltiu s5, s8, 369
  lui   a7, 0xe5959
  auipc t1, 0x6d
  addw  a1, t3, s5
  subw  a1, a3, s11
  addiw s5, a0, 1926
  mul   s4, a4, t4
  mulh  a4, s4, t6
  mulhu t0, t3, t4
  mulw  a5, a6, a2
  div   s9, s5, s11
  divu  s8, s7, t2
  rem   s6, t5, a6
  remu  t1, s5, s8
  divw  t2, a1, s3
  remw  t3, s3, a3
  sd    t2, 0(s0)
  ld    t0, 0(s0)
  sw    s9, 0(s0)
  lw    s10, 0(s0)
  lwu   s7, 0(s0)
  lh    t0, 0(s0)
  lbu   s8, 0(s0)
  lr.d      t0, (s0)
  sc.d      t5, s11, (s0)
  amoadd.w  s3, t6, (s0)
  amoswap.d t6, t6, (s0)
  amoand.w  t6, s11, (s0)
  amoor.d   s5, t2, (s0)
  amoxor.w  a3, s9, (s0)
  amomax.d  s6, a5, (s0)
  amominu.w a3, a7, (s0)
  fmv.w.x   f4, a6
  fmv.d.x   f4, a6
  fadd.s    f21, f10, f6
  fsub.s    f10, f20, f21
  fmul.s    f1, f5, f1
  fdiv.s    f5, f20, f2
  fmin.s    f2, f20, f0
  fmax.s    f0, f21, f19
  fsgnj.s   f2, f19, f7
  fadd.d    f4, f1, f19
  fsub.d    f7, f10, f9
  fmul.d    f21, f19, f18
  fdiv.d    f1, f0, f10
  fsqrt.d   f1, f19
  fmadd.d   f6, f7, f10, f0
  fcvt.s.w  f0, a3
  fcvt.d.w  f1, t5
  fcvt.d.s  f21, f21
  fcvt.s.d  f11, f3
  fcvt.w.s  s5, f18, rtz
  fcvt.l.d  s5, f10, rtz
  feq.d     a0, f18, f8
  flt.s     t5, f2, f21
  fclass.d  s4, f18
  csrr  a3, mscratch
  csrw  mscratch, s2
  csrrw a3, mscratch, t4
  csrrs s8, mstatus, x0
  csrrc a3, mscratch, x0
  csrrwi s2, mscratch, 27
  fence
  fence.i
  c.addi a0, 20
  c.mv   a1, a2
  c.li   a3, -29
  c.add  a4, a5
  la    s0, tdat
  li    a3, 1923
  li    s11, 443
  add   a1, s6, t5
  sub   s8, s6, t0
  xor   s8, a0, s2
  or    a7, t3, s5
  and   t6, t4, a3
  addi  t1, s7, -1618
  andi  t2, t1, 961
  ori   s5, t4, 119
  xori  t5, t6, -850
  slli  s6, s10, 61
  srli  t1, s7, 5
  srai  s9, t1, 1
  sllw  a4, t2, s9
  sraw  s9, a1, s11
  slt   a7, a0, s7
  sltu  a5, t0, a7
  sltiu s10, t4, 927
  lui   s10, 0xa6a6c
  auipc s6, 0x48
  addw  s11, a3, a7
  subw  t6, s3, t4
  addiw t3, a4, 1624
  mul   a5, s4, s11
  mulh  t1, t3, a0
  mulhu s3, t0, s2
  mulw  a1, a3, a5
  div   a0, t4, s4
  divu  s8, s10, a2
  rem   t2, t2, a2
  remu  a4, t4, a4
  divw  t1, s4, s9
  remw  a1, s5, a3
  sd    s3, 8(s0)
  ld    s11, 8(s0)
  sw    a4, 8(s0)
  lw    s2, 8(s0)
  lwu   a3, 8(s0)
  lh    a6, 8(s0)
  lbu   a4, 8(s0)
  lr.d      t1, (s0)
  sc.d      a7, a0, (s0)
  amoadd.w  a1, t0, (s0)
  amoswap.d a3, s11, (s0)
  amoand.w  a5, s11, (s0)
  amoor.d   t6, s7, (s0)
  amoxor.w  s3, t2, (s0)
  amomax.d  a4, a5, (s0)
  amominu.w t2, s9, (s0)
  fmv.w.x   f18, s8
  fmv.d.x   f4, s8
  fadd.s    f20, f8, f8
  fsub.s    f5, f4, f11
  fmul.s    f4, f7, f0
  fdiv.s    f3, f6, f9
  fmin.s    f0, f9, f10
  fmax.s    f3, f9, f20
  fsgnj.s   f5, f20, f3
  fadd.d    f2, f11, f18
  fsub.d    f5, f5, f6
  fmul.d    f2, f0, f2
  fdiv.d    f18, f2, f4
  fsqrt.d   f7, f20
  fmadd.d   f1, f19, f20, f3
  fcvt.s.w  f0, t4
  fcvt.d.w  f10, a6
  fcvt.d.s  f7, f19
  fcvt.s.d  f11, f20
  fcvt.w.s  s4, f11, rtz
  fcvt.l.d  s9, f4, rtz
  feq.d     t4, f2, f9
  flt.s     t5, f9, f9
  fclass.d  s10, f3
  csrr  a6, mscratch
  csrw  mscratch, t5
  csrrw t2, mscratch, t6
  csrrs t1, mstatus, x0
  csrrc a6, mscratch, x0
  csrrwi s7, mscratch, 30
  fence
  fence.i
  c.addi a0, -13
  c.mv   a1, a2
  c.li   a3, 16
  c.add  a4, a5
  la    s0, tdat
  li    s6, 366
  li    a3, 1635
  add   a2, s5, t6
  sub   t5, t0, s2
  xor   t0, t4, a3
  or    a7, s3, s9
  and   s11, s7, a5
  addi  s3, t5, -485
  andi  a0, s2, 1566
  ori   t2, t4, 505
  xori  s4, s7, -1358
  slli  t4, s8, 19
  srli  t1, t5, 16
  srai  t1, t2, 57
  sllw  t6, t1, s11
  sraw  s5, s2, s6
  slt   s6, a4, a5
  sltu  t0, s7, s3
  sltiu a0, t5, 102
  lui   t0, 0xfe746
  auipc t3, 0x6d
  addw  t5, s11, a0
  subw  t6, t5, s10
  addiw a6, s9, -1289
  mul   a2, s7, a7
  mulh  t1, t4, a6
  mulhu t5, t3, s5
  mulw  s8, s8, t6
  div   s7, t5, t3
  divu  t4, a3, a7
  rem   a2, t1, s3
  remu  a3, s5, s10
  divw  t6, s11, t5
  remw  s8, t3, s5
  sd    s7, 8(s0)
  ld    a5, 8(s0)
  sw    a7, 8(s0)
  lw    s7, 8(s0)
  lwu   s5, 8(s0)
  lh    s3, 8(s0)
  lbu   s4, 8(s0)
  lr.d      t5, (s0)
  sc.d      t2, t0, (s0)
  amoadd.w  t4, t2, (s0)
  amoswap.d s2, s10, (s0)
  amoand.w  t6, a1, (s0)
  amoor.d   s2, s5, (s0)
  amoxor.w  s3, a6, (s0)
  amomax.d  s8, a1, (s0)
  amominu.w a5, a1, (s0)
  fmv.w.x   f11, t1
  fmv.d.x   f2, a6
  fadd.s    f7, f21, f9
  fsub.s    f20, f19, f2
  fmul.s    f1, f2, f5
  fdiv.s    f6, f2, f18
  fmin.s    f4, f9, f11
  fmax.s    f2, f4, f10
  fsgnj.s   f19, f7, f3
  fadd.d    f1, f2, f21
  fsub.d    f10, f1, f18
  fmul.d    f8, f11, f20
  fdiv.d    f7, f8, f5
  fsqrt.d   f20, f5
  fmadd.d   f5, f20, f11, f4
  fcvt.s.w  f18, s11
  fcvt.d.w  f2, a6
  fcvt.d.s  f9, f11
  fcvt.s.d  f8, f7
  fcvt.w.s  s7, f3, rtz
  fcvt.l.d  s4, f10, rtz
  feq.d     t4, f7, f10
  flt.s     a0, f0, f20
  fclass.d  s9, f19
  csrr  s7, mscratch
  csrw  mscratch, s10
  csrrw t3, mscratch, t1
  csrrs s2, mstatus, x0
  csrrc a7, mscratch, x0
  csrrwi s5, mscratch, 14
  fence
  fence.i
  c.addi a0, -13
  c.mv   a1, a2
  c.li   a3, -6
  c.add  a4, a5
  la    s0, tdat
  li    s10, 1433
  li    s4, 1865
  add   s5, t3, s9
  sub   t4, a2, a0
  xor   s5, s11, a0
  or    s5, s4, s9
  and   t4, s7, s11
  addi  s7, t2, 2030
  andi  a6, t5, 857
  ori   s2, a1, 1923
  xori  s11, a6, 624
  slli  s2, s11, 0
  srli  s9, t0, 37
  srai  s8, s9, 17
  sllw  s7, s11, t6
  sraw  s10, s6, s8
  slt   a6, t1, s4
  sltu  s2, s6, a5
  sltiu s10, a6, 1272
  lui   t4, 0xaf99b
  auipc a0, 0x31
  addw  t1, t3, s10
  subw  a6, s5, a4
  addiw a5, t5, 290
  mul   a3, t3, s11
  mulh  s5, a4, a3
  mulhu t1, t0, s11
  mulw  s3, t5, t0
  div   s7, t6, t1
  divu  s11, s10, s8
  rem   s9, s4, t2
  remu  t0, s8, s10
  divw  a0, a7, t2
  remw  a7, t2, s11
  sd    t5, 0(s0)
  ld    t0, 0(s0)
  sw    t2, 0(s0)
  lw    a0, 0(s0)
  lwu   s10, 0(s0)
  lh    s7, 0(s0)
  lbu   t1, 0(s0)
  lr.d      t1, (s0)
  sc.d      a0, s3, (s0)
  amoadd.w  t0, a4, (s0)
  amoswap.d a6, t3, (s0)
  amoand.w  a3, s7, (s0)
  amoor.d   t3, t2, (s0)
  amoxor.w  a3, s3, (s0)
  amomax.d  a5, t5, (s0)
  amominu.w t0, a2, (s0)
  fmv.w.x   f20, s2
  fmv.d.x   f9, t3
  fadd.s    f1, f10, f19
  fsub.s    f8, f5, f21
  fmul.s    f21, f10, f4
  fdiv.s    f7, f8, f3
  fmin.s    f7, f7, f7
  fmax.s    f1, f6, f7
  fsgnj.s   f4, f21, f11
  fadd.d    f21, f11, f1
  fsub.d    f6, f7, f19
  fmul.d    f21, f6, f1
  fdiv.d    f10, f1, f2
  fsqrt.d   f8, f11
  fmadd.d   f3, f21, f4, f5
  fcvt.s.w  f3, s3
  fcvt.d.w  f4, t4
  fcvt.d.s  f4, f9
  fcvt.s.d  f6, f10
  fcvt.w.s  s2, f2, rtz
  fcvt.l.d  s2, f10, rtz
  feq.d     t4, f6, f11
  flt.s     a0, f21, f21
  fclass.d  a6, f6
  csrr  s4, mscratch
  csrw  mscratch, s3
  csrrw a3, mscratch, s9
  csrrs t6, mstatus, x0
  csrrc s11, mscratch, x0
  csrrwi s10, mscratch, 14
  fence
  fence.i
  c.addi a0, 7
  c.mv   a1, a2
  c.li   a3, -20
  c.add  a4, a5
  la    s0, tdat
  li    t2, 612
  li    a3, -488
  add   s4, s10, s7
  sub   t2, t3, s8
  xor   a2, t5, a3
  or    s11, s4, a1
  and   t1, s7, t4
  addi  t6, s2, 165
  andi  t2, t1, 103
  ori   a6, s2, 727
  xori  a2, a6, 772
  slli  s8, s5, 54
  srli  a6, s10, 8
  srai  s8, a2, 5
  sllw  s6, a4, a0
  sraw  s3, s2, t6
  slt   s6, s8, t0
  sltu  t0, a0, t5
  sltiu s5, t0, 168
  lui   t0, 0x45fb4
  auipc t6, 0x6a
  addw  s10, a6, a7
  subw  a4, a0, s7
  addiw s8, s8, 160
  mul   a4, s2, t5
  mulh  t3, a0, t5
  mulhu t5, s9, a1
  mulw  s3, a3, s2
  div   s5, s10, a1
  divu  t4, s9, a4
  rem   s2, s11, s2
  remu  a5, a4, s11
  divw  s3, t4, a4
  remw  s3, t5, t0
  sd    a2, 8(s0)
  ld    a7, 8(s0)
  sw    a3, 8(s0)
  lw    t6, 8(s0)
  lwu   s7, 8(s0)
  lh    t3, 8(s0)
  lbu   s5, 8(s0)
  lr.d      a3, (s0)
  sc.d      s3, s4, (s0)
  amoadd.w  s3, a5, (s0)
  amoswap.d s3, a6, (s0)
  amoand.w  a4, a0, (s0)
  amoor.d   a2, t2, (s0)
  amoxor.w  a7, t2, (s0)
  amomax.d  a7, a3, (s0)
  amominu.w a1, t5, (s0)
  fmv.w.x   f5, a1
  fmv.d.x   f2, s2
  fadd.s    f21, f6, f19
  fsub.s    f9, f6, f4
  fmul.s    f20, f21, f5
  fdiv.s    f1, f11, f6
  fmin.s    f10, f3, f6
  fmax.s    f20, f3, f3
  fsgnj.s   f10, f4, f1
  fadd.d    f8, f0, f21
  fsub.d    f19, f1, f4
  fmul.d    f10, f19, f19
  fdiv.d    f2, f19, f7
  fsqrt.d   f11, f18
  fmadd.d   f4, f19, f8, f11
  fcvt.s.w  f9, s6
  fcvt.d.w  f2, t6
  fcvt.d.s  f0, f10
  fcvt.s.d  f3, f18
  fcvt.w.s  s2, f20, rtz
  fcvt.l.d  a5, f3, rtz
  feq.d     t3, f1, f7
  flt.s     s5, f0, f4
  fclass.d  a1, f9
  csrr  t6, mscratch
  csrw  mscratch, s8
  csrrw t2, mscratch, a1
  csrrs a7, mstatus, x0
  csrrc s8, mscratch, x0
  csrrwi a7, mscratch, 28
  fence
  fence.i
  c.addi a0, -16
  c.mv   a1, a2
  c.li   a3, 28
  c.add  a4, a5
  la    s0, tdat
  li    t6, 1587
  li    a3, -135
  add   a5, t3, a3
  sub   t3, s5, s9
  xor   s9, t6, a4
  or    a1, t5, s10
  and   a6, a2, s10
  addi  t6, s8, 1830
  andi  s11, s6, 533
  ori   a3, s9, 32
  xori  t5, t5, -4
  slli  s3, s9, 15
  srli  s5, a7, 56
  srai  t2, a6, 41
  sllw  a2, t6, s6
  sraw  a5, s10, s10
  slt   s3, t2, s10
  sltu  a2, t2, s6
  sltiu a0, a3, 1025
  lui   t5, 0x59b28
  auipc s7, 0xaf
  addw  a1, t6, a3
  subw  t2, s4, a6
  addiw a5, t1, -829
  mul   s3, t0, t0
  mulh  s5, s8, t0
  mulhu t6, s10, a4
  mulw  t1, t0, s9
  div   t6, a6, s6
  divu  a5, s5, a6
  rem   t6, a4, a6
  remu  s10, t2, a5
  divw  t4, s11, t1
  remw  t4, s2, t4
  sd    s11, 0(s0)
  ld    t3, 0(s0)
  sw    a1, 0(s0)
  lw    t5, 0(s0)
  lwu   s7, 0(s0)
  lh    t0, 0(s0)
  lbu   a5, 0(s0)
  lr.d      s3, (s0)
  sc.d      t2, s8, (s0)
  amoadd.w  a6, t4, (s0)
  amoswap.d t0, a4, (s0)
  amoand.w  a4, t3, (s0)
  amoor.d   s9, t6, (s0)
  amoxor.w  s3, s3, (s0)
  amomax.d  s6, a6, (s0)
  amominu.w a4, a5, (s0)
  fmv.w.x   f10, s8
  fmv.d.x   f8, a0
  fadd.s    f19, f5, f2
  fsub.s    f8, f2, f6
  fmul.s    f3, f9, f21
  fdiv.s    f10, f7, f9
  fmin.s    f8, f11, f1
  fmax.s    f3, f1, f0
  fsgnj.s   f5, f8, f2
  fadd.d    f19, f6, f7
  fsub.d    f21, f10, f20
  fmul.d    f1, f9, f8
  fdiv.d    f3, f18, f11
  fsqrt.d   f9, f3
  fmadd.d   f6, f10, f9, f8
  fcvt.s.w  f8, s6
  fcvt.d.w  f2, a7
  fcvt.d.s  f1, f2
  fcvt.s.d  f18, f11
  fcvt.w.s  s5, f5, rtz
  fcvt.l.d  s7, f19, rtz
  feq.d     t2, f8, f7
  flt.s     s7, f5, f9
  fclass.d  a5, f3
  csrr  s4, mscratch
  csrw  mscratch, a5
  csrrw a0, mscratch, a7
  csrrs t3, mstatus, x0
  csrrc s3, mscratch, x0
  csrrwi s3, mscratch, 30
  fence
  fence.i
  c.addi a0, -24
  c.mv   a1, a2
  c.li   a3, 21
  c.add  a4, a5
  la    s0, tdat
  li    s5, 1918
  li    a5, -1705
  add   t3, a2, a0
  sub   s7, t2, a4
  xor   a0, s6, a1
  or    a5, a4, t1
  and   t1, s9, a3
  addi  s3, s8, -755
  andi  t5, s7, 636
  ori   s4, s8, 1209
  xori  t2, a5, -952
  slli  t6, a5, 57
  srli  t4, a5, 16
  srai  t1, t4, 17
  sllw  s4, t2, s4
  sraw  a7, t4, t3
  slt   a2, s3, t2
  sltu  s6, t6, s10
  sltiu a3, s11, 481
  lui   s5, 0x82c15
  auipc s6, 0x31
  addw  a4, t2, t2
  subw  t5, a0, s4
  addiw a3, a3, -573
  mul   s9, t5, t0
  mulh  t2, a1, a4
  mulhu s10, s11, t0
  mulw  s9, a3, t3
  div   t3, t2, s7
  divu  a4, t6, t6
  rem   s7, a1, t2
  remu  t1, t2, s9
  divw  s3, a3, s10
  remw  t2, a1, t3
  sd    s8, 8(s0)
  ld    t3, 8(s0)
  sw    s11, 8(s0)
  lw    s4, 8(s0)
  lwu   s4, 8(s0)
  lh    s5, 8(s0)
  lbu   t3, 8(s0)
  lr.d      t6, (s0)
  sc.d      t0, a4, (s0)
  amoadd.w  a2, t1, (s0)
  amoswap.d s7, a2, (s0)
  amoand.w  s9, a6, (s0)
  amoor.d   s8, t5, (s0)
  amoxor.w  a1, a1, (s0)
  amomax.d  s3, t1, (s0)
  amominu.w s4, s4, (s0)
  fmv.w.x   f5, t5
  fmv.d.x   f2, a4
  fadd.s    f7, f3, f4
  fsub.s    f20, f0, f7
  fmul.s    f1, f7, f0
  fdiv.s    f7, f4, f18
  fmin.s    f4, f5, f18
  fmax.s    f21, f8, f0
  fsgnj.s   f7, f10, f9
  fadd.d    f21, f1, f11
  fsub.d    f19, f4, f20
  fmul.d    f4, f10, f0
  fdiv.d    f21, f4, f0
  fsqrt.d   f10, f21
  fmadd.d   f18, f11, f0, f21
  fcvt.s.w  f1, a3
  fcvt.d.w  f21, a2
  fcvt.d.s  f2, f18
  fcvt.s.d  f10, f7
  fcvt.w.s  t0, f20, rtz
  fcvt.l.d  s7, f2, rtz
  feq.d     t6, f20, f9
  flt.s     s3, f11, f21
  fclass.d  s10, f6
  csrr  t5, mscratch
  csrw  mscratch, a2
  csrrw t5, mscratch, a3
  csrrs s3, mstatus, x0
  csrrc t3, mscratch, x0
  csrrwi s9, mscratch, 8
  fence
  fence.i
  c.addi a0, 3
  c.mv   a1, a2
  c.li   a3, 22
  c.add  a4, a5
  la    s0, tdat
  li    s8, 854
  li    a7, -233
  add   a7, a7, t2
  sub   a0, t4, t0
  xor   t1, a1, a0
  or    s3, t5, t1
  and   s8, s4, t4
  addi  s6, s10, 408
  andi  s11, s10, 695
  ori   s2, t6, 1900
  xori  t1, t4, -1720
  slli  a3, t6, 41
  srli  a5, s7, 3
  srai  s10, s2, 22
  sllw  a7, t0, t3
  sraw  s10, s6, s6
  slt   a3, t2, a0
  sltu  s5, t3, t3
  sltiu t4, s6, 460
  lui   t2, 0xa9182
  auipc s9, 0xa8
  addw  t1, a4, a5
  subw  a0, s5, a2
  addiw t6, s4, 522
  mul   a7, s3, a3
  mulh  a0, t3, a6
  mulhu t5, s4, t0
  mulw  t2, t0, s4
  div   a0, a2, s4
  divu  t0, s9, s4
  rem   s7, t3, a2
  remu  s5, s4, s9
  divw  t4, s5, t0
  remw  s11, a0, t3
  sd    a0, 8(s0)
  ld    t1, 8(s0)
  sw    t0, 8(s0)
  lw    a0, 8(s0)
  lwu   t3, 8(s0)
  lh    a1, 8(s0)
  lbu   s5, 8(s0)
  lr.d      a1, (s0)
  sc.d      a7, s4, (s0)
  amoadd.w  s9, s3, (s0)
  amoswap.d s7, t6, (s0)
  amoand.w  a3, s6, (s0)
  amoor.d   t2, a2, (s0)
  amoxor.w  s4, s9, (s0)
  amomax.d  t0, t3, (s0)
  amominu.w a3, a4, (s0)
  fmv.w.x   f2, s10
  fmv.d.x   f20, t6
  fadd.s    f7, f5, f8
  fsub.s    f10, f21, f8
  fmul.s    f19, f6, f2
  fdiv.s    f0, f1, f4
  fmin.s    f20, f10, f5
  fmax.s    f19, f19, f9
  fsgnj.s   f19, f6, f0
  fadd.d    f2, f4, f4
  fsub.d    f8, f20, f5
  fmul.d    f0, f0, f11
  fdiv.d    f10, f0, f1
  fsqrt.d   f19, f8
  fmadd.d   f7, f7, f3, f20
  fcvt.s.w  f6, a2
  fcvt.d.w  f7, a3
  fcvt.d.s  f7, f7
  fcvt.s.d  f3, f20
  fcvt.w.s  s5, f3, rtz
  fcvt.l.d  t2, f19, rtz
  feq.d     t2, f21, f5
  flt.s     t4, f21, f5
  fclass.d  t2, f18
  csrr  t6, mscratch
  csrw  mscratch, a5
  csrrw s4, mscratch, a3
  csrrs s8, mstatus, x0
  csrrc s7, mscratch, x0
  csrrwi a3, mscratch, 28
  fence
  fence.i
  c.addi a0, 4
  c.mv   a1, a2
  c.li   a3, 31
  c.add  a4, a5
  la    s0, tdat
  li    a3, 300
  li    s10, -79
  add   s8, t3, a4
  sub   a2, s6, s8
  xor   s11, t5, s2
  or    s2, t4, s8
  and   a4, s6, t5
  addi  s2, a5, 1750
  andi  t1, s4, 390
  ori   s6, s4, 654
  xori  t2, t3, -224
  slli  s6, s7, 30
  srli  a7, t6, 50
  srai  s3, s2, 55
  sllw  s4, s7, a4
  sraw  a6, a7, t3
  slt   t2, a2, a2
  sltu  t1, a3, s2
  sltiu a5, s10, 1893
  lui   s7, 0xeff0a
  auipc a0, 0xce
  addw  a2, s5, a1
  subw  s3, t5, a6
  addiw a0, s3, -1013
  mul   a6, s11, t3
  mulh  t5, t2, a6
  mulhu t3, s7, s6
  mulw  a6, s4, t0
  div   a6, s11, a0
  divu  a7, t2, s10
  rem   s3, a1, a1
  remu  s8, t1, a0
  divw  s6, s9, a3
  remw  a0, s11, t4
  sd    s10, 8(s0)
  ld    t6, 8(s0)
  sw    t3, 8(s0)
  lw    a0, 8(s0)
  lwu   s7, 8(s0)
  lh    s10, 8(s0)
  lbu   s6, 8(s0)
  lr.d      s9, (s0)
  sc.d      t6, a4, (s0)
  amoadd.w  s5, a1, (s0)
  amoswap.d a5, s8, (s0)
  amoand.w  s9, s7, (s0)
  amoor.d   t6, t2, (s0)
  amoxor.w  s5, t0, (s0)
  amomax.d  s11, s4, (s0)
  amominu.w t6, a0, (s0)
  fmv.w.x   f9, t2
  fmv.d.x   f11, a0
  fadd.s    f2, f2, f20
  fsub.s    f0, f19, f3
  fmul.s    f21, f2, f3
  fdiv.s    f8, f0, f18
  fmin.s    f2, f7, f18
  fmax.s    f7, f3, f10
  fsgnj.s   f0, f19, f5
  fadd.d    f0, f2, f5
  fsub.d    f7, f7, f5
  fmul.d    f10, f10, f18
  fdiv.d    f1, f11, f19
  fsqrt.d   f4, f21
  fmadd.d   f6, f9, f0, f6
  fcvt.s.w  f10, t5
  fcvt.d.w  f6, s10
  fcvt.d.s  f20, f7
  fcvt.s.d  f9, f1
  fcvt.w.s  t2, f18, rtz
  fcvt.l.d  s5, f7, rtz
  feq.d     t5, f18, f2
  flt.s     a2, f3, f3
  fclass.d  t1, f3
  csrr  s2, mscratch
  csrw  mscratch, a1
  csrrw s9, mscratch, a2
  csrrs s10, mstatus, x0
  csrrc s9, mscratch, x0
  csrrwi s6, mscratch, 2
  fence
  fence.i
  c.addi a0, -19
  c.mv   a1, a2
  c.li   a3, -28
  c.add  a4, a5
  la    s0, tdat
  li    s10, 512
  li    s6, -185
  add   s6, s5, t5
  sub   t4, a7, t0
  xor   t3, a4, s7
  or    t2, s7, t6
  and   a5, t6, t0
  addi  s3, t6, -1564
  andi  t1, a6, 931
  ori   s2, t1, 1500
  xori  s7, a0, -1011
  slli  a2, a3, 28
  srli  s10, s8, 16
  srai  a0, a5, 63
  sllw  a5, a0, s4
  sraw  t0, t3, t4
  slt   a6, s2, a0
  sltu  t0, s8, a7
  sltiu t2, a4, 1697
  lui   t0, 0xb8406
  auipc t2, 0xa5
  addw  a4, a0, s3
  subw  t1, s10, s6
  addiw s2, s8, -2025
  mul   s7, a7, a2
  mulh  s2, t6, s8
  mulhu a6, s2, a4
  mulw  a3, s3, t6
  div   s4, a3, a0
  divu  t2, a5, s6
  rem   s4, s8, a6
  remu  s7, s6, s6
  divw  t4, s3, a2
  remw  s8, a0, a6
  sd    a2, 8(s0)
  ld    s11, 8(s0)
  sw    a3, 8(s0)
  lw    a5, 8(s0)
  lwu   t6, 8(s0)
  lh    t3, 8(s0)
  lbu   a3, 8(s0)
  lr.d      a6, (s0)
  sc.d      s5, t4, (s0)
  amoadd.w  t0, a6, (s0)
  amoswap.d t0, t4, (s0)
  amoand.w  s5, a3, (s0)
  amoor.d   s8, t5, (s0)
  amoxor.w  a7, t0, (s0)
  amomax.d  t4, t5, (s0)
  amominu.w a3, t5, (s0)
  fmv.w.x   f5, a5
  fmv.d.x   f4, t0
  fadd.s    f4, f4, f6
  fsub.s    f21, f5, f6
  fmul.s    f7, f5, f4
  fdiv.s    f18, f2, f21
  fmin.s    f11, f10, f2
  fmax.s    f7, f2, f0
  fsgnj.s   f0, f3, f2
  fadd.d    f3, f11, f7
  fsub.d    f19, f10, f11
  fmul.d    f18, f19, f5
  fdiv.d    f1, f9, f6
  fsqrt.d   f6, f5
  fmadd.d   f18, f20, f7, f19
  fcvt.s.w  f21, a7
  fcvt.d.w  f2, s2
  fcvt.d.s  f19, f19
  fcvt.s.d  f8, f9
  fcvt.w.s  t5, f8, rtz
  fcvt.l.d  s9, f21, rtz
  feq.d     s9, f1, f20
  flt.s     s2, f11, f0
  fclass.d  s7, f21
  csrr  a5, mscratch
  csrw  mscratch, s4
  csrrw t1, mscratch, t1
  csrrs a3, mstatus, x0
  csrrc s2, mscratch, x0
  csrrwi s2, mscratch, 4
  fence
  fence.i
  c.addi a0, -28
  c.mv   a1, a2
  c.li   a3, -11
  c.add  a4, a5
  la    s0, tdat
  li    t6, 1818
  li    t3, 1868
  add   s3, t0, s3
  sub   t2, t4, s6
  xor   a4, t6, a0
  or    s7, s4, a2
  and   t3, t1, a4
  addi  t3, s11, 568
  andi  t2, s10, 1688
  ori   s2, s6, 21
  xori  a4, a4, -360
  slli  t3, a7, 51
  srli  t2, t4, 16
  srai  s5, t6, 5
  sllw  s7, s5, s6
  sraw  a7, t2, s9
  slt   a1, s10, a4
  sltu  s4, s5, s5
  sltiu a2, s10, 1262
  lui   t3, 0xd53ed
  auipc s7, 0xfa
  addw  t1, t4, s3
  subw  t3, a6, t0
  addiw s3, a7, -225
  mul   s2, t0, a5
  mulh  s2, s10, s4
  mulhu a3, a6, s2
  mulw  a2, t5, s3
  div   s9, s9, t0
  divu  a2, a3, s11
  rem   a3, t3, s2
  remu  a7, s2, a2
  divw  s2, t3, t0
  remw  a4, s2, a4
  sd    a5, 0(s0)
  ld    s9, 0(s0)
  sw    a6, 0(s0)
  lw    s5, 0(s0)
  lwu   s2, 0(s0)
  lh    s6, 0(s0)
  lbu   a4, 0(s0)
  lr.d      a7, (s0)
  sc.d      s2, t0, (s0)
  amoadd.w  t6, a0, (s0)
  amoswap.d a3, t4, (s0)
  amoand.w  t0, s10, (s0)
  amoor.d   s10, s10, (s0)
  amoxor.w  a7, s3, (s0)
  amomax.d  s6, t1, (s0)
  amominu.w a3, t1, (s0)
  fmv.w.x   f1, t0
  fmv.d.x   f5, a7
  fadd.s    f4, f20, f4
  fsub.s    f21, f0, f4
  fmul.s    f6, f11, f9
  fdiv.s    f9, f1, f10
  fmin.s    f20, f2, f7
  fmax.s    f18, f8, f20
  fsgnj.s   f4, f8, f3
  fadd.d    f4, f7, f6
  fsub.d    f20, f5, f3
  fmul.d    f10, f20, f10
  fdiv.d    f18, f5, f5
  fsqrt.d   f4, f8
  fmadd.d   f18, f0, f21, f3
  fcvt.s.w  f2, s11
  fcvt.d.w  f2, t5
  fcvt.d.s  f5, f7
  fcvt.s.d  f3, f7
  fcvt.w.s  a7, f1, rtz
  fcvt.l.d  t2, f2, rtz
  feq.d     s7, f2, f18
  flt.s     s3, f11, f3
  fclass.d  s9, f1
  csrr  s3, mscratch
  csrw  mscratch, a4
  csrrw s4, mscratch, s3
  csrrs a3, mstatus, x0
  csrrc s2, mscratch, x0
  csrrwi s5, mscratch, 28
  fence
  fence.i
  c.addi a0, 22
  c.mv   a1, a2
  c.li   a3, 9
  c.add  a4, a5
  la    s0, tdat
  li    a2, 1341
  li    s9, -1344
  add   a3, t4, a3
  sub   t2, a1, a7
  xor   t0, s6, s7
  or    s4, a1, t2
  and   t3, a3, s7
  addi  s11, s2, -55
  andi  s6, s2, 484
  ori   a6, a6, 531
  xori  a0, s6, -950
  slli  s6, s11, 1
  srli  a0, a2, 22
  srai  t0, s5, 33
  sllw  a6, a3, a3
  sraw  t2, a7, s4
  slt   s6, a0, a5
  sltu  s6, a6, s6
  sltiu t5, s11, 150
  lui   a3, 0x33a89
  auipc a7, 0x5b
  addw  s7, a1, a2
  subw  s10, a3, t1
  addiw t0, s10, 1054
  mul   s4, t4, t3
  mulh  s2, a1, s5
  mulhu a7, a2, s5
  mulw  t6, a1, t3
  div   s8, t5, t6
  divu  s5, t4, s6
  rem   s7, t5, a5
  remu  a1, s5, t2
  divw  s5, s2, a0
  remw  s9, a4, a0
  sd    t2, 8(s0)
  ld    s4, 8(s0)
  sw    s6, 8(s0)
  lw    s2, 8(s0)
  lwu   t6, 8(s0)
  lh    s7, 8(s0)
  lbu   a2, 8(s0)
  lr.d      t1, (s0)
  sc.d      a3, t0, (s0)
  amoadd.w  a4, s3, (s0)
  amoswap.d a0, s4, (s0)
  amoand.w  a7, t4, (s0)
  amoor.d   s11, s2, (s0)
  amoxor.w  a7, t3, (s0)
  amomax.d  t2, t0, (s0)
  amominu.w a4, t1, (s0)
  fmv.w.x   f11, a7
  fmv.d.x   f9, a2
  fadd.s    f0, f0, f9
  fsub.s    f10, f20, f8
  fmul.s    f9, f5, f18
  fdiv.s    f11, f7, f2
  fmin.s    f20, f3, f3
  fmax.s    f6, f8, f1
  fsgnj.s   f9, f21, f21
  fadd.d    f19, f21, f0
  fsub.d    f11, f9, f1
  fmul.d    f20, f1, f21
  fdiv.d    f18, f0, f10
  fsqrt.d   f11, f6
  fmadd.d   f2, f0, f21, f11
  fcvt.s.w  f7, s11
  fcvt.d.w  f5, a2
  fcvt.d.s  f18, f0
  fcvt.s.d  f11, f18
  fcvt.w.s  s6, f3, rtz
  fcvt.l.d  s7, f1, rtz
  feq.d     a1, f18, f20
  flt.s     s3, f0, f4
  fclass.d  a1, f11
  csrr  a3, mscratch
  csrw  mscratch, s8
  csrrw a2, mscratch, s4
  csrrs s11, mstatus, x0
  csrrc a5, mscratch, x0
  csrrwi a6, mscratch, 5
  fence
  fence.i
  c.addi a0, -15
  c.mv   a1, a2
  c.li   a3, 27
  c.add  a4, a5
  la    s0, tdat
  li    t5, 1398
  li    s8, -870
  add   a5, s5, s9
  sub   t3, a0, a3
  xor   a2, s4, s11
  or    s6, t6, a3
  and   s6, s5, t2
  addi  a5, s11, 671
  andi  a4, t6, 189
  ori   s8, s7, 885
  xori  a4, s11, -1185
  slli  a2, s5, 48
  srli  t3, s2, 10
  srai  t2, s9, 22
  sllw  s4, s10, a4
  sraw  s2, s4, t2
  slt   t0, s8, t1
  sltu  s9, a7, t6
  sltiu s5, t0, 1721
  lui   t1, 0x74f52
  auipc a5, 0x50
  addw  t1, s2, t3
  subw  s8, t4, a2
  addiw s11, t0, 1871
  mul   a1, t0, s11
  mulh  s7, t1, a3
  mulhu a2, a3, s2
  mulw  a4, s11, t2
  div   a1, s9, s6
  divu  t5, s2, s8
  rem   a6, s3, s5
  remu  a5, a2, s9
  divw  s2, a4, s8
  remw  t1, t1, a3
  sd    s2, 8(s0)
  ld    a4, 8(s0)
  sw    t4, 8(s0)
  lw    s4, 8(s0)
  lwu   s7, 8(s0)
  lh    a0, 8(s0)
  lbu   s8, 8(s0)
  lr.d      t3, (s0)
  sc.d      t4, a1, (s0)
  amoadd.w  t0, s3, (s0)
  amoswap.d a2, s7, (s0)
  amoand.w  t3, a5, (s0)
  amoor.d   s2, a7, (s0)
  amoxor.w  t1, t6, (s0)
  amomax.d  a3, s7, (s0)
  amominu.w a5, s6, (s0)
  fmv.w.x   f8, t1
  fmv.d.x   f7, t0
  fadd.s    f0, f19, f11
  fsub.s    f11, f2, f8
  fmul.s    f21, f19, f20
  fdiv.s    f2, f1, f11
  fmin.s    f2, f4, f1
  fmax.s    f21, f8, f7
  fsgnj.s   f1, f10, f0
  fadd.d    f10, f8, f6
  fsub.d    f3, f3, f11
  fmul.d    f9, f2, f3
  fdiv.d    f20, f7, f11
  fsqrt.d   f8, f1
  fmadd.d   f7, f2, f6, f18
  fcvt.s.w  f19, t1
  fcvt.d.w  f11, s3
  fcvt.d.s  f11, f10
  fcvt.s.d  f6, f0
  fcvt.w.s  s11, f2, rtz
  fcvt.l.d  s2, f2, rtz
  feq.d     a6, f11, f21
  flt.s     a0, f6, f6
  fclass.d  a1, f10
  csrr  s4, mscratch
  csrw  mscratch, s3
  csrrw s10, mscratch, s3
  csrrs a5, mstatus, x0
  csrrc a4, mscratch, x0
  csrrwi s11, mscratch, 23
  fence
  fence.i
  c.addi a0, 21
  c.mv   a1, a2
  c.li   a3, -15
  c.add  a4, a5
  la    s0, tdat
  li    t3, 769
  li    s4, 1777
  add   s7, s8, s4
  sub   a5, t2, a2
  xor   t2, s2, s10
  or    a6, t1, s2
  and   s4, a1, a1
  addi  a1, t6, 636
  andi  s10, a2, 717
  ori   t3, t4, 1496
  xori  a2, s4, -323
  slli  s7, t6, 58
  srli  s4, t0, 61
  srai  a4, a6, 18
  sllw  s3, s3, a2
  sraw  t4, t5, a1
  slt   a1, t5, a4
  sltu  s9, a1, s7
  sltiu s4, a4, 1066
  lui   s3, 0xd7d2f
  auipc a3, 0xed
  addw  t5, s9, t5
  subw  t2, t4, s3
  addiw t0, a1, -489
  mul   s9, a4, s11
  mulh  s4, t3, a6
  mulhu s10, t3, a1
  mulw  t3, s8, t3
  div   a5, t1, t5
  divu  a6, t2, s4
  rem   s4, a3, t0
  remu  s8, s2, t5
  divw  s7, s9, t2
  remw  t1, a7, t6
  sd    s9, 8(s0)
  ld    s6, 8(s0)
  sw    s7, 8(s0)
  lw    t5, 8(s0)
  lwu   t5, 8(s0)
  lh    a2, 8(s0)
  lbu   t1, 8(s0)
  lr.d      a3, (s0)
  sc.d      s2, a4, (s0)
  amoadd.w  t3, a5, (s0)
  amoswap.d s6, a5, (s0)
  amoand.w  s8, s11, (s0)
  amoor.d   t2, a7, (s0)
  amoxor.w  a7, a7, (s0)
  amomax.d  a5, t6, (s0)
  amominu.w a4, s9, (s0)
  fmv.w.x   f8, a2
  fmv.d.x   f2, s8
  fadd.s    f21, f19, f20
  fsub.s    f2, f11, f21
  fmul.s    f11, f3, f2
  fdiv.s    f2, f18, f2
  fmin.s    f11, f9, f11
  fmax.s    f8, f0, f6
  fsgnj.s   f4, f2, f7
  fadd.d    f11, f20, f5
  fsub.d    f19, f0, f4
  fmul.d    f6, f11, f9
  fdiv.d    f8, f10, f19
  fsqrt.d   f4, f19
  fmadd.d   f4, f21, f8, f6
  fcvt.s.w  f3, t0
  fcvt.d.w  f19, s5
  fcvt.d.s  f9, f8
  fcvt.s.d  f1, f2
  fcvt.w.s  a6, f4, rtz
  fcvt.l.d  s4, f10, rtz
  feq.d     a1, f2, f4
  flt.s     s2, f6, f18
  fclass.d  a5, f9
  csrr  a6, mscratch
  csrw  mscratch, a1
  csrrw a7, mscratch, a6
  csrrs s7, mstatus, x0
  csrrc a4, mscratch, x0
  csrrwi a1, mscratch, 5
  fence
  fence.i
  c.addi a0, 31
  c.mv   a1, a2
  c.li   a3, 31
  c.add  a4, a5
  la    s0, tdat
  li    t3, 461
  li    s3, 1826
  add   t2, t4, s9
  sub   s4, a1, t5
  xor   s9, s3, s4
  or    a1, t4, s9
  and   s5, t3, a1
  addi  t1, a5, 1052
  andi  s6, a1, 820
  ori   s4, a1, 549
  xori  s10, a5, -1908
  slli  t4, a0, 21
  srli  a7, s7, 14
  srai  s4, s8, 55
  sllw  s3, a5, a0
  sraw  t5, s2, a1
  slt   a6, s2, a2
  sltu  a6, a3, t4
  sltiu a2, s5, 1899
  lui   a7, 0x15cd0
  auipc s9, 0xe9
  addw  a5, t4, s9
  subw  s2, s6, a2
  addiw s9, t5, 371
  mul   t6, s8, a1
  mulh  t4, t3, s3
  mulhu s5, s11, s4
  mulw  s6, a7, t0
  div   s2, a1, a3
  divu  a4, t2, s3
  rem   a0, s8, s2
  remu  s6, s5, t6
  divw  t4, t1, t5
  remw  s7, s4, s6
  sd    a1, 0(s0)
  ld    a0, 0(s0)
  sw    a7, 0(s0)
  lw    t6, 0(s0)
  lwu   s6, 0(s0)
  lh    a3, 0(s0)
  lbu   s3, 0(s0)
  lr.d      a4, (s0)
  sc.d      a2, a1, (s0)
  amoadd.w  s5, a7, (s0)
  amoswap.d a2, a4, (s0)
  amoand.w  t3, s11, (s0)
  amoor.d   s11, s8, (s0)
  amoxor.w  t5, s6, (s0)
  amomax.d  a0, s4, (s0)
  amominu.w t3, s10, (s0)
  fmv.w.x   f3, s4
  fmv.d.x   f19, t6
  fadd.s    f5, f19, f5
  fsub.s    f3, f20, f2
  fmul.s    f21, f11, f11
  fdiv.s    f3, f2, f5
  fmin.s    f11, f20, f6
  fmax.s    f21, f4, f21
  fsgnj.s   f5, f6, f10
  fadd.d    f7, f20, f19
  fsub.d    f9, f21, f18
  fmul.d    f0, f19, f18
  fdiv.d    f7, f21, f19
  fsqrt.d   f21, f11
  fmadd.d   f21, f0, f6, f11
  fcvt.s.w  f9, s4
  fcvt.d.w  f9, a5
  fcvt.d.s  f6, f2
  fcvt.s.d  f2, f6
  fcvt.w.s  t3, f4, rtz
  fcvt.l.d  a2, f4, rtz
  feq.d     a1, f8, f10
  flt.s     a5, f9, f6
  fclass.d  t6, f7
  csrr  s6, mscratch
  csrw  mscratch, a3
  csrrw a3, mscratch, s8
  csrrs s3, mstatus, x0
  csrrc a0, mscratch, x0
  csrrwi s7, mscratch, 5
  fence
  fence.i
  c.addi a0, 20
  c.mv   a1, a2
  c.li   a3, 25
  c.add  a4, a5
  la    s0, tdat
  li    t1, 742
  li    s11, -549
  add   t5, a5, a2
  sub   s9, s10, a4
  xor   a2, s3, t5
  or    a1, t1, t6
  and   s11, s3, s4
  addi  s10, a0, 226
  andi  a2, s6, 1536
  ori   t0, s2, 307
  xori  s3, s9, -804
  slli  a5, s2, 20
  srli  a0, t2, 46
  srai  s4, a1, 16
  sllw  a6, a2, a1
  sraw  s9, s11, a1
  slt   a5, a6, s11
  sltu  t0, a0, s9
  sltiu a3, a6, 1464
  lui   t2, 0x2b3ab
  auipc s3, 0xf1
  addw  a4, t3, t6
  subw  s10, a3, s2
  addiw s11, s3, -1455
  mul   a5, s2, a2
  mulh  a7, s5, s8
  mulhu s3, a5, a5
  mulw  a6, t2, a3
  div   a7, s10, a6
  divu  t2, s6, a0
  rem   t2, a2, s11
  remu  t3, s5, t3
  divw  a2, t3, t1
  remw  s3, t3, s7
  sd    s9, 0(s0)
  ld    t4, 0(s0)
  sw    s5, 0(s0)
  lw    s10, 0(s0)
  lwu   s5, 0(s0)
  lh    t0, 0(s0)
  lbu   a4, 0(s0)
  lr.d      a7, (s0)
  sc.d      t1, s11, (s0)
  amoadd.w  a0, a4, (s0)
  amoswap.d s7, s4, (s0)
  amoand.w  t0, s9, (s0)
  amoor.d   a2, t2, (s0)
  amoxor.w  a0, s2, (s0)
  amomax.d  s3, s2, (s0)
  amominu.w s4, s10, (s0)
  fmv.w.x   f2, s3
  fmv.d.x   f4, t0
  fadd.s    f8, f21, f6
  fsub.s    f5, f7, f20
  fmul.s    f11, f0, f8
  fdiv.s    f8, f0, f3
  fmin.s    f21, f21, f9
  fmax.s    f20, f2, f5
  fsgnj.s   f21, f4, f9
  fadd.d    f8, f3, f18
  fsub.d    f0, f2, f8
  fmul.d    f7, f1, f6
  fdiv.d    f20, f18, f10
  fsqrt.d   f5, f18
  fmadd.d   f21, f6, f8, f21
  fcvt.s.w  f5, t2
  fcvt.d.w  f8, s9
  fcvt.d.s  f2, f5
  fcvt.s.d  f0, f20
  fcvt.w.s  t1, f19, rtz
  fcvt.l.d  a6, f11, rtz
  feq.d     t6, f1, f2
  flt.s     t1, f8, f20
  fclass.d  a4, f1
  csrr  t1, mscratch
  csrw  mscratch, s6
  csrrw t5, mscratch, a4
  csrrs t0, mstatus, x0
  csrrc s3, mscratch, x0
  csrrwi t5, mscratch, 23
  fence
  fence.i
  c.addi a0, 2
  c.mv   a1, a2
  c.li   a3, 25
  c.add  a4, a5
  la    s0, tdat
  li    s8, 1416
  li    s8, -1961
  add   a3, a2, a0
  sub   s10, t0, t5
  xor   a3, a2, a7
  or    s4, s7, s8
  and   a6, s11, s9
  addi  s9, t2, -1427
  andi  s10, a1, 350
  ori   s5, a7, 1392
  xori  a7, a4, 615
  slli  s10, t6, 22
  srli  a4, a2, 30
  srai  s2, a2, 1
  sllw  s4, a1, a3
  sraw  t6, s8, a4
  slt   t0, s10, a4
  sltu  t3, s10, s10
  sltiu t2, s11, 213
  lui   s6, 0xc637e
  auipc s3, 0x84
  addw  t1, t1, s8
  subw  t5, t2, s7
  addiw s11, s9, -1065
  mul   a5, s8, s10
  mulh  s5, s3, a3
  mulhu t1, s6, t3
  mulw  s10, s11, t3
  div   s8, s11, a2
  divu  a3, s2, t0
  rem   s5, s6, t4
  remu  t2, t6, a4
  divw  s4, s5, s8
  remw  t6, t1, t1
  sd    a5, 8(s0)
  ld    s7, 8(s0)
  sw    a3, 8(s0)
  lw    s4, 8(s0)
  lwu   a0, 8(s0)
  lh    a7, 8(s0)
  lbu   a4, 8(s0)
  lr.d      s9, (s0)
  sc.d      t3, a0, (s0)
  amoadd.w  s4, t2, (s0)
  amoswap.d t1, t1, (s0)
  amoand.w  s2, a2, (s0)
  amoor.d   a7, a6, (s0)
  amoxor.w  s3, a0, (s0)
  amomax.d  s6, t0, (s0)
  amominu.w s2, s5, (s0)
  fmv.w.x   f4, a3
  fmv.d.x   f10, a2
  fadd.s    f4, f3, f3
  fsub.s    f1, f21, f7
  fmul.s    f9, f3, f18
  fdiv.s    f2, f21, f1
  fmin.s    f3, f11, f7
  fmax.s    f4, f1, f3
  fsgnj.s   f19, f4, f9
  fadd.d    f21, f7, f18
  fsub.d    f21, f6, f18
  fmul.d    f5, f1, f10
  fdiv.d    f6, f21, f8
  fsqrt.d   f8, f6
  fmadd.d   f6, f20, f0, f18
  fcvt.s.w  f4, a6
  fcvt.d.w  f1, t6
  fcvt.d.s  f20, f0
  fcvt.s.d  f0, f1
  fcvt.w.s  s8, f19, rtz
  fcvt.l.d  a3, f8, rtz
  feq.d     t5, f10, f9
  flt.s     t3, f6, f21
  fclass.d  t1, f20
  csrr  a7, mscratch
  csrw  mscratch, s10
  csrrw t1, mscratch, t3
  csrrs s4, mstatus, x0
  csrrc s9, mscratch, x0
  csrrwi s3, mscratch, 20
  fence
  fence.i
  c.addi a0, -22
  c.mv   a1, a2
  c.li   a3, 5
  c.add  a4, a5
  la    s0, tdat
  li    t4, 449
  li    t2, -866
  add   s2, s6, t5
  sub   t6, t3, t3
  xor   t6, s11, s10
  or    t5, t4, s3
  and   s11, t3, a5
  addi  t3, a4, -1992
  andi  a1, a6, 1296
  ori   t2, a5, 1950
  xori  s2, a4, 1319
  slli  a7, a7, 40
  srli  s8, a0, 41
  srai  t0, a0, 26
  sllw  s11, s9, s11
  sraw  t1, t0, a7
  slt   s9, t4, a4
  sltu  a0, s7, a0
  sltiu s4, a7, 211
  lui   a2, 0x910a5
  auipc t5, 0x4a
  addw  s6, s5, s7
  subw  a2, s11, a7
  addiw s10, s10, -757
  mul   a5, a7, a7
  mulh  a2, a1, s4
  mulhu s10, a2, a6
  mulw  a6, a5, a1
  div   a2, t1, a4
  divu  a2, a5, s8
  rem   a4, a2, t4
  remu  s6, t1, a3
  divw  a0, s4, t1
  remw  t2, s10, a1
  sd    a3, 0(s0)
  ld    s4, 0(s0)
  sw    s10, 0(s0)
  lw    a4, 0(s0)
  lwu   s3, 0(s0)
  lh    s10, 0(s0)
  lbu   s11, 0(s0)
  lr.d      a6, (s0)
  sc.d      t4, t0, (s0)
  amoadd.w  s9, a6, (s0)
  amoswap.d s9, s9, (s0)
  amoand.w  a3, a4, (s0)
  amoor.d   a4, s10, (s0)
  amoxor.w  s11, a1, (s0)
  amomax.d  s5, t6, (s0)
  amominu.w s10, t0, (s0)
  fmv.w.x   f5, s11
  fmv.d.x   f0, a6
  fadd.s    f8, f1, f21
  fsub.s    f11, f20, f0
  fmul.s    f5, f11, f4
  fdiv.s    f19, f20, f21
  fmin.s    f1, f6, f21
  fmax.s    f19, f6, f10
  fsgnj.s   f18, f0, f7
  fadd.d    f9, f6, f20
  fsub.d    f7, f4, f2
  fmul.d    f6, f3, f18
  fdiv.d    f20, f5, f21
  fsqrt.d   f2, f11
  fmadd.d   f3, f0, f5, f18
  fcvt.s.w  f9, s8
  fcvt.d.w  f4, s11
  fcvt.d.s  f4, f4
  fcvt.s.d  f4, f6
  fcvt.w.s  a2, f8, rtz
  fcvt.l.d  s9, f8, rtz
  feq.d     s2, f9, f18
  flt.s     a2, f9, f1
  fclass.d  a0, f10
  csrr  s4, mscratch
  csrw  mscratch, a2
  csrrw t1, mscratch, t5
  csrrs s10, mstatus, x0
  csrrc s8, mscratch, x0
  csrrwi a2, mscratch, 4
  fence
  fence.i
  c.addi a0, 26
  c.mv   a1, a2
  c.li   a3, -18
  c.add  a4, a5
  la    s0, tdat
  li    s7, 1402
  li    s3, -337
  add   a4, a5, a7
  sub   t5, a4, s9
  xor   t3, s4, a5
  or    t4, t5, s10
  and   s8, a0, a2
  addi  t5, a1, -1862
  andi  a3, a4, 764
  ori   a3, t1, 1326
  xori  s3, a7, -1799
  slli  s3, a3, 24
  srli  s8, a6, 51
  srai  a1, a2, 61
  sllw  s9, t3, a1
  sraw  s6, a5, a2
  slt   a2, s5, s4
  sltu  s4, a0, s11
  sltiu t4, a3, 985
  lui   s4, 0xb7457
  auipc t0, 0xc
  addw  s6, t6, t0
  subw  s9, t5, t1
  addiw s3, s4, 1053
  mul   a1, s5, t4
  mulh  a2, t5, a4
  mulhu a3, t4, s3
  mulw  s5, s11, t0
  div   t4, s10, a0
  divu  t4, a1, s9
  rem   s10, a6, a7
  remu  s6, a7, a0
  divw  s5, a6, a5
  remw  t1, t3, s10
  sd    a0, 0(s0)
  addi  a1, a0, 5000
  ld    a2, 0(s0)
  sw    a3, 0(s0)
  lw    t3, 0(s0)
  lwu   s6, 0(s0)
  lh    a2, 0(s0)
  lbu   s6, 0(s0)
  lr.d      t6, (s0)
  sc.d      a0, a1, (s0)
  amoadd.w  a6, s11, (s0)
  amoswap.d s7, s7, (s0)
  amoand.w  t2, s11, (s0)
  amoor.d   t2, a4, (s0)
  amoxor.w  a0, a2, (s0)
  amomax.d  a0, s3, (s0)
  amominu.w t4, s6, (s0)
  fmv.w.x   f19, a5
  fmv.d.x   f11, a6
  fadd.s    f8, f5, f10
  fsub.s    f20, f19, f20
  fmul.s    f3, f7, f2
  fdiv.s    f8, f5, f21
  fmin.s    f11, f21, f20
  fmax.s    f21, f7, f0
  fsgnj.s   f9, f6, f1
  fadd.d    f18, f10, f8
  fsub.d    f19, f4, f11
  fmul.d    f19, f4, f11
  fdiv.d    f6, f21, f10
  fsqrt.d   f19, f10
  fmadd.d   f1, f6, f4, f20
  fcvt.s.w  f1, a2
  fcvt.d.w  f5, t4
  fcvt.d.s  f4, f19
  fcvt.s.d  f11, f1
  fcvt.w.s  s6, f8, rtz
  fcvt.l.d  a7, f6, rtz
  feq.d     a7, f10, f0
  flt.s     s4, f3, f21
  fclass.d  s11, f19
  csrr  t2, mscratch
  csrw  mscratch, a0
  csrrw s9, mscratch, t3
  csrrs t5, mstatus, x0
  csrrc s3, mscratch, x0
  csrrwi s2, mscratch, 21
  fence
  fence.i
  c.addi a0, -20
  c.mv   a1, a2
  c.li   a3, 11
  c.add  a4, a5
  la    s0, tdat
  li    s9, 742
  li    a7, 576
  add   s2, t3, s2
  sub   a3, t5, a7
  xor   a0, s8, s2
  or    a3, t6, s7
  and   s6, s10, t4
  addi  s4, s2, -1459
  andi  a3, s9, 1462
  ori   s3, s6, 687
  xori  s6, a1, 1523
  slli  a6, t0, 61
  srli  t3, a5, 17
  srai  t0, s11, 40
  sllw  t2, s6, t2
  sraw  a0, a7, a2
  slt   t1, s8, t2
  sltu  a3, a6, s8
  sltiu s5, s11, 1009
  lui   a1, 0xf758d
  auipc t5, 0x6f
  addw  a5, a3, t6
  subw  a7, t5, s10
  addiw s5, s5, -980
  mul   a3, t1, a4
  mulh  a2, s10, s11
  mulhu s2, a0, a4
  mulw  t6, a6, s9
  div   t0, a6, t1
  divu  s7, t6, s6
  rem   s3, s11, a6
  remu  s3, a1, t2
  divw  s8, a0, a1
  remw  s2, a3, a4
  sd    t5, 0(s0)
  ld    a0, 0(s0)
  sw    a1, 0(s0)
  lw    s8, 0(s0)
  lwu   t0, 0(s0)
  lh    a6, 0(s0)
  lbu   s5, 0(s0)
  lr.d      s6, (s0)
  sc.d      s2, t2, (s0)
  amoadd.w  t3, a3, (s0)
  amoswap.d t0, t2, (s0)
  amoand.w  a2, s4, (s0)
  amoor.d   s9, a1, (s0)
  amoxor.w  s8, s9, (s0)
  amomax.d  s3, s6, (s0)
  amominu.w a7, s10, (s0)
  fmv.w.x   f1, s6
  fmv.d.x   f11, a7
  fadd.s    f4, f2, f9
  fsub.s    f20, f21, f3
  fmul.s    f0, f3, f8
  fdiv.s    f20, f8, f10
  fmin.s    f11, f19, f8
  fmax.s    f20, f19, f7
  fsgnj.s   f11, f10, f1
  fadd.d    f18, f9, f6
  fsub.d    f6, f0, f5
  fmul.d    f8, f4, f10
  fdiv.d    f20, f2, f10
  fsqrt.d   f4, f21
  fmadd.d   f4, f19, f8, f18
  fcvt.s.w  f4, s3
  fcvt.d.w  f9, a3
  fcvt.d.s  f1, f2
  fcvt.s.d  f18, f20
  fcvt.w.s  a0, f4, rtz
  fcvt.l.d  a4, f0, rtz
  feq.d     a7, f8, f5
  flt.s     a7, f21, f0
  fclass.d  s2, f1
  csrr  s2, mscratch
  csrw  mscratch, s6
  csrrw a2, mscratch, t4
  csrrs s7, mstatus, x0
  csrrc s4, mscratch, x0
  csrrwi s3, mscratch, 21
  fence
  fence.i
  c.addi a0, 3
  c.mv   a1, a2
  c.li   a3, -3
  c.add  a4, a5
  la    s0, tdat
  li    s7, 587
  li    s8, 1496
  add   a3, a4, a3
  sub   t2, t0, t5
  xor   s9, s11, s10
  or    t4, a1, s3
  and   a7, s7, a1
  addi  t2, s4, -1778
  andi  s9, t2, 1300
  ori   t4, t1, 61
  xori  t3, a5, 1916
  slli  t4, s11, 34
  srli  s11, t1, 50
  srai  t4, s6, 60
  sllw  a4, t2, a7
  sraw  s3, a3, s10
  slt   a4, t5, a0
  sltu  t0, t4, s7
  sltiu s5, a2, 1192
  lui   a6, 0xeb09b
  auipc t2, 0xe
  addw  a2, a7, s9
  subw  t2, s7, a4
  addiw a5, a7, 1925
  mul   a4, t0, s5
  mulh  t2, s9, t2
  mulhu s3, a4, s11
  mulw  t0, s6, s8
  div   a2, t5, s8
  divu  s9, s2, s4
  rem   s11, t1, t4
  remu  t3, s7, a0
  divw  a7, s2, s7
  remw  s6, a0, s2
  sd    t6, 0(s0)
  ld    s5, 0(s0)
  sw    t6, 0(s0)
  lw    s10, 0(s0)
  lwu   s2, 0(s0)
  lh    t3, 0(s0)
  lbu   a3, 0(s0)
  lr.d      a7, (s0)
  sc.d      t6, s9, (s0)
  amoadd.w  a6, s7, (s0)
  amoswap.d t2, a1, (s0)
  amoand.w  t1, t0, (s0)
  amoor.d   t4, s6, (s0)
  amoxor.w  t1, s2, (s0)
  amomax.d  t1, a2, (s0)
  amominu.w s5, a1, (s0)
  fmv.w.x   f11, s5
  fmv.d.x   f5, t4
  fadd.s    f4, f11, f7
  fsub.s    f18, f5, f20
  fmul.s    f9, f2, f0
  fdiv.s    f0, f3, f19
  fmin.s    f9, f21, f4
  fmax.s    f4, f19, f7
  fsgnj.s   f11, f20, f2
  fadd.d    f19, f4, f21
  fsub.d    f4, f0, f9
  fmul.d    f4, f5, f4
  fdiv.d    f1, f2, f9
  fsqrt.d   f0, f3
  fmadd.d   f9, f10, f10, f0
  fcvt.s.w  f9, s10
  fcvt.d.w  f2, s9
  fcvt.d.s  f9, f11
  fcvt.s.d  f10, f7
  fcvt.w.s  t4, f11, rtz
  fcvt.l.d  a7, f6, rtz
  feq.d     s9, f19, f20
  flt.s     s2, f9, f4
  fclass.d  s2, f7
  csrr  a3, mscratch
  csrw  mscratch, t4
  csrrw t0, mscratch, t5
  csrrs s10, mstatus, x0
  csrrc t3, mscratch, x0
  csrrwi s11, mscratch, 23
  fence
  fence.i
  c.addi a0, 14
  c.mv   a1, a2
  c.li   a3, -14
  c.add  a4, a5
  la    s0, tdat
  li    s10, 1588
  li    a5, -1991
  add   t2, s3, t1
  sub   t3, s11, a0
  xor   a4, a1, t1
  or    t6, t1, a0
  and   s9, t3, a0
  addi  s8, s8, 731
  andi  s2, a2, 636
  ori   s5, s11, 1956
  xori  s11, s4, -735
  slli  t5, s2, 40
  srli  s2, s5, 62
  srai  s8, s10, 61
  sllw  t2, s5, s11
  sraw  a6, t4, s8
  slt   s8, t4, a0
  sltu  s9, s10, s11
  sltiu a3, t4, 1438
  lui   t5, 0x11491
  auipc s11, 0x91
  addw  s3, a2, s5
  subw  a6, t3, s10
  addiw t4, s10, -1687
  mul   s11, t6, t5
  mulh  s6, a3, a6
  mulhu s4, a4, s10
  mulw  a6, s6, s2
  div   t6, s3, t3
  divu  s2, t6, t5
  rem   s2, s7, a7
  remu  s10, a5, a7
  divw  s11, a1, t4
  remw  s6, s6, s11
  sd    t1, 8(s0)
  ld    s6, 8(s0)
  sw    s8, 8(s0)
  lw    a6, 8(s0)
  lwu   t3, 8(s0)
  lh    s2, 8(s0)
  lbu   s5, 8(s0)
  lr.d      s7, (s0)
  sc.d      s10, a3, (s0)
  amoadd.w  t0, a7, (s0)
  amoswap.d a0, t1, (s0)
  amoand.w  a0, s3, (s0)
  amoor.d   a2, s7, (s0)
  amoxor.w  a7, s11, (s0)
  amomax.d  s8, t4, (s0)
  amominu.w s2, t4, (s0)
  fmv.w.x   f18, t6
  fmv.d.x   f7, t3
  fadd.s    f19, f9, f11
  fsub.s    f10, f4, f19
  fmul.s    f6, f1, f5
  fdiv.s    f2, f9, f4
  fmin.s    f18, f21, f7
  fmax.s    f8, f3, f20
  fsgnj.s   f5, f0, f11
  fadd.d    f8, f5, f1
  fsub.d    f1, f10, f8
  fmul.d    f11, f6, f18
  fdiv.d    f6, f1, f2
  fsqrt.d   f19, f19
  fmadd.d   f0, f19, f19, f11
  fcvt.s.w  f7, t5
  fcvt.d.w  f5, a0
  fcvt.d.s  f5, f19
  fcvt.s.d  f4, f21
  fcvt.w.s  a6, f9, rtz
  fcvt.l.d  a6, f8, rtz
  feq.d     a3, f1, f3
  flt.s     t1, f8, f10
  fclass.d  s3, f5
  csrr  t6, mscratch
  csrw  mscratch, t1
  csrrw a2, mscratch, t3
  csrrs a2, mstatus, x0
  csrrc s7, mscratch, x0
  csrrwi t2, mscratch, 22
  fence
  fence.i
  c.addi a0, 19
  c.mv   a1, a2
  c.li   a3, -13
  c.add  a4, a5
  la    s0, tdat
  li    t1, 179
  li    t5, 2032
  add   s10, a3, a4
  sub   a1, t2, s8
  xor   t2, a2, t0
  or    a4, s9, a3
  and   a5, t4, t5
  addi  s9, a1, -1330
  andi  t3, a1, 1856
  ori   s5, t2, 2034
  xori  t4, t1, 1276
  slli  s5, s8, 44
  srli  t3, t2, 55
  srai  t4, a6, 10
  sllw  t3, s10, a6
  sraw  s7, s2, a7
  slt   t1, a3, s5
  sltu  s6, s11, a7
  sltiu a3, s6, 1992
  lui   s7, 0x60038
  auipc a7, 0x71
  addw  s2, a7, s4
  subw  t1, t2, t0
  addiw t4, t6, -400
  mul   s10, t6, s7
  mulh  s2, a2, s11
  mulhu t4, s3, a6
  mulw  s11, s9, t1
  div   s3, s2, s5
  divu  a1, a6, s9
  rem   s7, s3, t4
  remu  s10, s2, s10
  divw  t0, s2, t0
  remw  t1, s6, s10
  sd    s10, 0(s0)
  ld    a7, 0(s0)
  sw    s2, 0(s0)
  lw    t3, 0(s0)
  lwu   a2, 0(s0)
  lh    s4, 0(s0)
  lbu   s11, 0(s0)
  lr.d      a2, (s0)
  sc.d      a3, s6, (s0)
  amoadd.w  a3, s8, (s0)
  amoswap.d s2, s11, (s0)
  amoand.w  t6, t5, (s0)
  amoor.d   a3, s6, (s0)
  amoxor.w  t2, a6, (s0)
  amomax.d  s4, s5, (s0)
  amominu.w a2, t6, (s0)
  fmv.w.x   f3, s8
  fmv.d.x   f8, t6
  fadd.s    f1, f0, f7
  fsub.s    f6, f20, f5
  fmul.s    f2, f3, f3
  fdiv.s    f6, f1, f2
  fmin.s    f10, f5, f18
  fmax.s    f7, f0, f3
  fsgnj.s   f4, f5, f10
  fadd.d    f20, f10, f20
  fsub.d    f0, f8, f11
  fmul.d    f2, f1, f0
  fdiv.d    f4, f18, f5
  fsqrt.d   f20, f5
  fmadd.d   f3, f10, f2, f2
  fcvt.s.w  f4, s7
  fcvt.d.w  f21, a4
  fcvt.d.s  f3, f10
  fcvt.s.d  f19, f1
  fcvt.w.s  s3, f21, rtz
  fcvt.l.d  a4, f18, rtz
  feq.d     a1, f8, f3
  flt.s     a1, f8, f6
  fclass.d  s3, f4
  csrr  a5, mscratch
  csrw  mscratch, t1
  csrrw a6, mscratch, t3
  csrrs s8, mstatus, x0
  csrrc a7, mscratch, x0
  csrrwi s9, mscratch, 5
  fence
  fence.i
  c.addi a0, -5
  c.mv   a1, a2
  c.li   a3, -19
  c.add  a4, a5
  la    s0, tdat
  li    s10, 1496
  li    t1, 335
  add   s11, a4, t5
  sub   s3, t0, s6
  xor   a1, s7, t1
  or    a2, s8, a4
  and   s6, a1, t1
  addi  t3, s11, 1467
  andi  a3, t2, 1156
  ori   a3, t4, 477
  xori  s10, t6, -1858
  slli  s9, t4, 22
  srli  a6, a3, 50
  srai  a2, t1, 13
  sllw  t2, t4, t5
  sraw  a6, s11, s10
  slt   t5, a0, a5
  sltu  t5, s6, s4
  sltiu t3, s6, 1329
  lui   a1, 0xbfbb
  auipc s8, 0x99
  addw  s8, a1, s7
  subw  s7, a4, s7
  addiw t0, a4, -1275
  mul   t2, a5, s7
  mulh  a2, t1, s6
  mulhu t0, t5, s2
  mulw  s6, s3, t6
  div   a1, t1, s10
  divu  s2, s5, t1
  rem   a6, s10, s4
  remu  s4, a1, a7
  divw  a1, s7, t5
  remw  a3, a4, s7
  sd    a5, 8(s0)
  ld    t4, 8(s0)
  sw    a0, 8(s0)
  lw    t4, 8(s0)
  lwu   s10, 8(s0)
  lh    a2, 8(s0)
  lbu   t6, 8(s0)
  lr.d      s3, (s0)
  sc.d      s4, a3, (s0)
  amoadd.w  s8, s6, (s0)
  amoswap.d a2, s5, (s0)
  amoand.w  s11, a1, (s0)
  amoor.d   s10, a3, (s0)
  amoxor.w  s9, s8, (s0)
  amomax.d  t3, a6, (s0)
  amominu.w s11, s11, (s0)
  fmv.w.x   f20, s8
  fmv.d.x   f3, a5
  fadd.s    f4, f9, f21
  fsub.s    f19, f2, f11
  fmul.s    f19, f4, f11
  fdiv.s    f2, f5, f20
  fmin.s    f4, f21, f3
  fmax.s    f10, f1, f6
  fsgnj.s   f19, f3, f4
  fadd.d    f6, f6, f18
  fsub.d    f5, f21, f18
  fmul.d    f7, f10, f18
  fdiv.d    f1, f21, f19
  fsqrt.d   f0, f3
  fmadd.d   f20, f9, f18, f20
  fcvt.s.w  f21, a1
  fcvt.d.w  f19, a2
  fcvt.d.s  f18, f10
  fcvt.s.d  f6, f10
  fcvt.w.s  a4, f2, rtz
  fcvt.l.d  t0, f10, rtz
  feq.d     t3, f6, f10
  flt.s     s10, f1, f4
  fclass.d  s9, f21
  csrr  a4, mscratch
  csrw  mscratch, t4
  csrrw s11, mscratch, a1
  csrrs s6, mstatus, x0
  csrrc a1, mscratch, x0
  csrrwi s11, mscratch, 17
  fence
  fence.i
  c.addi a0, -6
  c.mv   a1, a2
  c.li   a3, -9
  c.add  a4, a5
  la    s0, tdat
  li    s4, 1243
  li    a3, -1938
  add   t2, a2, t3
  sub   t5, s10, t2
  xor   t2, s9, a3
  or    a5, t6, t0
  and   a5, a4, t3
  addi  s6, s9, -1841
  andi  t3, s9, 1889
  ori   a3, s3, 392
  xori  s6, t5, 548
  slli  t5, s11, 59
  srli  t5, a4, 20
  srai  s10, s6, 6
  sllw  a7, s10, s9
  sraw  a4, t0, s10
  slt   s11, t2, s8
  sltu  s5, a2, s10
  sltiu s7, s8, 1517
  lui   t0, 0xea9cf
  auipc t2, 0x86
  addw  t5, a4, a5
  subw  a6, t5, s3
  addiw a4, a5, -604
  mul   t1, a0, a1
  mulh  s5, s6, s2
  mulhu t4, s7, s8
  mulw  s4, s8, s8
  div   a2, s2, t2
  divu  a0, s11, a5
  rem   s4, t3, a4
  remu  a3, s6, a4
  divw  t4, t3, s8
  remw  s2, a2, s5
  sd    t4, 0(s0)
  ld    t3, 0(s0)
  sw    s2, 0(s0)
  lw    s11, 0(s0)
  lwu   t4, 0(s0)
  lh    t0, 0(s0)
  lbu   s11, 0(s0)
  lr.d      t2, (s0)
  sc.d      s3, s4, (s0)
  amoadd.w  t1, a3, (s0)
  amoswap.d t0, s6, (s0)
  amoand.w  s8, a3, (s0)
  amoor.d   s5, a0, (s0)
  amoxor.w  t5, s8, (s0)
  amomax.d  t4, s6, (s0)
  amominu.w t4, s9, (s0)
  fmv.w.x   f20, t6
  fmv.d.x   f3, s9
  fadd.s    f2, f0, f10
  fsub.s    f9, f6, f4
  fmul.s    f2, f18, f2
  fdiv.s    f7, f0, f7
  fmin.s    f19, f6, f1
  fmax.s    f4, f0, f9
  fsgnj.s   f6, f8, f20
  fadd.d    f18, f5, f19
  fsub.d    f5, f9, f11
  fmul.d    f20, f7, f19
  fdiv.d    f8, f5, f1
  fsqrt.d   f5, f11
  fmadd.d   f1, f7, f18, f21
  fcvt.s.w  f1, t3
  fcvt.d.w  f3, a5
  fcvt.d.s  f4, f2
  fcvt.s.d  f8, f7
  fcvt.w.s  a3, f6, rtz
  fcvt.l.d  t5, f6, rtz
  feq.d     s10, f10, f1
  flt.s     t2, f6, f2
  fclass.d  s6, f11
  csrr  t4, mscratch
  csrw  mscratch, t6
  csrrw t2, mscratch, s5
  csrrs s9, mstatus, x0
  csrrc s10, mscratch, x0
  csrrwi s5, mscratch, 15
  fence
  fence.i
  c.addi a0, 27
  c.mv   a1, a2
  c.li   a3, 6
  c.add  a4, a5
  la    s0, tdat
  li    a5, 1635
  li    t2, 1774
  add   s3, t6, a3
  sub   s7, s10, t2
  xor   s2, s9, a2
  or    t1, s2, a5
  and   t5, t0, s3
  addi  s10, t4, 1881
  andi  t5, t5, 267
  ori   t2, a5, 1050
  xori  s8, s9, 1541
  slli  s2, t6, 56
  srli  a0, a7, 3
  srai  s10, t4, 58
  sllw  t1, s4, s3
  sraw  s4, a0, t1
  slt   t4, s5, s4
  sltu  t6, a1, a1
  sltiu a4, a4, 427
  lui   s5, 0x8acc3
  auipc s3, 0xc3
  addw  s10, t6, t1
  subw  t6, a5, t6
  addiw s8, s7, -1387
  mul   a0, t5, a3
  mulh  a7, a0, t1
  mulhu a0, t3, s10
  mulw  s2, t3, a3
  div   a3, s5, a2
  divu  s6, t0, s4
  rem   t3, a2, t6
  remu  t4, s10, s11
  divw  a3, s2, t0
  remw  a2, a6, t3
  sd    t1, 0(s0)
  ld    t5, 0(s0)
  sw    s11, 0(s0)
  lw    t4, 0(s0)
  lwu   s10, 0(s0)
  lh    s7, 0(s0)
  lbu   a3, 0(s0)
  lr.d      a1, (s0)
  sc.d      s7, a4, (s0)
  amoadd.w  s8, s9, (s0)
  amoswap.d a3, a6, (s0)
  amoand.w  t5, s8, (s0)
  amoor.d   t2, t0, (s0)
  amoxor.w  a1, s3, (s0)
  amomax.d  t3, t3, (s0)
  amominu.w s8, s4, (s0)
  fmv.w.x   f19, t4
  fmv.d.x   f11, t3
  fadd.s    f7, f20, f10
  fsub.s    f5, f20, f11
  fmul.s    f11, f5, f19
  fdiv.s    f20, f8, f11
  fmin.s    f5, f18, f10
  fmax.s    f6, f2, f7
  fsgnj.s   f7, f18, f4
  fadd.d    f4, f2, f1
  fsub.d    f9, f19, f7
  fmul.d    f10, f11, f3
  fdiv.d    f1, f18, f10
  fsqrt.d   f0, f19
  fmadd.d   f19, f9, f1, f11
  fcvt.s.w  f6, t3
  fcvt.d.w  f20, t5
  fcvt.d.s  f4, f0
  fcvt.s.d  f21, f18
  fcvt.w.s  t0, f19, rtz
  fcvt.l.d  s6, f11, rtz
  feq.d     t1, f18, f19
  flt.s     a0, f3, f4
  fclass.d  a0, f20
  csrr  s2, mscratch
  csrw  mscratch, t6
  csrrw s7, mscratch, t6
  csrrs t1, mstatus, x0
  csrrc a0, mscratch, x0
  csrrwi a3, mscratch, 0
  fence
  fence.i
  c.addi a0, -2
  c.mv   a1, a2
  c.li   a3, -26
  c.add  a4, a5
  la    s0, tdat
  li    s2, 1317
  li    s9, 1828
  add   a1, s5, s3
  sub   a7, s10, s7
  xor   t1, s7, a7
  or    t5, a2, t1
  and   s10, a3, t5
  addi  t1, a7, -302
  andi  a0, s8, 1149
  ori   t0, s10, 1923
  xori  a5, s11, -1844
  slli  s8, s5, 6
  srli  t6, s7, 54
  srai  a3, a2, 9
  sllw  t3, t2, s2
  sraw  s11, s2, s6
  slt   a5, s8, a2
  sltu  t6, s7, a0
  sltiu a0, a5, 1658
  lui   t5, 0xecd06
  auipc a4, 0xec
  addw  s8, s4, t5
  subw  t2, a4, a0
  addiw s9, a5, -686
  mul   s6, a1, s3
  mulh  t1, s10, s7
  mulhu a3, s3, a1
  mulw  s10, t2, a5
  div   s10, s4, t4
  divu  a5, s9, a3
  rem   s9, a7, t5
  remu  t6, a3, t6
  divw  a3, s9, a4
  remw  s10, t3, t2
  sd    a4, 0(s0)
  ld    t0, 0(s0)
  sw    a3, 0(s0)
  lw    s5, 0(s0)
  lwu   t6, 0(s0)
  lh    a7, 0(s0)
  lbu   a6, 0(s0)
  lr.d      t6, (s0)
  sc.d      a3, a6, (s0)
  amoadd.w  s9, s10, (s0)
  amoswap.d s9, s10, (s0)
  amoand.w  s11, s8, (s0)
  amoor.d   a2, a4, (s0)
  amoxor.w  a7, a1, (s0)
  amomax.d  a3, s5, (s0)
  amominu.w s7, a2, (s0)
  fmv.w.x   f4, s9
  fmv.d.x   f8, s4
  fadd.s    f19, f1, f18
  fsub.s    f7, f9, f1
  fmul.s    f20, f3, f20
  fdiv.s    f11, f18, f1
  fmin.s    f4, f9, f19
  fmax.s    f4, f21, f5
  fsgnj.s   f21, f18, f9
  fadd.d    f8, f19, f6
  fsub.d    f6, f9, f19
  fmul.d    f7, f9, f8
  fdiv.d    f19, f11, f21
  fsqrt.d   f7, f10
  fmadd.d   f11, f9, f5, f20
  fcvt.s.w  f0, s8
  fcvt.d.w  f20, s3
  fcvt.d.s  f7, f8
  fcvt.s.d  f18, f7
  fcvt.w.s  a2, f18, rtz
  fcvt.l.d  t5, f11, rtz
  feq.d     t2, f5, f20
  flt.s     s7, f3, f19
  fclass.d  t0, f7
  csrr  a4, mscratch
  csrw  mscratch, s3
  csrrw t5, mscratch, s3
  csrrs t6, mstatus, x0
  csrrc s11, mscratch, x0
  csrrwi a4, mscratch, 19
  fence
  fence.i
  c.addi a0, 30
  c.mv   a1, a2
  c.li   a3, 25
  c.add  a4, a5
  la    s0, tdat
  li    a3, 1255
  li    s3, -1766
  add   s7, s10, t2
  sub   a4, s7, t3
  xor   t5, t2, s10
  or    s4, t4, s10
  and   s10, s5, s5
  addi  s9, t4, -470
  andi  a4, t2, 1489
  ori   t6, t2, 58
  xori  t6, s11, 1749
  slli  s3, s2, 25
  srli  s9, a0, 8
  srai  s4, a4, 5
  sllw  s10, t6, s3
  sraw  t5, t2, a6
  slt   t5, t5, t2
  sltu  s3, t5, t3
  sltiu s11, a6, 1891
  lui   s7, 0xc2a1
  auipc s10, 0xb9
  addw  s3, t3, s10
  subw  s4, s2, s5
  addiw a7, t5, 1683
  mul   s5, s8, s4
  mulh  s3, a3, s10
  mulhu s5, s8, a7
  mulw  s11, s11, a7
  div   t0, s8, s9
  divu  t1, t0, s6
  rem   s3, s11, s11
  remu  a1, a0, a7
  divw  s3, s6, a7
  remw  t1, t1, s4
  sd    s10, 0(s0)
  ld    s3, 0(s0)
  sw    a5, 0(s0)
  lw    t5, 0(s0)
  lwu   a2, 0(s0)
  lh    a5, 0(s0)
  lbu   a7, 0(s0)
  lr.d      s7, (s0)
  sc.d      t3, t4, (s0)
  amoadd.w  a2, s11, (s0)
  amoswap.d t1, s10, (s0)
  amoand.w  s11, t3, (s0)
  amoor.d   s9, s5, (s0)
  amoxor.w  a5, a4, (s0)
  amomax.d  t5, s6, (s0)
  amominu.w a7, s7, (s0)
  fmv.w.x   f9, a7
  fmv.d.x   f7, a4
  fadd.s    f0, f5, f21
  fsub.s    f6, f7, f6
  fmul.s    f18, f3, f6
  fdiv.s    f10, f19, f3
  fmin.s    f7, f11, f21
  fmax.s    f6, f7, f5
  fsgnj.s   f21, f20, f4
  fadd.d    f9, f7, f0
  fsub.d    f0, f19, f6
  fmul.d    f19, f18, f8
  fdiv.d    f18, f21, f21
  fsqrt.d   f6, f4
  fmadd.d   f0, f3, f10, f11
  fcvt.s.w  f9, t5
  fcvt.d.w  f11, t4
  fcvt.d.s  f7, f4
  fcvt.s.d  f2, f19
  fcvt.w.s  s9, f8, rtz
  fcvt.l.d  t5, f7, rtz
  feq.d     a6, f1, f7
  flt.s     a4, f18, f11
  fclass.d  a7, f0
  csrr  a7, mscratch
  csrw  mscratch, s4
  csrrw s6, mscratch, t6
  csrrs t5, mstatus, x0
  csrrc a1, mscratch, x0
  csrrwi a4, mscratch, 10
  fence
  fence.i
  c.addi a0, -21
  c.mv   a1, a2
  c.li   a3, -11
  c.add  a4, a5
  la    s0, tdat
  li    s11, 1789
  li    t6, -1570
  add   a6, s6, a4
  sub   t2, s9, t6
  xor   t3, a0, s5
  or    a1, t3, t0
  and   t5, a5, a3
  addi  s11, t5, 1498
  andi  s7, a4, 126
  ori   a4, t3, 938
  xori  a7, a5, 1780
  slli  s11, a4, 3
  srli  a5, s9, 55
  srai  t5, s10, 55
  sllw  t2, a3, a5
  sraw  t0, s7, a6
  slt   t1, t0, a1
  sltu  s7, s8, a4
  sltiu t5, a5, 1275
  lui   t0, 0x7d516
  auipc s3, 0xa
  addw  s3, s4, s10
  subw  s4, a3, a6
  addiw t5, t0, 19
  mul   a5, a1, s2
  mulh  t2, t5, a4
  mulhu s2, s5, s9
  mulw  t1, s9, a3
  div   a2, s9, s8
  divu  s4, t4, t0
  rem   t6, a7, s7
  remu  s10, t5, a2
  divw  t3, s6, s5
  remw  s7, a7, t6
  sd    t1, 0(s0)
  ld    s8, 0(s0)
  sw    s6, 0(s0)
  lw    a3, 0(s0)
  lwu   s4, 0(s0)
  lh    s9, 0(s0)
  lbu   a1, 0(s0)
  lr.d      a3, (s0)
  sc.d      t4, t5, (s0)
  amoadd.w  a4, s9, (s0)
  amoswap.d s4, s2, (s0)
  amoand.w  s5, s7, (s0)
  amoor.d   t1, t2, (s0)
  amoxor.w  s6, s11, (s0)
  amomax.d  t5, a3, (s0)
  amominu.w a3, s5, (s0)
  fmv.w.x   f18, t0
  fmv.d.x   f9, t5
  fadd.s    f5, f21, f3
  fsub.s    f19, f11, f11
  fmul.s    f0, f19, f19
  fdiv.s    f7, f0, f19
  fmin.s    f6, f5, f10
  fmax.s    f4, f10, f7
  fsgnj.s   f19, f1, f19
  fadd.d    f4, f7, f18
  fsub.d    f5, f6, f1
  fmul.d    f11, f11, f18
  fdiv.d    f18, f11, f9
  fsqrt.d   f11, f9
  fmadd.d   f21, f8, f21, f9
  fcvt.s.w  f0, a6
  fcvt.d.w  f20, s9
  fcvt.d.s  f0, f11
  fcvt.s.d  f3, f2
  fcvt.w.s  s6, f10, rtz
  fcvt.l.d  s10, f1, rtz
  feq.d     s7, f0, f3
  flt.s     a1, f10, f8
  fclass.d  s3, f2
  csrr  s9, mscratch
  csrw  mscratch, a7
  csrrw s7, mscratch, t5
  csrrs s2, mstatus, x0
  csrrc a2, mscratch, x0
  csrrwi t1, mscratch, 29
  fence
  fence.i
  c.addi a0, -27
  c.mv   a1, a2
  c.li   a3, -32
  c.add  a4, a5
  la    s0, tdat
  li    a1, 1833
  li    s10, 1016
  add   t3, a7, s5
  sub   a3, t0, a4
  xor   s11, s6, a6
  or    t4, t6, s11
  and   s5, t2, t5
  addi  t2, t6, 165
  andi  a5, t3, 1123
  ori   s5, t0, 1070
  xori  a5, a2, 1500
  slli  t1, t2, 0
  srli  s4, a3, 57
  srai  t1, a0, 35
  sllw  s5, t6, s3
  sraw  t3, s8, t1
  slt   s11, s8, t1
  sltu  t1, s9, a3
  sltiu t2, a5, 417
  lui   t0, 0x62457
  auipc s5, 0xcd
  addw  t2, a6, t3
  subw  s4, a0, a0
  addiw s6, s4, -1805
  mul   a5, s4, t5
  mulh  a0, a6, s2
  mulhu t2, s6, a0
  mulw  s4, s2, a6
  div   s2, t6, a5
  divu  a1, s2, t3
  rem   a2, s4, a7
  remu  t5, s11, a2
  divw  a5, s8, a7
  remw  t2, t6, s4
  sd    t2, 0(s0)
  ld    t2, 0(s0)
  sw    a0, 0(s0)
  lw    t4, 0(s0)
  lwu   s9, 0(s0)
  lh    a3, 0(s0)
  lbu   s11, 0(s0)
  lr.d      s3, (s0)
  sc.d      a6, s6, (s0)
  amoadd.w  t0, t2, (s0)
  amoswap.d s4, s6, (s0)
  amoand.w  t4, a4, (s0)
  amoor.d   s5, t5, (s0)
  amoxor.w  t2, s7, (s0)
  amomax.d  t2, s10, (s0)
  amominu.w t3, s8, (s0)
  fmv.w.x   f19, s8
  fmv.d.x   f6, t4
  fadd.s    f2, f19, f11
  fsub.s    f11, f7, f3
  fmul.s    f2, f1, f5
  fdiv.s    f10, f9, f8
  fmin.s    f9, f2, f11
  fmax.s    f19, f21, f18
  fsgnj.s   f0, f21, f11
  fadd.d    f3, f5, f6
  fsub.d    f4, f2, f2
  fmul.d    f9, f1, f1
  fdiv.d    f19, f2, f3
  fsqrt.d   f7, f20
  fmadd.d   f9, f0, f19, f9
  fcvt.s.w  f3, s4
  fcvt.d.w  f8, a4
  fcvt.d.s  f18, f11
  fcvt.s.d  f7, f11
  fcvt.w.s  a1, f20, rtz
  fcvt.l.d  a3, f8, rtz
  feq.d     s8, f18, f1
  flt.s     t5, f9, f19
  fclass.d  t2, f7
  csrr  s2, mscratch
  csrw  mscratch, t2
  csrrw s11, mscratch, a2
  csrrs a7, mstatus, x0
  csrrc a6, mscratch, x0
  csrrwi t2, mscratch, 0
  fence
  fence.i
  c.addi a0, 2
  c.mv   a1, a2
  c.li   a3, 2
  c.add  a4, a5
  la    s0, tdat
  li    s6, 595
  li    a5, -1235
  add   a7, t0, t3
  sub   s5, t5, t4
  xor   s4, a2, a5
  or    a1, s10, a6
  and   s6, s5, a1
  addi  s3, s5, -2029
  andi  t1, t1, 101
  ori   t5, s5, 1402
  xori  s10, s11, 1932
  slli  t5, a6, 43
  srli  a2, s7, 32
  srai  t6, s7, 9
  sllw  s5, s2, s8
  sraw  t3, s2, s2
  slt   s8, s6, a7
  sltu  t1, t3, s2
  sltiu s7, a7, 1246
  lui   t1, 0x5b6fa
  auipc s7, 0xd4
  addw  t5, a5, t5
  subw  a4, t0, s2
  addiw s4, s5, -1328
  mul   a3, s8, s9
  mulh  s11, a6, s11
  mulhu a7, a1, a1
  mulw  a5, s2, a1
  div   s8, s3, t5
  divu  a0, s5, a2
  rem   s6, a1, a4
  remu  a1, s3, s5
  divw  t3, s9, s5
  remw  t6, s9, t0
  sd    a4, 8(s0)
  ld    s3, 8(s0)
  sw    s7, 8(s0)
  lw    s9, 8(s0)
  lwu   s11, 8(s0)
  lh    s6, 8(s0)
  lbu   t4, 8(s0)
  lr.d      t2, (s0)
  sc.d      a2, t2, (s0)
  amoadd.w  t0, a7, (s0)
  amoswap.d s9, t5, (s0)
  amoand.w  s11, a0, (s0)
  amoor.d   t4, a7, (s0)
  amoxor.w  t0, t4, (s0)
  amomax.d  a5, a0, (s0)
  amominu.w a2, a6, (s0)
  fmv.w.x   f18, s4
  fmv.d.x   f7, a2
  fadd.s    f18, f9, f18
  fsub.s    f21, f10, f0
  fmul.s    f1, f5, f18
  fdiv.s    f8, f5, f1
  fmin.s    f7, f1, f5
  fmax.s    f9, f7, f19
  fsgnj.s   f6, f11, f2
  fadd.d    f5, f10, f9
  fsub.d    f8, f21, f4
  fmul.d    f0, f3, f7
  fdiv.d    f3, f9, f18
  fsqrt.d   f6, f10
  fmadd.d   f18, f11, f19, f21
  fcvt.s.w  f19, a3
  fcvt.d.w  f8, t1
  fcvt.d.s  f11, f5
  fcvt.s.d  f6, f8
  fcvt.w.s  s11, f6, rtz
  fcvt.l.d  a2, f3, rtz
  feq.d     s7, f9, f10
  flt.s     s3, f5, f20
  fclass.d  s2, f4
  csrr  t3, mscratch
  csrw  mscratch, a7
  csrrw t3, mscratch, a4
  csrrs t3, mstatus, x0
  csrrc s8, mscratch, x0
  csrrwi t1, mscratch, 15
  fence
  fence.i
  c.addi a0, -22
  c.mv   a1, a2
  c.li   a3, -2
  c.add  a4, a5
  la    s0, tdat
  li    t5, 290
  li    a5, -450
  add   a6, s2, a3
  sub   a2, a7, s2
  xor   s10, s5, a0
  or    s3, a7, t4
  and   s10, s7, s8
  addi  s4, t6, 215
  andi  s5, a5, 1416
  ori   a7, a2, 154
  xori  s10, t5, 419
  slli  t5, s3, 16
  srli  s2, s9, 40
  srai  a7, a1, 25
  sllw  t6, s11, s5
  sraw  s10, s9, a3
  slt   s5, a2, s10
  sltu  s10, t2, t2
  sltiu a7, t4, 1772
  lui   t0, 0xb71d5
  auipc t1, 0xd9
  addw  s10, a5, s4
  subw  s6, a3, s11
  addiw t1, s6, 260
  mul   t6, s9, s3
  mulh  t6, t6, s5
  mulhu s5, t1, a4
  mulw  t1, s10, s3
  div   a2, t1, s8
  divu  s3, s3, t4
  rem   t4, s9, s11
  remu  s7, a7, a0
  divw  s10, t0, t4
  remw  s7, t0, a1
  sd    t5, 8(s0)
  ld    a0, 8(s0)
  sw    t4, 8(s0)
  lw    a4, 8(s0)
  lwu   a1, 8(s0)
  lh    s3, 8(s0)
  lbu   s2, 8(s0)
  lr.d      a0, (s0)
  sc.d      t0, a3, (s0)
  amoadd.w  s10, t2, (s0)
  amoswap.d s11, s8, (s0)
  amoand.w  t4, s6, (s0)
  amoor.d   a5, a7, (s0)
  amoxor.w  a4, s8, (s0)
  amomax.d  s5, s4, (s0)
  amominu.w s11, s3, (s0)
  fmv.w.x   f20, t3
  fmv.d.x   f6, a3
  fadd.s    f2, f10, f3
  fsub.s    f19, f4, f3
  fmul.s    f6, f20, f6
  fdiv.s    f21, f7, f19
  fmin.s    f18, f18, f6
  fmax.s    f20, f6, f9
  fsgnj.s   f5, f9, f7
  fadd.d    f3, f18, f20
  fsub.d    f8, f18, f18
  fmul.d    f18, f19, f10
  fdiv.d    f20, f18, f7
  fsqrt.d   f7, f4
  fmadd.d   f20, f21, f7, f3
  fcvt.s.w  f21, a3
  fcvt.d.w  f5, s4
  fcvt.d.s  f11, f8
  fcvt.s.d  f2, f18
  fcvt.w.s  t2, f18, rtz
  fcvt.l.d  s6, f2, rtz
  feq.d     t6, f6, f10
  flt.s     s7, f4, f19
  fclass.d  t6, f11
  csrr  t5, mscratch
  csrw  mscratch, s4
  csrrw s8, mscratch, s8
  csrrs s4, mstatus, x0
  csrrc t2, mscratch, x0
  csrrwi s8, mscratch, 23
  fence
  fence.i
  c.addi a0, 30
  c.mv   a1, a2
  c.li   a3, 27
  c.add  a4, a5
  la    s0, tdat
  li    s2, 1789
  li    t4, 1610
  add   a3, a0, s2
  sub   t4, t1, s5
  xor   a5, a2, s3
  or    s8, s9, s3
  and   s3, s2, s2
  addi  s8, s6, 1405
  andi  s11, a6, 926
  ori   a0, s10, 1566
  xori  t3, t4, 1764
  slli  t2, a7, 31
  srli  a2, t2, 5
  srai  t0, t4, 55
  sllw  t6, a0, a4
  sraw  s4, s10, s7
  slt   s4, t1, t2
  sltu  t4, t0, t3
  sltiu a3, t2, 356
  lui   a3, 0x59e30
  auipc t4, 0x98
  addw  a1, s3, a2
  subw  a3, t1, s3
  addiw a6, t6, -200
  mul   a4, s9, a3
  mulh  t4, a2, t6
  mulhu s3, t2, s11
  mulw  a7, t3, t1
  div   t3, t0, a6
  divu  t1, t1, t4
  rem   s7, s4, a1
  remu  s8, s6, a5
  divw  s3, s6, t6
  remw  t2, s6, a4
  sd    a0, 0(s0)
  ld    t4, 0(s0)
  sw    s7, 0(s0)
  lw    s9, 0(s0)
  lwu   a4, 0(s0)
  lh    s4, 0(s0)
  lbu   s8, 0(s0)
  lr.d      a1, (s0)
  sc.d      a2, t3, (s0)
  amoadd.w  t2, t2, (s0)
  amoswap.d s5, a0, (s0)
  amoand.w  a4, a2, (s0)
  amoor.d   a3, s2, (s0)
  amoxor.w  t6, s8, (s0)
  amomax.d  a2, s7, (s0)
  amominu.w t6, t5, (s0)
  fmv.w.x   f7, a1
  fmv.d.x   f7, s5
  fadd.s    f18, f0, f9
  fsub.s    f7, f8, f4
  fmul.s    f9, f9, f20
  fdiv.s    f20, f18, f9
  fmin.s    f0, f2, f11
  fmax.s    f19, f4, f1
  fsgnj.s   f5, f9, f1
  fadd.d    f5, f2, f7
  fsub.d    f2, f9, f8
  fmul.d    f9, f9, f10
  fdiv.d    f10, f6, f19
  fsqrt.d   f3, f0
  fmadd.d   f6, f18, f8, f6
  fcvt.s.w  f20, a0
  fcvt.d.w  f8, s7
  fcvt.d.s  f7, f3
  fcvt.s.d  f3, f20
  fcvt.w.s  s4, f19, rtz
  fcvt.l.d  t3, f9, rtz
  feq.d     s3, f19, f1
  flt.s     s3, f18, f10
  fclass.d  a4, f20
  csrr  t0, mscratch
  csrw  mscratch, s9
  csrrw s10, mscratch, a2
  csrrs s2, mstatus, x0
  csrrc t1, mscratch, x0
  csrrwi a7, mscratch, 28
  fence
  fence.i
  c.addi a0, 10
  c.mv   a1, a2
  c.li   a3, -32
  c.add  a4, a5
  la    s0, tdat
  li    a3, 352
  li    a7, -1374
  add   t4, s8, a1
  sub   a1, s6, s10
  xor   a6, t2, t5
  or    s6, s5, t5
  and   s6, a5, a2
  addi  s3, s10, 552
  andi  s9, s10, 524
  ori   a5, t5, 951
  xori  s3, a1, -1588
  slli  s11, a2, 13
  srli  s5, a3, 34
  srai  t3, a5, 15
  sllw  s6, s10, s9
  sraw  s6, s9, s5
  slt   t0, t6, a2
  sltu  t4, a3, a7
  sltiu t4, s6, 1615
  lui   s8, 0x77606
  auipc s8, 0x89
  addw  a5, s5, s10
  subw  t5, s11, t3
  addiw a1, s10, -831
  mul   t6, s10, a7
  mulh  a7, t0, t2
  mulhu a2, a2, a4
  mulw  t3, a0, a4
  div   a5, t2, s7
  divu  t1, t1, a4
  rem   t5, s5, a7
  remu  a7, a7, s9
  divw  t5, a7, a4
  remw  t5, s6, s9
  sd    a6, 0(s0)
  ld    t5, 0(s0)
  sw    a5, 0(s0)
  lw    s8, 0(s0)
  lwu   t3, 0(s0)
  lh    t3, 0(s0)
  lbu   a6, 0(s0)
  lr.d      t0, (s0)
  sc.d      s3, s3, (s0)
  amoadd.w  s10, a7, (s0)
  amoswap.d a3, s6, (s0)
  amoand.w  t0, t1, (s0)
  amoor.d   s2, a5, (s0)
  amoxor.w  s10, s11, (s0)
  amomax.d  a0, a3, (s0)
  amominu.w s7, a1, (s0)
  fmv.w.x   f4, a6
  fmv.d.x   f4, s5
  fadd.s    f21, f5, f0
  fsub.s    f11, f11, f2
  fmul.s    f2, f8, f4
  fdiv.s    f5, f9, f21
  fmin.s    f21, f9, f21
  fmax.s    f4, f6, f20
  fsgnj.s   f3, f10, f20
  fadd.d    f20, f8, f11
  fsub.d    f7, f21, f0
  fmul.d    f2, f19, f21
  fdiv.d    f7, f18, f18
  fsqrt.d   f7, f4
  fmadd.d   f0, f7, f19, f5
  fcvt.s.w  f19, t0
  fcvt.d.w  f0, t2
  fcvt.d.s  f4, f11
  fcvt.s.d  f5, f20
  fcvt.w.s  t0, f21, rtz
  fcvt.l.d  a2, f10, rtz
  feq.d     a6, f19, f20
  flt.s     a5, f3, f5
  fclass.d  t3, f20
  csrr  s3, mscratch
  csrw  mscratch, t1
  csrrw a3, mscratch, t2
  csrrs t3, mstatus, x0
  csrrc s5, mscratch, x0
  csrrwi s3, mscratch, 13
  fence
  fence.i
  c.addi a0, -27
  c.mv   a1, a2
  c.li   a3, -32
  c.add  a4, a5
  la    s0, tdat
  li    s3, 1539
  li    t4, -990
  add   s6, s7, s2
  sub   a2, a2, a4
  xor   a0, t1, s3
  or    t5, a5, t3
  and   t0, s7, a3
  addi  a6, a4, -267
  andi  s8, a5, 1840
  ori   a7, s5, 268
  xori  t2, a3, 793
  slli  s8, s10, 9
  srli  a2, s9, 18
  srai  s2, t2, 23
  sllw  s10, s2, s3
  sraw  s7, s7, s10
  slt   t2, a2, a1
  sltu  a1, t6, t0
  sltiu s4, s6, 1604
  lui   s11, 0x4e867
  auipc s7, 0x60
  addw  a3, s10, s2
  subw  s10, a4, a6
  addiw t0, s8, 666
  mul   a5, a0, s8
  mulh  s3, a3, s4
  mulhu s2, s3, t0
  mulw  s11, t4, s11
  div   s7, s7, a4
  divu  s6, a5, a1
  rem   s6, a0, s9
  remu  a0, t1, s6
  divw  s7, a1, s10
  remw  s7, a3, a1
  sd    a2, 0(s0)
  ld    s9, 0(s0)
  sw    s4, 0(s0)
  lw    t4, 0(s0)
  lwu   a1, 0(s0)
  lh    a6, 0(s0)
  lbu   t6, 0(s0)
  lr.d      a7, (s0)
  sc.d      t3, s11, (s0)
  amoadd.w  t0, a4, (s0)
  amoswap.d a2, a6, (s0)
  amoand.w  s7, a6, (s0)
  amoor.d   t6, s10, (s0)
  amoxor.w  t6, t0, (s0)
  amomax.d  a3, t5, (s0)
  amominu.w t3, a6, (s0)
  fmv.w.x   f19, t5
  fmv.d.x   f4, t5
  fadd.s    f0, f19, f3
  fsub.s    f18, f20, f1
  fmul.s    f7, f8, f19
  fdiv.s    f0, f7, f4
  fmin.s    f0, f5, f6
  fmax.s    f20, f6, f9
  fsgnj.s   f21, f18, f10
  fadd.d    f7, f5, f18
  fsub.d    f4, f9, f5
  fmul.d    f10, f3, f1
  fdiv.d    f6, f10, f8
  fsqrt.d   f11, f1
  fmadd.d   f11, f9, f1, f7
  fcvt.s.w  f5, s2
  fcvt.d.w  f18, a6
  fcvt.d.s  f10, f10
  fcvt.s.d  f4, f8
  fcvt.w.s  a7, f19, rtz
  fcvt.l.d  a2, f7, rtz
  feq.d     s8, f8, f10
  flt.s     s4, f0, f7
  fclass.d  s5, f8
  csrr  s10, mscratch
  csrw  mscratch, s8
  csrrw a1, mscratch, s3
  csrrs s10, mstatus, x0
  csrrc t6, mscratch, x0
  csrrwi t4, mscratch, 12
  fence
  fence.i
  c.addi a0, -31
  c.mv   a1, a2
  c.li   a3, -32
  c.add  a4, a5
  la    s0, tdat
  li    t3, 756
  li    a2, 1358
  add   a1, a7, t1
  sub   a1, a5, a4
  xor   s10, s4, t0
  or    a5, t0, t0
  and   t3, s8, s10
  addi  a5, s7, 2007
  andi  s6, t3, 572
  ori   s4, s5, 766
  xori  t0, a2, -178
  slli  t0, s10, 5
  srli  t2, s4, 35
  srai  s3, a1, 43
  sllw  t1, t6, a0
  sraw  t5, t4, s9
  slt   s11, t5, a6
  sltu  s2, a3, s7
  sltiu a1, a1, 753
  lui   t2, 0x1477f
  auipc a0, 0x6d
  addw  t5, s2, a0
  subw  a6, s7, a2
  addiw a4, s5, -920
  mul   s4, t6, a1
  mulh  s4, a5, a6
  mulhu t3, s2, a4
  mulw  t2, a2, t2
  div   s10, s7, a5
  divu  t0, a0, s10
  rem   a4, t1, t5
  remu  s6, s10, a3
  divw  a4, s9, a5
  remw  a6, s5, s11
  sd    a7, 0(s0)
  ld    s2, 0(s0)
  sw    s10, 0(s0)
  lw    a0, 0(s0)
  lwu   s10, 0(s0)
  lh    t3, 0(s0)
  lbu   s5, 0(s0)
  lr.d      s6, (s0)
  sc.d      t0, s8, (s0)
  amoadd.w  t2, a6, (s0)
  amoswap.d t6, t6, (s0)
  amoand.w  t1, s8, (s0)
  amoor.d   a0, a7, (s0)
  amoxor.w  s6, s8, (s0)
  amomax.d  s5, t4, (s0)
  amominu.w a1, a3, (s0)
  fmv.w.x   f4, s7
  fmv.d.x   f3, a3
  fadd.s    f2, f9, f5
  fsub.s    f10, f7, f2
  fmul.s    f3, f18, f9
  fdiv.s    f19, f9, f8
  fmin.s    f8, f6, f0
  fmax.s    f6, f20, f2
  fsgnj.s   f8, f7, f6
  fadd.d    f0, f21, f0
  fsub.d    f11, f2, f1
  fmul.d    f0, f1, f6
  fdiv.d    f11, f11, f2
  fsqrt.d   f6, f2
  fmadd.d   f10, f1, f4, f9
  fcvt.s.w  f3, s9
  fcvt.d.w  f7, a1
  fcvt.d.s  f5, f7
  fcvt.s.d  f10, f8
  fcvt.w.s  a1, f21, rtz
  fcvt.l.d  t2, f20, rtz
  feq.d     t0, f3, f19
  flt.s     a5, f4, f11
  fclass.d  a1, f9
  csrr  s3, mscratch
  csrw  mscratch, t0
  csrrw t1, mscratch, s2
  csrrs s3, mstatus, x0
  csrrc t6, mscratch, x0
  csrrwi s3, mscratch, 20
  fence
  fence.i
  c.addi a0, 8
  c.mv   a1, a2
  c.li   a3, -4
  c.add  a4, a5
  la    s0, tdat
  li    s3, 1446
  li    t6, -973
  add   t6, a5, a7
  sub   s9, a3, s9
  xor   t4, s4, t1
  or    t4, t6, s3
  and   a5, a7, s8
  addi  a3, t5, 1276
  andi  a4, s10, 119
  ori   s2, t5, 1740
  xori  a6, t1, 1867
  slli  a1, t1, 32
  srli  a6, s11, 44
  srai  a7, s7, 38
  sllw  a3, a3, s11
  sraw  a5, s11, a2
  slt   s9, a0, s6
  sltu  a5, a7, s3
  sltiu a0, t2, 698
  lui   t6, 0x1c465
  auipc a4, 0x9
  addw  t0, t0, a5
  subw  t4, s9, s10
  addiw s9, t0, -18
  mul   a0, t0, t2
  mulh  a7, s6, a3
  mulhu t4, t2, a3
  mulw  a3, a0, s5
  div   a4, s2, a5
  divu  a1, t3, t1
  rem   a7, a6, s11
  remu  a6, s9, t0
  divw  t0, a4, t2
  remw  s4, t0, t1
  sd    s9, 8(s0)
  ld    a7, 8(s0)
  sw    t6, 8(s0)
  lw    a4, 8(s0)
  lwu   a5, 8(s0)
  lh    s3, 8(s0)
  lbu   t4, 8(s0)
  lr.d      t6, (s0)
  sc.d      t3, a5, (s0)
  amoadd.w  s4, a3, (s0)
  amoswap.d s10, a0, (s0)
  amoand.w  s7, s9, (s0)
  amoor.d   s7, s7, (s0)
  amoxor.w  s4, s3, (s0)
  amomax.d  a3, a6, (s0)
  amominu.w a3, s4, (s0)
  fmv.w.x   f20, t5
  fmv.d.x   f8, a5
  fadd.s    f18, f18, f20
  fsub.s    f0, f3, f0
  fmul.s    f8, f0, f7
  fdiv.s    f20, f9, f0
  fmin.s    f18, f18, f19
  fmax.s    f2, f4, f0
  fsgnj.s   f19, f18, f8
  fadd.d    f4, f2, f18
  fsub.d    f7, f1, f11
  fmul.d    f9, f21, f10
  fdiv.d    f2, f19, f7
  fsqrt.d   f19, f6
  fmadd.d   f4, f5, f7, f5
  fcvt.s.w  f8, t1
  fcvt.d.w  f19, t5
  fcvt.d.s  f18, f20
  fcvt.s.d  f1, f10
  fcvt.w.s  t2, f3, rtz
  fcvt.l.d  a1, f20, rtz
  feq.d     s2, f20, f21
  flt.s     s2, f0, f1
  fclass.d  s8, f11
  csrr  t2, mscratch
  csrw  mscratch, t1
  csrrw a4, mscratch, t6
  csrrs s11, mstatus, x0
  csrrc s8, mscratch, x0
  csrrwi s4, mscratch, 16
  fence
  fence.i
  c.addi a0, -3
  c.mv   a1, a2
  c.li   a3, -16
  c.add  a4, a5
  la    s0, tdat
  li    s6, 666
  li    s5, -1589
  add   s3, a2, s2
  sub   s11, t2, t5
  xor   t3, t0, t6
  or    t6, a2, s11
  and   s2, a2, a4
  addi  a4, a0, -1632
  andi  s5, t4, 390
  ori   t6, a0, 560
  xori  s4, t2, -1826
  slli  t2, s9, 49
  srli  a1, a3, 18
  srai  s3, s8, 38
  sllw  a6, a5, t4
  sraw  s7, t3, s11
  slt   a7, a7, s4
  sltu  a6, a6, a5
  sltiu s9, s9, 832
  lui   a7, 0x493e2
  auipc s7, 0x6a
  addw  a7, a7, t5
  subw  a1, a7, t6
  addiw s8, a4, -84
  mul   s2, t0, t5
  mulh  t5, a6, a5
  mulhu t3, a1, t2
  mulw  a2, s2, a0
  div   a6, s8, t0
  divu  a1, t1, s2
  rem   a6, s11, s6
  remu  s10, t1, t4
  divw  s4, t5, s5
  remw  t2, s3, a1
  sd    a5, 8(s0)
  ld    a5, 8(s0)
  sw    a4, 8(s0)
  lw    s3, 8(s0)
  lwu   a6, 8(s0)
  lh    t5, 8(s0)
  lbu   t2, 8(s0)
  lr.d      t4, (s0)
  sc.d      a3, s6, (s0)
  amoadd.w  a5, a6, (s0)
  amoswap.d a2, s3, (s0)
  amoand.w  s2, s9, (s0)
  amoor.d   s11, s2, (s0)
  amoxor.w  s8, s10, (s0)
  amomax.d  s5, s11, (s0)
  amominu.w t0, t6, (s0)
  fmv.w.x   f10, a6
  fmv.d.x   f8, a1
  fadd.s    f5, f11, f11
  fsub.s    f9, f8, f2
  fmul.s    f6, f5, f8
  fdiv.s    f21, f7, f1
  fmin.s    f20, f7, f5
  fmax.s    f7, f5, f7
  fsgnj.s   f1, f20, f8
  fadd.d    f19, f2, f19
  fsub.d    f8, f7, f1
  fmul.d    f18, f0, f6
  fdiv.d    f4, f7, f18
  fsqrt.d   f8, f5
  fmadd.d   f8, f7, f11, f21
  fcvt.s.w  f20, a5
  fcvt.d.w  f21, s4
  fcvt.d.s  f11, f7
  fcvt.s.d  f5, f20
  fcvt.w.s  s10, f6, rtz
  fcvt.l.d  s10, f6, rtz
  feq.d     a7, f11, f11
  flt.s     t1, f20, f18
  fclass.d  s9, f21
  csrr  t6, mscratch
  csrw  mscratch, s3
  csrrw s3, mscratch, s6
  csrrs s9, mstatus, x0
  csrrc t4, mscratch, x0
  csrrwi t0, mscratch, 23
  fence
  fence.i
  c.addi a0, 14
  c.mv   a1, a2
  c.li   a3, -2
  c.add  a4, a5
  la    s0, tdat
  li    t4, 1912
  li    t4, 50
  add   a6, t0, s9
  sub   s4, a0, t0
  xor   a3, s11, a4
  or    s5, t0, s11
  and   t3, a7, a2
  addi  t4, s5, 1255
  andi  s6, a2, 1762
  ori   t6, t0, 1420
  xori  t1, a7, 1078
  slli  t4, s9, 29
  srli  t1, t0, 1
  srai  t6, s5, 19
  sllw  s11, t0, t1
  sraw  a3, a4, a6
  slt   a0, t4, s9
  sltu  s2, s5, s5
  sltiu a4, t4, 588
  lui   t0, 0x12a02
  auipc s5, 0x58
  addw  s8, t0, s8
  subw  s7, s6, t4
  addiw t2, t1, -1210
  mul   s11, t2, a0
  mulh  t0, s7, t1
  mulhu s7, a7, a1
  mulw  s9, a1, s10
  div   a0, a5, t5
  divu  s5, s7, s8
  rem   t0, t1, s8
  remu  t4, s8, t6
  divw  s10, t4, s5
  remw  s8, s4, s4
  sd    s6, 0(s0)
  ld    t0, 0(s0)
  sw    a7, 0(s0)
  lw    s8, 0(s0)
  lwu   a3, 0(s0)
  lh    a6, 0(s0)
  lbu   a3, 0(s0)
  lr.d      s4, (s0)
  sc.d      t2, a6, (s0)
  amoadd.w  t1, t1, (s0)
  amoswap.d a0, t1, (s0)
  amoand.w  s10, a5, (s0)
  amoor.d   a3, s11, (s0)
  amoxor.w  s6, t3, (s0)
  amomax.d  a6, a2, (s0)
  amominu.w s3, a0, (s0)
  fmv.w.x   f9, a2
  fmv.d.x   f10, t2
  fadd.s    f7, f20, f21
  fsub.s    f11, f5, f10
  fmul.s    f9, f1, f2
  fdiv.s    f20, f0, f3
  fmin.s    f20, f6, f4
  fmax.s    f5, f2, f6
  fsgnj.s   f2, f7, f1
  fadd.d    f9, f6, f5
  fsub.d    f6, f2, f4
  fmul.d    f21, f2, f5
  fdiv.d    f21, f5, f19
  fsqrt.d   f4, f10
  fmadd.d   f2, f5, f21, f18
  fcvt.s.w  f9, s5
  fcvt.d.w  f0, t1
  fcvt.d.s  f11, f2
  fcvt.s.d  f20, f4
  fcvt.w.s  a5, f10, rtz
  fcvt.l.d  t6, f6, rtz
  feq.d     s11, f10, f2
  flt.s     s10, f3, f11
  fclass.d  s9, f6
  csrr  a1, mscratch
  csrw  mscratch, s7
  csrrw t3, mscratch, s6
  csrrs a5, mstatus, x0
  csrrc s3, mscratch, x0
  csrrwi a6, mscratch, 6
  fence
  fence.i
  c.addi a0, 1
  c.mv   a1, a2
  c.li   a3, -6
  c.add  a4, a5
  la    s0, tdat
  li    t2, 58
  li    s7, -1838
  add   s5, t5, a6
  sub   a6, t1, a5
  xor   a3, s5, s2
  or    t2, s4, a6
  and   s9, t2, a6
  addi  a5, s3, -847
  andi  s3, a3, 484
  ori   a4, a3, 496
  xori  a7, t3, 565
  slli  t5, s2, 24
  srli  t5, a4, 32
  srai  t5, t4, 33
  sllw  a7, a0, t4
  sraw  t0, s10, s10
  slt   t1, s8, s8
  sltu  a2, t6, a0
  sltiu t5, s10, 774
  lui   s9, 0x7c37a
  auipc s4, 0xce
  addw  t4, s4, a5
  subw  s2, t5, t1
  addiw t5, a1, 1477
  mul   s5, t4, t1
  mulh  t6, t3, a7
  mulhu s6, a4, s2
  mulw  s2, s5, a0
  div   s4, t6, s7
  divu  t6, a0, a6
  rem   a4, a5, s2
  remu  s11, s2, s7
  divw  t1, a1, a1
  remw  t2, a2, t3
  sd    a4, 0(s0)
  ld    s6, 0(s0)
  sw    a4, 0(s0)
  lw    a7, 0(s0)
  lwu   a6, 0(s0)
  lh    s4, 0(s0)
  lbu   t0, 0(s0)
  lr.d      s9, (s0)
  sc.d      a2, a0, (s0)
  amoadd.w  s2, t3, (s0)
  amoswap.d s7, t4, (s0)
  amoand.w  s9, a7, (s0)
  amoor.d   s8, a7, (s0)
  amoxor.w  s6, t6, (s0)
  amomax.d  s11, t0, (s0)
  amominu.w s2, a1, (s0)
  fmv.w.x   f6, t3
  fmv.d.x   f5, s2
  fadd.s    f1, f0, f1
  fsub.s    f2, f7, f20
  fmul.s    f19, f3, f9
  fdiv.s    f8, f21, f20
  fmin.s    f3, f7, f18
  fmax.s    f9, f0, f5
  fsgnj.s   f6, f20, f1
  fadd.d    f7, f10, f20
  fsub.d    f7, f11, f21
  fmul.d    f10, f19, f10
  fdiv.d    f11, f21, f5
  fsqrt.d   f9, f18
  fmadd.d   f3, f7, f0, f11
  fcvt.s.w  f20, t3
  fcvt.d.w  f3, a0
  fcvt.d.s  f3, f19
  fcvt.s.d  f4, f4
  fcvt.w.s  s11, f8, rtz
  fcvt.l.d  s5, f19, rtz
  feq.d     s6, f0, f8
  flt.s     s3, f4, f18
  fclass.d  t2, f10
  csrr  a1, mscratch
  csrw  mscratch, a2
  csrrw a6, mscratch, a7
  csrrs s2, mstatus, x0
  csrrc s9, mscratch, x0
  csrrwi t4, mscratch, 21
  fence
  fence.i
  c.addi a0, -23
  c.mv   a1, a2
  c.li   a3, -22
  c.add  a4, a5
  la    s0, tdat
  li    a6, 1287
  li    t0, -355
  add   t2, a4, t2
  sub   t3, t4, t4
  xor   t6, a7, t2
  or    s8, s10, t1
  and   a6, s2, a1
  addi  s11, t4, 540
  andi  t1, a1, 1884
  ori   s6, a6, 1906
  xori  s11, s9, 1224
  slli  a7, a7, 23
  srli  s6, s8, 22
  srai  t2, s4, 52
  sllw  s11, s10, s9
  sraw  t1, s11, a2
  slt   t0, s3, a2
  sltu  a0, t6, a5
  sltiu s5, t0, 656
  lui   a6, 0xd676e
  auipc s3, 0x87
  addw  s11, a5, a4
  subw  t6, a2, t6
  addiw s10, t4, -523
  mul   a0, t4, a3
  mulh  s4, a6, a4
  mulhu t2, s10, s3
  mulw  a6, a6, s2
  div   s4, t3, a1
  divu  s3, s9, t3
  rem   a3, a3, a7
  remu  s2, s6, t3
  divw  s5, s10, s6
  remw  s7, a2, s7
  sd    s3, 0(s0)
  ld    t6, 0(s0)
  sw    s6, 0(s0)
  lw    t2, 0(s0)
  lwu   s4, 0(s0)
  lh    t5, 0(s0)
  lbu   a7, 0(s0)
  lr.d      s3, (s0)
  sc.d      t3, a5, (s0)
  amoadd.w  s9, s7, (s0)
  amoswap.d t4, t4, (s0)
  amoand.w  s3, t5, (s0)
  amoor.d   a7, s3, (s0)
  amoxor.w  s7, s2, (s0)
  amomax.d  s2, t0, (s0)
  amominu.w a0, s11, (s0)
  fmv.w.x   f1, s8
  fmv.d.x   f6, s5
  fadd.s    f8, f20, f8
  fsub.s    f3, f2, f19
  fmul.s    f20, f10, f18
  fdiv.s    f3, f4, f11
  fmin.s    f18, f4, f3
  fmax.s    f6, f10, f4
  fsgnj.s   f19, f1, f8
  fadd.d    f9, f18, f0
  fsub.d    f11, f20, f4
  fmul.d    f7, f7, f9
  fdiv.d    f3, f19, f7
  fsqrt.d   f7, f20
  fmadd.d   f10, f9, f6, f11
  fcvt.s.w  f10, t1
  fcvt.d.w  f3, a1
  fcvt.d.s  f9, f3
  fcvt.s.d  f3, f21
  fcvt.w.s  a4, f9, rtz
  fcvt.l.d  t2, f3, rtz
  feq.d     s8, f20, f2
  flt.s     s8, f8, f8
  fclass.d  a0, f7
  csrr  a1, mscratch
  csrw  mscratch, a0
  csrrw s2, mscratch, a3
  csrrs s4, mstatus, x0
  csrrc a7, mscratch, x0
  csrrwi s6, mscratch, 5
  fence
  fence.i
  c.addi a0, -18
  c.mv   a1, a2
  c.li   a3, 23
  c.add  a4, a5
  la    s0, tdat
  li    a0, 1543
  li    s9, 1103
  add   s11, t3, s2
  sub   s10, t0, t6
  xor   a5, s6, a2
  or    t5, s4, s3
  and   a7, a6, t6
  addi  s3, a5, -1398
  andi  s11, t1, 1289
  ori   s8, a0, 619
  xori  s7, s3, -953
  slli  a2, a1, 27
  srli  a4, a6, 36
  srai  s8, t3, 8
  sllw  s7, s9, a0
  sraw  a1, a0, a4
  slt   t4, a3, s7
  sltu  t3, s2, t6
  sltiu t2, a0, 666
  lui   a0, 0xc7552
  auipc s3, 0x26
  addw  a1, s8, s7
  subw  s7, s6, t5
  addiw a4, t0, 1852
  mul   s10, a7, s4
  mulh  s7, s6, t6
  mulhu s10, t3, s7
  mulw  a0, s9, a6
  div   t0, a5, s3
  divu  a2, s9, a1
  rem   a0, s11, a2
  remu  s9, a3, s3
  divw  a6, a4, s9
  remw  t4, s4, s4
  sd    s11, 0(s0)
  ld    t1, 0(s0)
  sw    s3, 0(s0)
  lw    a7, 0(s0)
  lwu   s3, 0(s0)
  lh    t0, 0(s0)
  lbu   a0, 0(s0)
  lr.d      s10, (s0)
  sc.d      s11, t5, (s0)
  amoadd.w  s7, s6, (s0)
  amoswap.d t3, a2, (s0)
  amoand.w  s2, s5, (s0)
  amoor.d   s5, t5, (s0)
  amoxor.w  s4, s5, (s0)
  amomax.d  s11, a0, (s0)
  amominu.w s2, t6, (s0)
  fmv.w.x   f0, a6
  fmv.d.x   f10, a7
  fadd.s    f21, f0, f20
  fsub.s    f8, f3, f9
  fmul.s    f8, f8, f3
  fdiv.s    f7, f21, f1
  fmin.s    f10, f9, f4
  fmax.s    f19, f9, f2
  fsgnj.s   f19, f6, f20
  fadd.d    f19, f2, f19
  fsub.d    f20, f3, f11
  fmul.d    f5, f18, f11
  fdiv.d    f4, f1, f20
  fsqrt.d   f20, f18
  fmadd.d   f8, f9, f6, f6
  fcvt.s.w  f3, s7
  fcvt.d.w  f11, s4
  fcvt.d.s  f11, f18
  fcvt.s.d  f0, f11
  fcvt.w.s  s7, f3, rtz
  fcvt.l.d  s7, f6, rtz
  feq.d     s8, f7, f11
  flt.s     a1, f4, f8
  fclass.d  s2, f0
  csrr  t6, mscratch
  csrw  mscratch, s2
  csrrw s9, mscratch, t0
  csrrs s4, mstatus, x0
  csrrc s3, mscratch, x0
  csrrwi a3, mscratch, 4
  fence
  fence.i
  c.addi a0, -6
  c.mv   a1, a2
  c.li   a3, 11
  c.add  a4, a5
  la    s0, tdat
  li    a7, 950
  li    a7, 1937
  add   s3, a4, t1
  sub   s2, t3, a7
  xor   t3, t0, s10
  or    a4, t5, a5
  and   s10, s11, t3
  addi  a6, a3, -1944
  andi  t1, a3, 1507
  ori   s9, s4, 755
  xori  t0, t6, 1519
  slli  t6, a0, 30
  srli  s4, a7, 30
  srai  t2, a4, 19
  sllw  t3, t2, t0
  sraw  s8, a7, s8
  slt   a3, a0, t1
  sltu  a1, t2, s9
  sltiu a0, a7, 648
  lui   t2, 0x6a286
  auipc s2, 0x1c
  addw  a5, a6, t1
  subw  s7, a3, a5
  addiw a4, a6, -967
  mul   s9, t2, s4
  mulh  t3, s9, t4
  mulhu s3, s11, a3
  mulw  a2, s2, a2
  div   a3, s10, t2
  divu  t6, a5, s3
  rem   a5, s10, t6
  remu  s7, t4, s2
  divw  s9, t5, t6
  remw  s7, a6, s5
  sd    t1, 8(s0)
  ld    t2, 8(s0)
  sw    t0, 8(s0)
  lw    s8, 8(s0)
  lwu   a0, 8(s0)
  lh    a2, 8(s0)
  lbu   a6, 8(s0)
  lr.d      t4, (s0)
  sc.d      t0, s10, (s0)
  amoadd.w  a3, a1, (s0)
  amoswap.d s5, s6, (s0)
  amoand.w  s7, s8, (s0)
  amoor.d   a6, a6, (s0)
  amoxor.w  t2, a5, (s0)
  amomax.d  a5, a0, (s0)
  amominu.w t6, a1, (s0)
  fmv.w.x   f6, a2
  fmv.d.x   f4, s6
  fadd.s    f3, f7, f9
  fsub.s    f4, f10, f1
  fmul.s    f10, f3, f18
  fdiv.s    f2, f5, f2
  fmin.s    f7, f9, f4
  fmax.s    f11, f10, f10
  fsgnj.s   f21, f2, f19
  fadd.d    f20, f8, f9
  fsub.d    f19, f2, f11
  fmul.d    f7, f21, f2
  fdiv.d    f18, f9, f1
  fsqrt.d   f21, f21
  fmadd.d   f3, f10, f19, f10
  fcvt.s.w  f20, t1
  fcvt.d.w  f1, a1
  fcvt.d.s  f4, f10
  fcvt.s.d  f6, f4
  fcvt.w.s  s10, f5, rtz
  fcvt.l.d  a0, f4, rtz
  feq.d     a7, f6, f10
  flt.s     s2, f1, f10
  fclass.d  a5, f3
  csrr  t0, mscratch
  csrw  mscratch, a1
  csrrw t0, mscratch, s2
  csrrs s9, mstatus, x0
  csrrc s2, mscratch, x0
  csrrwi a1, mscratch, 27
  fence
  fence.i
  c.addi a0, -1
  c.mv   a1, a2
  c.li   a3, 11
  c.add  a4, a5
  la    s0, tdat
  li    t5, 263
  li    a0, -1665
  add   s8, s3, a6
  sub   s9, s10, s7
  xor   a4, a6, a7
  or    t6, a1, t5
  and   s7, a5, s5
  addi  t4, t3, -1529
  andi  s4, s9, 1305
  ori   t2, s4, 1636
  xori  s3, a5, -867
  slli  s10, s9, 13
  srli  t4, a6, 15
  srai  s9, t3, 1
  sllw  t1, t5, a2
  sraw  t5, a6, s8
  slt   s3, s3, s9
  sltu  t5, a4, s9
  sltiu a1, t5, 685
  lui   t4, 0xec8f9
  auipc s3, 0x9
  addw  a5, s9, a1
  subw  s4, a2, a4
  addiw s2, t5, -8
  mul   s7, s8, a3
  mulh  s10, s9, s4
  mulhu t1, a4, a1
  mulw  s2, a5, a4
  div   s11, a5, t5
  divu  t6, a4, a0
  rem   s2, a1, t3
  remu  s8, s4, s6
  divw  s10, a7, s2
  remw  s5, t0, t6
  sd    a1, 8(s0)
  ld    t4, 8(s0)
  sw    s10, 8(s0)
  lw    s10, 8(s0)
  lwu   s2, 8(s0)
  lh    s9, 8(s0)
  lbu   a6, 8(s0)
  lr.d      t2, (s0)
  sc.d      s2, s4, (s0)
  amoadd.w  t2, t2, (s0)
  amoswap.d a5, s10, (s0)
  amoand.w  a3, s10, (s0)
  amoor.d   a5, a3, (s0)
  amoxor.w  a6, s9, (s0)
  amomax.d  a3, s4, (s0)
  amominu.w a2, a2, (s0)
  fmv.w.x   f3, t3
  fmv.d.x   f7, t2
  fadd.s    f11, f18, f11
  fsub.s    f7, f4, f21
  fmul.s    f7, f5, f20
  fdiv.s    f8, f4, f10
  fmin.s    f11, f10, f19
  fmax.s    f5, f4, f10
  fsgnj.s   f2, f7, f18
  fadd.d    f0, f19, f7
  fsub.d    f11, f21, f4
  fmul.d    f9, f21, f18
  fdiv.d    f6, f10, f4
  fsqrt.d   f11, f11
  fmadd.d   f0, f8, f9, f20
  fcvt.s.w  f3, a1
  fcvt.d.w  f19, s4
  fcvt.d.s  f6, f20
  fcvt.s.d  f9, f21
  fcvt.w.s  s8, f8, rtz
  fcvt.l.d  s7, f18, rtz
  feq.d     a0, f7, f10
  flt.s     s3, f8, f19
  fclass.d  s7, f0
  csrr  s7, mscratch
  csrw  mscratch, a6
  csrrw s9, mscratch, a3
  csrrs a2, mstatus, x0
  csrrc t2, mscratch, x0
  csrrwi a1, mscratch, 13
  fence
  fence.i
  c.addi a0, 25
  c.mv   a1, a2
  c.li   a3, -10
  c.add  a4, a5
  la    s0, tdat
  li    s3, 615
  li    s4, 522
  add   s2, t3, t5
  sub   t0, a6, a2
  xor   s4, s5, t5
  or    s7, a7, a1
  and   s6, a2, a5
  addi  s4, t1, -995
  andi  s4, t0, 1108
  ori   t6, a6, 647
  xori  t4, s6, 1952
  slli  t0, a1, 44
  srli  s8, s2, 51
  srai  a1, t4, 48
  sllw  s6, t0, s9
  sraw  a4, a1, s7
  slt   t1, s3, t0
  sltu  t5, a0, s11
  sltiu s7, s3, 1238
  lui   a5, 0x892fc
  auipc a3, 0xe8
  addw  s10, t1, t3
  subw  s2, s11, t4
  addiw s5, t0, -1022
  mul   s4, s7, a6
  mulh  s2, s7, a2
  mulhu a3, s5, t6
  mulw  a7, a3, t1
  div   t0, t5, s2
  divu  s5, s4, a1
  rem   a0, s10, a3
  remu  a2, a6, a7
  divw  s6, s11, a2
  remw  t3, a5, t6
  sd    a7, 0(s0)
  ld    s7, 0(s0)
  sw    s5, 0(s0)
  lw    s2, 0(s0)
  lwu   a2, 0(s0)
  lh    s10, 0(s0)
  lbu   s10, 0(s0)
  lr.d      a3, (s0)
  sc.d      s11, s11, (s0)
  amoadd.w  s3, s9, (s0)
  amoswap.d a1, s9, (s0)
  amoand.w  s6, t1, (s0)
  amoor.d   t6, s11, (s0)
  amoxor.w  s3, t2, (s0)
  amomax.d  s4, t2, (s0)
  amominu.w s5, a1, (s0)
  fmv.w.x   f2, a7
  fmv.d.x   f3, s11
  fadd.s    f18, f6, f19
  fsub.s    f11, f11, f5
  fmul.s    f9, f1, f7
  fdiv.s    f5, f6, f7
  fmin.s    f2, f7, f3
  fmax.s    f1, f4, f2
  fsgnj.s   f3, f4, f1
  fadd.d    f0, f0, f0
  fsub.d    f0, f21, f4
  fmul.d    f2, f1, f19
  fdiv.d    f1, f10, f6
  fsqrt.d   f5, f3
  fmadd.d   f1, f11, f4, f1
  fcvt.s.w  f4, s11
  fcvt.d.w  f6, s9
  fcvt.d.s  f8, f20
  fcvt.s.d  f4, f0
  fcvt.w.s  s11, f3, rtz
  fcvt.l.d  s8, f19, rtz
  feq.d     s5, f18, f18
  flt.s     a2, f9, f10
  fclass.d  s10, f7
  csrr  a0, mscratch
  csrw  mscratch, t4
  csrrw s5, mscratch, s6
  csrrs s2, mstatus, x0
  csrrc t4, mscratch, x0
  csrrwi a5, mscratch, 4
  fence
  fence.i
  c.addi a0, 13
  c.mv   a1, a2
  c.li   a3, 26
  c.add  a4, a5
  la    s0, tdat
  li    t6, 1942
  li    a4, -798
  add   s9, a0, s8
  sub   a1, a4, a5
  xor   s5, a2, t1
  or    s11, s5, s10
  and   t1, a3, s8
  addi  a1, s11, -354
  andi  s3, a7, 765
  ori   t5, s3, 807
  xori  s5, s5, 139
  slli  s10, a7, 19
  srli  s5, a3, 54
  srai  a0, a3, 51
  sllw  s5, t6, s4
  sraw  a6, a6, a0
  slt   s5, s9, t4
  sltu  s2, s5, s3
  sltiu t6, t3, 248
  lui   a6, 0xfb2f5
  auipc a1, 0x67
  addw  a6, s2, a6
  subw  s7, t4, t6
  addiw a5, a5, 413
  mul   s6, t1, a2
  mulh  t3, s7, t2
  mulhu s4, a3, s2
  mulw  s6, a6, s7
  div   t5, s11, a1
  divu  t6, s8, a4
  rem   s5, a7, t5
  remu  s7, a1, t1
  divw  a5, a6, s7
  remw  s6, s8, s9
  sd    t2, 8(s0)
  ld    s7, 8(s0)
  sw    t5, 8(s0)
  lw    a1, 8(s0)
  lwu   s5, 8(s0)
  lh    a5, 8(s0)
  lbu   a1, 8(s0)
  lr.d      s10, (s0)
  sc.d      t5, t2, (s0)
  amoadd.w  t4, s5, (s0)
  amoswap.d t5, t2, (s0)
  amoand.w  t6, s6, (s0)
  amoor.d   a7, t6, (s0)
  amoxor.w  s2, t5, (s0)
  amomax.d  s9, t0, (s0)
  amominu.w a5, a7, (s0)
  fmv.w.x   f5, t1
  fmv.d.x   f11, t3
  fadd.s    f18, f21, f11
  fsub.s    f4, f4, f18
  fmul.s    f7, f1, f20
  fdiv.s    f20, f21, f8
  fmin.s    f20, f18, f6
  fmax.s    f9, f2, f4
  fsgnj.s   f19, f11, f1
  fadd.d    f0, f3, f19
  fsub.d    f1, f21, f21
  fmul.d    f19, f8, f6
  fdiv.d    f7, f19, f3
  fsqrt.d   f7, f1
  fmadd.d   f8, f5, f21, f9
  fcvt.s.w  f21, a4
  fcvt.d.w  f6, t3
  fcvt.d.s  f9, f6
  fcvt.s.d  f2, f8
  fcvt.w.s  s2, f6, rtz
  fcvt.l.d  s7, f9, rtz
  feq.d     s6, f5, f10
  flt.s     t4, f9, f7
  fclass.d  s8, f1
  csrr  s8, mscratch
  csrw  mscratch, s6
  csrrw s8, mscratch, t0
  csrrs t0, mstatus, x0
  csrrc s5, mscratch, x0
  csrrwi s10, mscratch, 0
  fence
  fence.i
  c.addi a0, 8
  c.mv   a1, a2
  c.li   a3, -7
  c.add  a4, a5
  la    s0, tdat
  li    t4, 102
  li    t0, 1672
  add   s6, s4, s6
  sub   a0, t6, t3
  xor   a6, s9, t4
  or    a6, s6, t6
  and   t1, a1, a4
  addi  s2, a3, -1673
  andi  s2, t1, 684
  ori   s3, a4, 810
  xori  a5, s5, 845
  slli  t6, s6, 18
  srli  a3, t5, 20
  srai  a1, s4, 0
  sllw  t0, a5, s7
  sraw  a7, a3, s2
  slt   s3, a5, a0
  sltu  s11, a6, a3
  sltiu a2, t2, 109
  lui   s8, 0x7bfd0
  auipc t1, 0x58
  addw  s2, s10, a6
  subw  s6, t3, a2
  addiw a1, s8, -540
  mul   t2, t4, a7
  mulh  t1, s9, a1
  mulhu t0, s7, s9
  mulw  a6, a2, s10
  div   s8, s11, s11
  divu  t5, s9, t4
  rem   s10, s10, s4
  remu  a0, t0, s9
  divw  a4, t6, s6
  remw  t6, s11, s9
  sd    s5, 0(s0)
  ld    s11, 0(s0)
  sw    s6, 0(s0)
  lw    s11, 0(s0)
  lwu   a0, 0(s0)
  lh    a7, 0(s0)
  lbu   s7, 0(s0)
  lr.d      t0, (s0)
  sc.d      s2, s9, (s0)
  amoadd.w  t4, s7, (s0)
  amoswap.d s11, a1, (s0)
  amoand.w  s7, a4, (s0)
  amoor.d   a0, t0, (s0)
  amoxor.w  a1, s5, (s0)
  amomax.d  a6, s11, (s0)
  amominu.w s4, t5, (s0)
  fmv.w.x   f9, s9
  fmv.d.x   f11, t2
  fadd.s    f10, f5, f18
  fsub.s    f19, f3, f6
  fmul.s    f0, f20, f11
  fdiv.s    f5, f9, f1
  fmin.s    f0, f19, f10
  fmax.s    f18, f19, f20
  fsgnj.s   f20, f21, f10
  fadd.d    f6, f20, f1
  fsub.d    f5, f7, f19
  fmul.d    f2, f18, f11
  fdiv.d    f9, f2, f2
  fsqrt.d   f6, f5
  fmadd.d   f7, f7, f10, f7
  fcvt.s.w  f7, a5
  fcvt.d.w  f18, t0
  fcvt.d.s  f7, f18
  fcvt.s.d  f1, f10
  fcvt.w.s  s11, f10, rtz
  fcvt.l.d  s7, f8, rtz
  feq.d     s8, f0, f4
  flt.s     t0, f21, f9
  fclass.d  t3, f6
  csrr  t5, mscratch
  csrw  mscratch, a2
  csrrw s2, mscratch, a1
  csrrs t4, mstatus, x0
  csrrc a7, mscratch, x0
  csrrwi a4, mscratch, 3
  fence
  fence.i
  c.addi a0, -25
  c.mv   a1, a2
  c.li   a3, 26
  c.add  a4, a5
  la    s0, tdat
  li    a4, 701
  li    t2, -1637
  add   s11, t1, t4
  sub   a7, s7, s3
  xor   a0, s8, a0
  or    s6, s10, s9
  and   s4, t3, a0
  addi  s2, a4, -1098
  andi  a3, a5, 1914
  ori   s7, a6, 1195
  xori  a0, t2, -563
  slli  a1, t6, 39
  srli  a1, t3, 29
  srai  t4, s5, 15
  sllw  s6, s9, s10
  sraw  s4, s5, a2
  slt   a5, s2, s10
  sltu  s7, a5, a1
  sltiu t2, t1, 243
  lui   t1, 0xdc03c
  auipc s10, 0x3a
  addw  s9, a0, a1
  subw  t4, t0, a7
  addiw s5, a1, -1850
  mul   t5, t2, s8
  mulh  s3, s10, t4
  mulhu s9, a5, s11
  mulw  a2, s7, a2
  div   a1, t5, t2
  divu  s4, s4, s9
  rem   a6, a6, a0
  remu  a3, s6, s2
  divw  s2, s8, s8
  remw  a5, t1, t5
  sd    t2, 8(s0)
  ld    t3, 8(s0)
  sw    s10, 8(s0)
  lw    a2, 8(s0)
  lwu   s6, 8(s0)
  lh    s6, 8(s0)
  lbu   t0, 8(s0)
  lr.d      s11, (s0)
  sc.d      s3, s11, (s0)
  amoadd.w  s7, s6, (s0)
  amoswap.d s10, s6, (s0)
  amoand.w  t3, a6, (s0)
  amoor.d   a3, s2, (s0)
  amoxor.w  s8, s6, (s0)
  amomax.d  t4, s8, (s0)
  amominu.w s3, s9, (s0)
  fmv.w.x   f5, s7
  fmv.d.x   f11, t5
  fadd.s    f5, f6, f21
  fsub.s    f1, f4, f0
  fmul.s    f20, f20, f10
  fdiv.s    f11, f2, f18
  fmin.s    f0, f2, f20
  fmax.s    f7, f5, f6
  fsgnj.s   f9, f21, f3
  fadd.d    f2, f9, f10
  fsub.d    f20, f0, f19
  fmul.d    f8, f18, f9
  fdiv.d    f9, f6, f21
  fsqrt.d   f4, f8
  fmadd.d   f10, f10, f3, f20
  fcvt.s.w  f6, s3
  fcvt.d.w  f10, t2
  fcvt.d.s  f0, f3
  fcvt.s.d  f1, f6
  fcvt.w.s  t5, f9, rtz
  fcvt.l.d  a7, f1, rtz
  feq.d     s9, f9, f20
  flt.s     s2, f5, f8
  fclass.d  a7, f18
  csrr  t2, mscratch
  csrw  mscratch, a1
  csrrw s7, mscratch, a3
  csrrs t6, mstatus, x0
  csrrc t2, mscratch, x0
  csrrwi a6, mscratch, 22
  fence
  fence.i
  c.addi a0, 19
  c.mv   a1, a2
  c.li   a3, -2
  c.add  a4, a5
  la    s0, tdat
  li    s2, 1980
  li    t3, 1874
  add   s10, a0, a2
  sub   a7, s4, a7
  xor   s8, a6, s6
  or    t2, a3, t1
  and   a7, s5, s9
  addi  a6, t6, 108
  andi  s5, t1, 1835
  ori   s2, t5, 249
  xori  s2, a4, 476
  slli  t1, a4, 19
  srli  a7, a5, 2
  srai  s8, a5, 8
  sllw  s5, s8, s3
  sraw  s3, t2, t5
  slt   a2, a5, s10
  sltu  a5, t3, t4
  sltiu a4, s7, 1090
  lui   a7, 0xacbb7
  auipc s11, 0xa5
  addw  s6, s9, t5
  subw  s11, s9, t6
  addiw a4, t6, -775
  mul   t2, s7, a1
  mulh  s7, s8, t3
  mulhu a3, a5, a6
  mulw  s6, t0, s4
  div   a2, s9, s11
  divu  a7, t4, a2
  rem   a3, a5, s5
  remu  s5, s6, s9
  divw  s2, a4, t3
  remw  t3, a7, t6
  sd    t1, 0(s0)
  ld    a4, 0(s0)
  sw    s2, 0(s0)
  lw    t0, 0(s0)
  lwu   a6, 0(s0)
  lh    s3, 0(s0)
  lbu   t5, 0(s0)
  lr.d      t0, (s0)
  sc.d      t4, t3, (s0)
  amoadd.w  a4, a1, (s0)
  amoswap.d s10, t1, (s0)
  amoand.w  t3, s7, (s0)
  amoor.d   s7, a0, (s0)
  amoxor.w  s11, a1, (s0)
  amomax.d  t2, t1, (s0)
  amominu.w s2, a2, (s0)
  fmv.w.x   f0, a4
  fmv.d.x   f20, a2
  fadd.s    f9, f19, f8
  fsub.s    f9, f8, f2
  fmul.s    f8, f6, f20
  fdiv.s    f21, f18, f19
  fmin.s    f0, f20, f18
  fmax.s    f4, f9, f11
  fsgnj.s   f4, f21, f6
  fadd.d    f1, f21, f7
  fsub.d    f5, f11, f1
  fmul.d    f11, f6, f6
  fdiv.d    f9, f8, f1
  fsqrt.d   f7, f1
  fmadd.d   f0, f19, f0, f10
  fcvt.s.w  f4, t2
  fcvt.d.w  f19, t6
  fcvt.d.s  f4, f6
  fcvt.s.d  f19, f18
  fcvt.w.s  a5, f4, rtz
  fcvt.l.d  s3, f7, rtz
  feq.d     s6, f0, f3
  flt.s     a2, f5, f19
  fclass.d  t3, f0
  csrr  t0, mscratch
  csrw  mscratch, a5
  csrrw s7, mscratch, s8
  csrrs a0, mstatus, x0
  csrrc a2, mscratch, x0
  csrrwi t6, mscratch, 18
  fence
  fence.i
  c.addi a0, -13
  c.mv   a1, a2
  c.li   a3, 12
  c.add  a4, a5
  la    s0, tdat
  li    s8, 571
  li    s6, -978
  add   s2, t3, t2
  sub   t2, a4, s5
  xor   s3, t3, t5
  or    a1, a4, t3
  and   t2, s4, t5
  addi  a3, a1, -3
  andi  a1, a7, 524
  ori   t3, s3, 1303
  xori  a5, s8, 432
  slli  s10, a1, 5
  srli  a2, a4, 35
  srai  s8, a7, 22
  sllw  s8, s9, a2
  sraw  s7, s8, t3
  slt   a7, t2, t6
  sltu  a1, s10, a7
  sltiu t4, s9, 808
  lui   t3, 0xaee1f
  auipc s8, 0xb1
  addw  a4, s6, t6
  subw  s4, a2, a2
  addiw a2, s8, 1443
  mul   t5, a6, t2
  mulh  s5, t1, s2
  mulhu s4, s11, s2
  mulw  s3, a5, s4
  div   s11, s9, t3
  divu  t1, t4, a5
  rem   t1, s5, a5
  remu  t1, a4, a4
  divw  a2, t2, a2
  remw  s9, s7, a1
  sd    t6, 8(s0)
  ld    t3, 8(s0)
  sw    t3, 8(s0)
  lw    s10, 8(s0)
  lwu   a2, 8(s0)
  lh    a1, 8(s0)
  lbu   a4, 8(s0)
  lr.d      s10, (s0)
  sc.d      t6, t3, (s0)
  amoadd.w  t1, a5, (s0)
  amoswap.d t4, a6, (s0)
  amoand.w  s10, s4, (s0)
  amoor.d   t1, a7, (s0)
  amoxor.w  s7, a7, (s0)
  amomax.d  s11, s2, (s0)
  amominu.w t5, a4, (s0)
  fmv.w.x   f2, s4
  fmv.d.x   f18, s6
  fadd.s    f20, f18, f2
  fsub.s    f3, f11, f1
  fmul.s    f0, f5, f21
  fdiv.s    f21, f18, f7
  fmin.s    f8, f0, f18
  fmax.s    f20, f9, f18
  fsgnj.s   f3, f5, f4
  fadd.d    f7, f1, f1
  fsub.d    f1, f9, f11
  fmul.d    f6, f2, f10
  fdiv.d    f7, f18, f1
  fsqrt.d   f10, f5
  fmadd.d   f19, f7, f18, f8
  fcvt.s.w  f2, a3
  fcvt.d.w  f2, s4
  fcvt.d.s  f9, f7
  fcvt.s.d  f19, f18
  fcvt.w.s  a7, f10, rtz
  fcvt.l.d  t5, f7, rtz
  feq.d     a0, f9, f8
  flt.s     s5, f9, f10
  fclass.d  a3, f8
  csrr  t0, mscratch
  csrw  mscratch, t5
  csrrw a1, mscratch, t4
  csrrs s10, mstatus, x0
  csrrc t0, mscratch, x0
  csrrwi t4, mscratch, 26
  fence
  fence.i
  c.addi a0, -9
  c.mv   a1, a2
  c.li   a3, 22
  c.add  a4, a5
  la    s0, tdat
  li    t2, 376
  li    t1, -1236
  add   a1, s3, a0
  sub   s10, s4, a1
  xor   s6, a7, t1
  or    t5, a2, t5
  and   t3, a1, a6
  addi  s9, s4, 1564
  andi  a0, s6, 1062
  ori   s6, s2, 864
  xori  a6, t4, 501
  slli  t4, t5, 52
  srli  a6, s3, 39
  srai  a2, a6, 36
  sllw  t5, s11, t2
  sraw  a5, a2, t1
  slt   t2, t5, t4
  sltu  a3, t3, s5
  sltiu s9, t0, 1059
  lui   a6, 0x2dc4e
  auipc a1, 0xf0
  addw  s2, t5, s8
  subw  t0, t1, a4
  addiw t6, s5, -485
  mul   a2, s11, s6
  mulh  a7, s5, s11
  mulhu s3, s2, t2
  mulw  a1, t6, t2
  div   a0, a0, t6
  divu  a4, t3, t4
  rem   s3, s3, t4
  remu  a5, t4, s6
  divw  a0, a0, a1
  remw  a2, s9, t2
  sd    t3, 0(s0)
  ld    a7, 0(s0)
  sw    t4, 0(s0)
  lw    t5, 0(s0)
  lwu   s10, 0(s0)
  lh    a5, 0(s0)
  lbu   a7, 0(s0)
  lr.d      s9, (s0)
  sc.d      a0, a4, (s0)
  amoadd.w  s9, t3, (s0)
  amoswap.d s9, a3, (s0)
  amoand.w  a4, t1, (s0)
  amoor.d   t4, s4, (s0)
  amoxor.w  t1, s9, (s0)
  amomax.d  a3, t3, (s0)
  amominu.w s7, s5, (s0)
  fmv.w.x   f11, t2
  fmv.d.x   f10, t1
  fadd.s    f2, f6, f0
  fsub.s    f3, f0, f4
  fmul.s    f8, f5, f1
  fdiv.s    f7, f10, f6
  fmin.s    f21, f8, f0
  fmax.s    f9, f7, f8
  fsgnj.s   f11, f1, f10
  fadd.d    f4, f6, f20
  fsub.d    f2, f4, f4
  fmul.d    f3, f6, f3
  fdiv.d    f5, f9, f20
  fsqrt.d   f21, f19
  fmadd.d   f4, f18, f0, f2
  fcvt.s.w  f5, a4
  fcvt.d.w  f10, t4
  fcvt.d.s  f9, f4
  fcvt.s.d  f19, f20
  fcvt.w.s  s9, f2, rtz
  fcvt.l.d  a1, f7, rtz
  feq.d     s4, f20, f3
  flt.s     s8, f4, f7
  fclass.d  a2, f2
  csrr  t4, mscratch
  csrw  mscratch, t5
  csrrw a4, mscratch, s6
  csrrs s3, mstatus, x0
  csrrc t1, mscratch, x0
  csrrwi a2, mscratch, 28
  fence
  fence.i
  c.addi a0, -27
  c.mv   a1, a2
  c.li   a3, -15
  c.add  a4, a5
  la    s0, tdat
  li    t6, 1518
  li    t4, 1816
  add   t4, s7, s4
  sub   s9, s11, s9
  xor   a6, t5, s4
  or    a5, s2, a1
  and   t6, a6, t5
  addi  a6, a2, 1917
  andi  a3, s3, 759
  ori   s8, t3, 302
  xori  a4, s10, 165
  slli  t1, t4, 15
  srli  a6, a1, 14
  srai  a6, t4, 10
  sllw  a3, s5, a0
  sraw  a1, t4, t5
  slt   a1, s11, t5
  sltu  a1, t0, t3
  sltiu t6, t4, 1027
  lui   s10, 0x9ebe2
  auipc s7, 0x3c
  addw  t4, s10, s8
  subw  s4, t3, a0
  addiw a0, t3, 222
  mul   s9, s7, s3
  mulh  t6, t5, s5
  mulhu t4, a1, s6
  mulw  a0, a2, s9
  div   a7, a0, a0
  divu  a7, t2, a4
  rem   a2, s11, a1
  remu  s4, s4, t4
  divw  a7, s11, a6
  remw  s8, t4, s2
  sd    s10, 8(s0)
  ld    a6, 8(s0)
  sw    t6, 8(s0)
  lw    a0, 8(s0)
  lwu   s11, 8(s0)
  lh    t4, 8(s0)
  lbu   t1, 8(s0)
  lr.d      s5, (s0)
  sc.d      a7, t3, (s0)
  amoadd.w  t1, t4, (s0)
  amoswap.d t4, a3, (s0)
  amoand.w  s7, a2, (s0)
  amoor.d   s11, a4, (s0)
  amoxor.w  a2, t3, (s0)
  amomax.d  a6, t4, (s0)
  amominu.w s6, a6, (s0)
  fmv.w.x   f20, t4
  fmv.d.x   f9, t6
  fadd.s    f18, f2, f18
  fsub.s    f8, f4, f21
  fmul.s    f1, f11, f5
  fdiv.s    f2, f8, f19
  fmin.s    f21, f0, f5
  fmax.s    f20, f2, f11
  fsgnj.s   f20, f20, f10
  fadd.d    f7, f18, f18
  fsub.d    f3, f9, f5
  fmul.d    f21, f7, f6
  fdiv.d    f8, f9, f7
  fsqrt.d   f2, f19
  fmadd.d   f7, f4, f5, f1
  fcvt.s.w  f2, t1
  fcvt.d.w  f10, t3
  fcvt.d.s  f7, f1
  fcvt.s.d  f19, f4
  fcvt.w.s  s5, f7, rtz
  fcvt.l.d  s9, f7, rtz
  feq.d     a7, f11, f9
  flt.s     t4, f6, f6
  fclass.d  a3, f5
  csrr  s7, mscratch
  csrw  mscratch, t2
  csrrw t4, mscratch, s10
  csrrs s2, mstatus, x0
  csrrc a0, mscratch, x0
  csrrwi a7, mscratch, 3
  fence
  fence.i
  c.addi a0, -31
  c.mv   a1, a2
  c.li   a3, 3
  c.add  a4, a5
  la    s0, tdat
  li    s10, 2
  li    t1, -201
  add   a0, s10, a3
  sub   s9, s4, s5
  xor   a2, s7, t0
  or    a5, s9, a0
  and   a7, s5, t6
  addi  s3, s10, 1215
  andi  s4, t2, 147
  ori   s9, t3, 1074
  xori  a3, s3, -511
  slli  a3, t3, 53
  srli  t5, a6, 11
  srai  t1, t6, 45
  sllw  t6, t2, s11
  sraw  s3, a7, t3
  slt   a6, t1, s7
  sltu  a4, t6, a2
  sltiu t5, s11, 1643
  lui   a2, 0x57acc
  auipc s5, 0x2e
  addw  t4, a6, s11
  subw  a2, a2, s7
  addiw t6, t3, -1382
  mul   a5, a6, s2
  mulh  s4, s4, s7
  mulhu a4, t2, a7
  mulw  a7, t5, a1
  div   s10, a6, t2
  divu  a1, t3, a0
  rem   a1, a3, a0
  remu  s4, t2, t6
  divw  s11, s2, s2
  remw  a1, a2, t1
  sd    s9, 0(s0)
  ld    s10, 0(s0)
  sw    t1, 0(s0)
  lw    s10, 0(s0)
  lwu   s6, 0(s0)
  lh    a7, 0(s0)
  lbu   s2, 0(s0)
  lr.d      t3, (s0)
  sc.d      s11, t5, (s0)
  amoadd.w  s9, t5, (s0)
  amoswap.d t2, t1, (s0)
  amoand.w  t6, a4, (s0)
  amoor.d   a0, t5, (s0)
  amoxor.w  s7, s7, (s0)
  amomax.d  a5, t4, (s0)
  amominu.w a3, s8, (s0)
  fmv.w.x   f6, s4
  fmv.d.x   f3, s3
  fadd.s    f0, f3, f10
  fsub.s    f5, f5, f7
  fmul.s    f21, f6, f3
  fdiv.s    f20, f20, f9
  fmin.s    f4, f4, f20
  fmax.s    f6, f6, f8
  fsgnj.s   f20, f4, f19
  fadd.d    f19, f18, f7
  fsub.d    f3, f11, f3
  fmul.d    f9, f18, f6
  fdiv.d    f7, f10, f6
  fsqrt.d   f21, f0
  fmadd.d   f9, f8, f8, f1
  fcvt.s.w  f21, s2
  fcvt.d.w  f9, s11
  fcvt.d.s  f8, f2
  fcvt.s.d  f6, f18
  fcvt.w.s  s2, f20, rtz
  fcvt.l.d  s6, f9, rtz
  feq.d     a3, f7, f4
  flt.s     s2, f0, f2
  fclass.d  t4, f5
  csrr  t5, mscratch
  csrw  mscratch, t0
  csrrw a5, mscratch, a7
  csrrs a2, mstatus, x0
  csrrc s8, mscratch, x0
  csrrwi s11, mscratch, 31
  fence
  fence.i
  c.addi a0, 1
  c.mv   a1, a2
  c.li   a3, -7
  c.add  a4, a5
  la    s0, tdat
  li    s8, 1890
  li    t4, -1991
  add   t3, s6, a0
  sub   a2, t3, s11
  xor   t0, t6, a6
  or    s4, a4, t0
  and   t1, a6, t2
  addi  a4, a1, -1641
  andi  s2, a1, 606
  ori   t3, t1, 1430
  xori  a0, t6, 2028
  slli  s11, s10, 38
  srli  t3, t2, 34
  srai  s9, s6, 59
  sllw  s6, a3, t2
  sraw  s2, s10, s10
  slt   s8, s6, s3
  sltu  s9, s2, t4
  sltiu s2, s9, 379
  lui   a6, 0x24089
  auipc s5, 0xd1
  addw  t1, a0, s2
  subw  a7, a5, s7
  addiw a7, a3, 1611
  mul   s4, a1, t1
  mulh  s4, t3, a3
  mulhu t6, t3, a0
  mulw  t1, s10, a7
  div   t2, t3, a4
  divu  t2, s8, t2
  rem   a7, s8, t1
  remu  s2, a1, t0
  divw  a2, s5, s3
  remw  a7, t0, a2
  sd    s11, 0(s0)
  ld    a7, 0(s0)
  sw    a1, 0(s0)
  lw    a5, 0(s0)
  lwu   s11, 0(s0)
  lh    t5, 0(s0)
  lbu   t3, 0(s0)
  lr.d      t6, (s0)
  sc.d      s4, s6, (s0)
  amoadd.w  a2, s4, (s0)
  amoswap.d a7, s8, (s0)
  amoand.w  a4, s6, (s0)
  amoor.d   s11, s2, (s0)
  amoxor.w  t0, a4, (s0)
  amomax.d  s5, t0, (s0)
  amominu.w a0, t4, (s0)
  fmv.w.x   f19, t5
  fmv.d.x   f19, t1
  fadd.s    f11, f4, f10
  fsub.s    f8, f19, f20
  fmul.s    f2, f11, f0
  fdiv.s    f8, f18, f19
  fmin.s    f21, f19, f11
  fmax.s    f21, f9, f2
  fsgnj.s   f1, f1, f9
  fadd.d    f4, f10, f11
  fsub.d    f20, f8, f8
  fmul.d    f3, f19, f4
  fdiv.d    f11, f20, f3
  fsqrt.d   f0, f20
  fmadd.d   f19, f20, f8, f9
  fcvt.s.w  f8, t2
  fcvt.d.w  f3, s9
  fcvt.d.s  f19, f4
  fcvt.s.d  f18, f18
  fcvt.w.s  s10, f18, rtz
  fcvt.l.d  s11, f18, rtz
  feq.d     a0, f18, f11
  flt.s     a3, f0, f5
  fclass.d  s6, f10
  csrr  a0, mscratch
  csrw  mscratch, a4
  csrrw s9, mscratch, a5
  csrrs s2, mstatus, x0
  csrrc t3, mscratch, x0
  csrrwi s11, mscratch, 28
  fence
  fence.i
  c.addi a0, 23
  c.mv   a1, a2
  c.li   a3, -27
  c.add  a4, a5
  la    s0, tdat
  li    s6, 1784
  li    t5, -1044
  add   s2, s4, t3
  sub   a1, s4, a0
  xor   s9, a6, s9
  or    s4, s2, t6
  and   s9, t5, s2
  addi  s2, t1, 239
  andi  a1, a5, 1056
  ori   t5, a3, 1193
  xori  s4, t0, -694
  slli  s10, s3, 2
  srli  s9, s3, 6
  srai  a4, s4, 41
  sllw  t4, a5, s2
  sraw  s8, s11, s8
  slt   a2, t3, t1
  sltu  t5, s11, a5
  sltiu s8, s9, 389
  lui   a0, 0x15521
  auipc s7, 0x7c
  addw  t1, a5, s2
  subw  a3, a3, s4
  addiw t5, s4, -902
  mul   s9, t2, t3
  mulh  a3, a0, a0
  mulhu a6, s4, s2
  mulw  t4, t1, t2
  div   t1, s5, s3
  divu  t0, s3, t4
  rem   s4, t3, t4
  remu  s5, s2, s3
  divw  a5, t3, s4
  remw  a1, a0, a6
  sd    s3, 8(s0)
  ld    t4, 8(s0)
  sw    a1, 8(s0)
  lw    s10, 8(s0)
  lwu   s5, 8(s0)
  lh    a5, 8(s0)
  lbu   t4, 8(s0)
  lr.d      s2, (s0)
  sc.d      s7, a6, (s0)
  amoadd.w  a2, a7, (s0)
  amoswap.d t0, t4, (s0)
  amoand.w  t5, s7, (s0)
  amoor.d   s4, a5, (s0)
  amoxor.w  s7, t0, (s0)
  amomax.d  a7, a1, (s0)
  amominu.w s11, a4, (s0)
  fmv.w.x   f10, s3
  fmv.d.x   f8, s8
  fadd.s    f18, f7, f8
  fsub.s    f6, f5, f8
  fmul.s    f8, f9, f1
  fdiv.s    f8, f19, f11
  fmin.s    f2, f7, f10
  fmax.s    f18, f6, f18
  fsgnj.s   f6, f10, f0
  fadd.d    f10, f6, f6
  fsub.d    f20, f1, f0
  fmul.d    f7, f18, f11
  fdiv.d    f20, f0, f21
  fsqrt.d   f3, f9
  fmadd.d   f2, f20, f0, f4
  fcvt.s.w  f9, t6
  fcvt.d.w  f2, a5
  fcvt.d.s  f6, f20
  fcvt.s.d  f6, f4
  fcvt.w.s  t0, f3, rtz
  fcvt.l.d  a6, f20, rtz
  feq.d     a2, f4, f18
  flt.s     s7, f11, f7
  fclass.d  a2, f19
  csrr  s10, mscratch
  csrw  mscratch, s6
  csrrw a1, mscratch, t3
  csrrs s9, mstatus, x0
  csrrc s10, mscratch, x0
  csrrwi s6, mscratch, 19
  fence
  fence.i
  c.addi a0, -7
  c.mv   a1, a2
  c.li   a3, -25
  c.add  a4, a5
  la    s0, tdat
  li    t5, 1659
  li    s4, 1088
  add   a5, a3, s5
  sub   t4, a3, a7
  xor   a5, a4, t5
  or    t1, a0, t4
  and   a1, s8, s7
  addi  s11, a4, -837
  andi  s2, s3, 745
  ori   s9, a0, 154
  xori  a3, a1, -8
  slli  s7, t4, 9
  srli  t2, s11, 38
  srai  t5, t2, 17
  sllw  s6, t6, a7
  sraw  a7, t4, s8
  slt   s4, s3, t6
  sltu  s11, a0, t3
  sltiu s5, s3, 942
  lui   t2, 0xacac8
  auipc t3, 0x38
  addw  t0, s11, t0
  subw  s5, s9, s6
  addiw a4, s7, -788
  mul   a5, a7, s7
  mulh  t3, a2, s6
  mulhu s6, s11, a4
  mulw  s6, a6, t2
  div   s4, t3, a4
  divu  a0, a2, s10
  rem   t6, a7, s4
  remu  a7, a6, a2
  divw  a5, a2, s4
  remw  a3, a4, t3
  sd    s5, 0(s0)
  ld    t0, 0(s0)
  sw    a5, 0(s0)
  lw    a7, 0(s0)
  lwu   a5, 0(s0)
  lh    t2, 0(s0)
  lbu   s11, 0(s0)
  lr.d      a7, (s0)
  sc.d      t1, t1, (s0)
  amoadd.w  a7, s11, (s0)
  amoswap.d t3, t6, (s0)
  amoand.w  s5, s5, (s0)
  amoor.d   s4, s10, (s0)
  amoxor.w  t3, t0, (s0)
  amomax.d  t3, a0, (s0)
  amominu.w s5, s7, (s0)
  fmv.w.x   f10, s3
  fmv.d.x   f6, t2
  fadd.s    f19, f1, f10
  fsub.s    f9, f19, f1
  fmul.s    f0, f2, f3
  fdiv.s    f21, f18, f18
  fmin.s    f2, f1, f3
  fmax.s    f0, f19, f5
  fsgnj.s   f4, f21, f9
  fadd.d    f1, f19, f2
  fsub.d    f10, f7, f1
  fmul.d    f9, f2, f9
  fdiv.d    f11, f7, f5
  fsqrt.d   f21, f8
  fmadd.d   f10, f6, f9, f2
  fcvt.s.w  f7, s7
  fcvt.d.w  f20, a3
  fcvt.d.s  f0, f7
  fcvt.s.d  f18, f8
  fcvt.w.s  a4, f10, rtz
  fcvt.l.d  s5, f5, rtz
  feq.d     s4, f1, f4
  flt.s     s9, f7, f19
  fclass.d  t1, f8
  csrr  a6, mscratch
  csrw  mscratch, s11
  csrrw s10, mscratch, s11
  csrrs a6, mstatus, x0
  csrrc a6, mscratch, x0
  csrrwi s2, mscratch, 0
  fence
  fence.i
  c.addi a0, -16
  c.mv   a1, a2
  c.li   a3, -29
  c.add  a4, a5
  la    s0, tdat
  li    s11, 2046
  li    a1, -957
  add   s11, t6, a0
  sub   a7, s9, t6
  xor   a7, a6, a4
  or    s2, s5, s3
  and   t2, a0, t1
  addi  t3, t1, -1746
  andi  s8, t0, 1710
  ori   t3, s10, 840
  xori  a2, a7, -380
  slli  a5, a1, 57
  srli  s8, t2, 35
  srai  a5, t2, 52
  sllw  a6, a5, t4
  sraw  s2, s9, t0
  slt   a3, s6, t4
  sltu  s10, a7, t2
  sltiu t0, s6, 347
  lui   s5, 0xd201c
  auipc t2, 0x66
  addw  s11, t2, s5
  subw  t2, s8, a3
  addiw a3, s5, -781
  mul   s2, a6, s9
  mulh  t3, a7, s9
  mulhu s8, a6, t4
  mulw  t3, t2, a6
  div   s7, s5, s4
  divu  t3, s7, s8
  rem   t6, s7, a2
  remu  t3, t6, t6
  divw  a3, a3, a0
  remw  a3, s10, s2
  sd    s11, 0(s0)
  ld    t0, 0(s0)
  sw    s6, 0(s0)
  lw    a6, 0(s0)
  lwu   a4, 0(s0)
  lh    s5, 0(s0)
  lbu   a0, 0(s0)
  lr.d      a3, (s0)
  sc.d      a5, a2, (s0)
  amoadd.w  s8, t1, (s0)
  amoswap.d s11, t6, (s0)
  amoand.w  a6, t2, (s0)
  amoor.d   s9, s3, (s0)
  amoxor.w  s11, t3, (s0)
  amomax.d  s4, s10, (s0)
  amominu.w s11, s2, (s0)
  fmv.w.x   f10, a6
  fmv.d.x   f4, a7
  fadd.s    f2, f11, f0
  fsub.s    f7, f3, f20
  fmul.s    f5, f4, f3
  fdiv.s    f8, f18, f10
  fmin.s    f18, f21, f21
  fmax.s    f20, f5, f1
  fsgnj.s   f6, f19, f10
  fadd.d    f8, f9, f5
  fsub.d    f6, f0, f0
  fmul.d    f19, f19, f5
  fdiv.d    f8, f5, f19
  fsqrt.d   f9, f11
  fmadd.d   f8, f21, f18, f5
  fcvt.s.w  f11, a5
  fcvt.d.w  f20, s7
  fcvt.d.s  f2, f1
  fcvt.s.d  f9, f19
  fcvt.w.s  t0, f2, rtz
  fcvt.l.d  t2, f4, rtz
  feq.d     a4, f19, f0
  flt.s     t2, f11, f2
  fclass.d  t2, f3
  csrr  s11, mscratch
  csrw  mscratch, s11
  csrrw a0, mscratch, s7
  csrrs a7, mstatus, x0
  csrrc a1, mscratch, x0
  csrrwi s9, mscratch, 17
  fence
  fence.i
  c.addi a0, 12
  c.mv   a1, a2
  c.li   a3, 15
  c.add  a4, a5
  la    s0, tdat
  li    a2, 1795
  li    a0, -528
  add   a7, s3, a0
  sub   s8, t4, a3
  xor   s2, a7, a4
  or    a0, s10, a7
  and   t5, s3, a7
  addi  s5, a1, -1711
  andi  a4, s4, 977
  ori   a6, s7, 880
  xori  s10, s3, 820
  slli  t3, s2, 0
  srli  s8, s7, 55
  srai  t2, s10, 62
  sllw  s10, t6, s11
  sraw  t5, a7, a4
  slt   s2, a5, s11
  sltu  t1, t4, s4
  sltiu a1, s11, 1272
  lui   a7, 0x4b7f5
  auipc s4, 0x66
  addw  t5, a2, s3
  subw  t3, s4, s10
  addiw a6, a2, 1160
  mul   t5, s7, s5
  mulh  s5, s5, t2
  mulhu t1, a6, a1
  mulw  s9, a1, s7
  div   a0, a7, t5
  divu  a5, a1, s6
  rem   a7, t4, s9
  remu  a1, t3, a4
  divw  a3, t4, s11
  remw  s8, s6, s7
  sd    t0, 0(s0)
  ld    t2, 0(s0)
  sw    s4, 0(s0)
  lw    s6, 0(s0)
  lwu   s7, 0(s0)
  lh    a7, 0(s0)
  lbu   s10, 0(s0)
  lr.d      a4, (s0)
  sc.d      s10, s3, (s0)
  amoadd.w  t2, a3, (s0)
  amoswap.d s8, a4, (s0)
  amoand.w  t6, a7, (s0)
  amoor.d   t4, a7, (s0)
  amoxor.w  t2, a1, (s0)
  amomax.d  s7, s9, (s0)
  amominu.w s6, a5, (s0)
  fmv.w.x   f3, s4
  fmv.d.x   f5, t4
  fadd.s    f21, f21, f8
  fsub.s    f6, f4, f4
  fmul.s    f1, f1, f19
  fdiv.s    f4, f0, f4
  fmin.s    f3, f4, f11
  fmax.s    f1, f11, f19
  fsgnj.s   f1, f1, f4
  fadd.d    f21, f18, f11
  fsub.d    f20, f2, f11
  fmul.d    f19, f2, f8
  fdiv.d    f8, f10, f9
  fsqrt.d   f2, f7
  fmadd.d   f8, f19, f21, f7
  fcvt.s.w  f10, s4
  fcvt.d.w  f5, s9
  fcvt.d.s  f5, f19
  fcvt.s.d  f19, f19
  fcvt.w.s  t2, f21, rtz
  fcvt.l.d  s11, f4, rtz
  feq.d     a5, f3, f5
  flt.s     s2, f5, f0
  fclass.d  a7, f19
  csrr  a4, mscratch
  csrw  mscratch, s3
  csrrw a6, mscratch, t4
  csrrs t3, mstatus, x0
  csrrc t3, mscratch, x0
  csrrwi t0, mscratch, 17
  fence
  fence.i
  c.addi a0, 19
  c.mv   a1, a2
  c.li   a3, 1
  c.add  a4, a5
  la    s0, tdat
  li    a0, 1465
  li    t6, 498
  add   s9, t1, t1
  sub   a0, a0, s6
  xor   s3, s7, t4
  or    a1, t6, a2
  and   t5, s9, s4
  addi  s9, s11, -228
  andi  s5, s4, 575
  ori   a3, t6, 1541
  xori  t6, a6, -1835
  slli  s11, a0, 17
  srli  s9, s5, 48
  srai  t4, s8, 46
  sllw  s3, a0, t5
  sraw  s10, a0, a6
  slt   a0, a3, t6
  sltu  t3, s6, t0
  sltiu s6, t0, 1633
  lui   a2, 0x6b1aa
  auipc t0, 0x5d
  addw  s8, a2, a3
  subw  t4, a4, t6
  addiw t6, t4, -906
  mul   t1, s11, a3
  mulh  a6, s10, s8
  mulhu a2, t0, t3
  mulw  a5, a7, s10
  div   s6, t4, t4
  divu  s2, a0, t2
  rem   s10, s9, a5
  remu  a6, s2, s7
  divw  s11, a5, t3
  remw  a4, s8, s8
  sd    t3, 0(s0)
  ld    a4, 0(s0)
  sw    s3, 0(s0)
  lw    t6, 0(s0)
  lwu   a7, 0(s0)
  lh    t2, 0(s0)
  lbu   a7, 0(s0)
  lr.d      s3, (s0)
  sc.d      t3, s10, (s0)
  amoadd.w  a5, t5, (s0)
  amoswap.d t6, a5, (s0)
  amoand.w  t2, t3, (s0)
  amoor.d   t2, s9, (s0)
  amoxor.w  t1, s6, (s0)
  amomax.d  a7, s6, (s0)
  amominu.w a0, s10, (s0)
  fmv.w.x   f10, s5
  fmv.d.x   f11, s3
  fadd.s    f8, f10, f2
  fsub.s    f5, f5, f21
  fmul.s    f10, f2, f4
  fdiv.s    f21, f19, f9
  fmin.s    f1, f7, f9
  fmax.s    f9, f9, f6
  fsgnj.s   f18, f21, f21
  fadd.d    f21, f10, f5
  fsub.d    f4, f4, f10
  fmul.d    f1, f18, f18
  fdiv.d    f11, f8, f0
  fsqrt.d   f19, f18
  fmadd.d   f11, f10, f5, f7
  fcvt.s.w  f21, s11
  fcvt.d.w  f19, s4
  fcvt.d.s  f20, f7
  fcvt.s.d  f11, f6
  fcvt.w.s  t2, f6, rtz
  fcvt.l.d  s9, f7, rtz
  feq.d     s5, f2, f21
  flt.s     s11, f21, f10
  fclass.d  t1, f10
  csrr  s3, mscratch
  csrw  mscratch, t6
  csrrw s10, mscratch, s4
  csrrs s3, mstatus, x0
  csrrc s8, mscratch, x0
  csrrwi s7, mscratch, 20
  fence
  fence.i
  c.addi a0, 1
  c.mv   a1, a2
  c.li   a3, -24
  c.add  a4, a5
  la    s0, tdat
  li    t6, 1881
  li    a7, -1435
  add   s2, s2, t3
  sub   t4, t1, a1
  xor   s4, t2, s2
  or    s5, s3, t5
  and   t2, s8, s7
  addi  s4, s5, 27
  andi  a3, a0, 8
  ori   a3, s3, 1143
  xori  a6, s10, -1219
  slli  t2, s3, 6
  srli  s8, a5, 33
  srai  t2, t3, 46
  sllw  s9, t6, a2
  sraw  s4, t0, a1
  slt   s9, s8, s6
  sltu  t3, a4, s6
  sltiu a5, s4, 1627
  lui   t0, 0x7ce74
  auipc t5, 0x3e
  addw  t3, a4, s3
  subw  t2, s7, s7
  addiw s11, t1, 885
  mul   t3, t0, s11
  mulh  s7, s7, t1
  mulhu s3, s2, s7
  mulw  s4, s4, t2
  div   t3, a6, s7
  divu  t5, t0, s10
  rem   a1, a5, a5
  remu  a7, s8, s11
  divw  t3, s9, a4
  remw  a5, a4, a5
  sd    s4, 8(s0)
  ld    s5, 8(s0)
  sw    t0, 8(s0)
  lw    s2, 8(s0)
  lwu   a4, 8(s0)
  lh    t4, 8(s0)
  lbu   t6, 8(s0)
  lr.d      t1, (s0)
  sc.d      s9, t5, (s0)
  amoadd.w  s11, s4, (s0)
  amoswap.d t4, s4, (s0)
  amoand.w  a7, t1, (s0)
  amoor.d   t0, s5, (s0)
  amoxor.w  t6, a1, (s0)
  amomax.d  t1, s10, (s0)
  amominu.w a6, t6, (s0)
  fmv.w.x   f21, t6
  fmv.d.x   f0, t4
  fadd.s    f8, f6, f20
  fsub.s    f21, f3, f9
  fmul.s    f3, f8, f4
  fdiv.s    f3, f0, f4
  fmin.s    f6, f9, f8
  fmax.s    f5, f20, f8
  fsgnj.s   f2, f9, f3
  fadd.d    f11, f3, f20
  fsub.d    f18, f19, f11
  fmul.d    f11, f2, f19
  fdiv.d    f0, f10, f19
  fsqrt.d   f18, f2
  fmadd.d   f6, f10, f4, f2
  fcvt.s.w  f3, a1
  fcvt.d.w  f0, a7
  fcvt.d.s  f1, f7
  fcvt.s.d  f19, f19
  fcvt.w.s  s9, f7, rtz
  fcvt.l.d  a7, f8, rtz
  feq.d     t3, f21, f6
  flt.s     t4, f1, f9
  fclass.d  a4, f4
  csrr  s10, mscratch
  csrw  mscratch, s3
  csrrw t4, mscratch, s2
  csrrs a3, mstatus, x0
  csrrc a6, mscratch, x0
  csrrwi s7, mscratch, 17
  fence
  fence.i
  c.addi a0, 25
  c.mv   a1, a2
  c.li   a3, 21
  c.add  a4, a5
  la    s0, tdat
  li    s6, 1461
  li    t5, 1605
  add   s3, t4, s6
  sub   a2, s9, a0
  xor   a3, s7, t0
  or    a2, a2, s3
  and   s2, t3, a2
  addi  s2, s7, -1135
  andi  t2, s3, 1010
  ori   s10, a0, 192
  xori  s5, s7, -1867
  slli  s11, s9, 0
  srli  s3, t6, 2
  srai  t0, a1, 44
  sllw  s8, s5, s11
  sraw  t2, a1, a5
  slt   t0, s11, a7
  sltu  s11, s4, t4
  sltiu t0, s9, 1403
  lui   a0, 0xf75f7
  auipc a7, 0x46
  addw  t6, t6, a2
  subw  a2, t4, a6
  addiw t0, a1, -85
  mul   s4, s7, t5
  mulh  s8, t5, s4
  mulhu a1, a7, s4
  mulw  a4, a3, s9
  div   a7, a4, t5
  divu  a5, a1, a5
  rem   s2, a1, t1
  remu  a0, t6, a5
  divw  t0, t2, t3
  remw  t2, s7, a4
  sd    s3, 8(s0)
  ld    t6, 8(s0)
  sw    s7, 8(s0)
  lw    s4, 8(s0)
  lwu   t0, 8(s0)
  lh    a4, 8(s0)
  lbu   t3, 8(s0)
  lr.d      s7, (s0)
  sc.d      t4, s7, (s0)
  amoadd.w  a0, t1, (s0)
  amoswap.d t5, a3, (s0)
  amoand.w  s6, s5, (s0)
  amoor.d   s7, s8, (s0)
  amoxor.w  t1, t0, (s0)
  amomax.d  a6, a7, (s0)
  amominu.w t4, a4, (s0)
  fmv.w.x   f10, s5
  fmv.d.x   f4, s8
  fadd.s    f10, f8, f4
  fsub.s    f2, f18, f7
  fmul.s    f5, f7, f3
  fdiv.s    f0, f2, f7
  fmin.s    f18, f21, f19
  fmax.s    f7, f4, f21
  fsgnj.s   f11, f20, f1
  fadd.d    f5, f20, f7
  fsub.d    f10, f7, f4
  fmul.d    f1, f21, f9
  fdiv.d    f10, f10, f5
  fsqrt.d   f8, f5
  fmadd.d   f20, f2, f3, f7
  fcvt.s.w  f3, s8
  fcvt.d.w  f10, t3
  fcvt.d.s  f8, f5
  fcvt.s.d  f6, f2
  fcvt.w.s  a0, f18, rtz
  fcvt.l.d  a1, f5, rtz
  feq.d     s11, f20, f20
  flt.s     s6, f11, f20
  fclass.d  s6, f9
  csrr  t1, mscratch
  csrw  mscratch, a7
  csrrw t0, mscratch, a4
  csrrs s7, mstatus, x0
  csrrc s8, mscratch, x0
  csrrwi s2, mscratch, 29
  fence
  fence.i
  c.addi a0, -6
  c.mv   a1, a2
  c.li   a3, 23
  c.add  a4, a5
  la    s0, tdat
  li    s10, 410
  li    t1, 511
  add   t5, a1, a1
  sub   a2, t5, a3
  xor   a3, s8, s8
  or    a4, t2, a5
  and   t2, t5, a6
  addi  s7, t0, -169
  andi  t5, s11, 1863
  ori   t4, s4, 1740
  xori  t2, s2, -655
  slli  s4, s8, 41
  srli  a0, s11, 3
  srai  s10, t2, 27
  sllw  t5, t1, a5
  sraw  s11, t3, s4
  slt   s5, a5, a6
  sltu  s7, a5, s5
  sltiu a4, a2, 232
  lui   s3, 0x85e
  auipc s3, 0xa7
  addw  s7, s9, a3
  subw  s8, a4, s2
  addiw t1, s5, -82
  mul   t5, a5, t3
  mulh  a1, t1, s4
  mulhu a3, t5, a1
  mulw  s10, t1, a7
  div   s8, t3, s3
  divu  s3, s5, a7
  rem   t5, s4, s5
  remu  s4, s4, s8
  divw  t2, t2, t3
  remw  t4, a5, s7
  sd    s6, 0(s0)
  ld    s5, 0(s0)
  sw    t6, 0(s0)
  lw    t4, 0(s0)
  lwu   s3, 0(s0)
  lh    a5, 0(s0)
  lbu   a0, 0(s0)
  lr.d      a2, (s0)
  sc.d      s5, a1, (s0)
  amoadd.w  a7, s10, (s0)
  amoswap.d a4, t1, (s0)
  amoand.w  a1, s3, (s0)
  amoor.d   a3, a6, (s0)
  amoxor.w  t4, s5, (s0)
  amomax.d  a3, s2, (s0)
  amominu.w a7, s8, (s0)
  fmv.w.x   f20, t2
  fmv.d.x   f1, s11
  fadd.s    f19, f19, f1
  fsub.s    f4, f9, f20
  fmul.s    f19, f1, f11
  fdiv.s    f3, f20, f3
  fmin.s    f7, f9, f18
  fmax.s    f21, f8, f20
  fsgnj.s   f11, f8, f19
  fadd.d    f20, f4, f1
  fsub.d    f5, f5, f11
  fmul.d    f18, f18, f11
  fdiv.d    f9, f0, f5
  fsqrt.d   f18, f1
  fmadd.d   f2, f10, f6, f8
  fcvt.s.w  f18, t1
  fcvt.d.w  f6, t6
  fcvt.d.s  f8, f7
  fcvt.s.d  f18, f4
  fcvt.w.s  s10, f21, rtz
  fcvt.l.d  a6, f2, rtz
  feq.d     a5, f1, f0
  flt.s     t4, f2, f6
  fclass.d  t3, f21
  csrr  t6, mscratch
  csrw  mscratch, a0
  csrrw a1, mscratch, a3
  csrrs a5, mstatus, x0
  csrrc a0, mscratch, x0
  csrrwi s7, mscratch, 24
  fence
  fence.i
  c.addi a0, 19
  c.mv   a1, a2
  c.li   a3, -14
  c.add  a4, a5
  la    s0, tdat
  li    s7, 1772
  li    s7, 89
  add   a0, t5, t5
  sub   a3, s2, a7
  xor   s9, t4, t6
  or    t1, t2, s10
  and   a6, t5, a1
  addi  t1, s2, 1273
  andi  t0, s5, 1695
  ori   t5, s2, 22
  xori  s2, s8, -495
  slli  s3, s5, 53
  srli  s11, a7, 38
  srai  s7, a5, 15
  sllw  t2, a4, s4
  sraw  s11, s6, s7
  slt   t6, a6, s10
  sltu  a4, s9, s11
  sltiu a2, s5, 596
  lui   a5, 0x198c
  auipc s11, 0x72
  addw  a6, s6, a5
  subw  s3, t3, t5
  addiw s4, a3, -808
  mul   t2, t0, a5
  mulh  s11, s8, s11
  mulhu s2, a0, s8
  mulw  t4, s9, a6
  div   a3, t4, s5
  divu  s8, s11, t0
  rem   a3, s10, s8
  remu  a7, a0, t1
  divw  t1, t0, a1
  remw  s3, t3, a4
  sd    s8, 0(s0)
  ld    a2, 0(s0)
  sw    t5, 0(s0)
  lw    t2, 0(s0)
  lwu   a3, 0(s0)
  lh    a4, 0(s0)
  lbu   a2, 0(s0)
  lr.d      a3, (s0)
  sc.d      s3, s10, (s0)
  amoadd.w  s3, t6, (s0)
  amoswap.d a0, a5, (s0)
  amoand.w  a7, a4, (s0)
  amoor.d   t5, s5, (s0)
  amoxor.w  s8, a2, (s0)
  amomax.d  a7, t4, (s0)
  amominu.w s11, s11, (s0)
  fmv.w.x   f10, s4
  fmv.d.x   f3, s4
  fadd.s    f11, f18, f0
  fsub.s    f20, f7, f1
  fmul.s    f9, f21, f10
  fdiv.s    f18, f2, f2
  fmin.s    f21, f4, f19
  fmax.s    f9, f19, f8
  fsgnj.s   f4, f0, f5
  fadd.d    f5, f7, f8
  fsub.d    f18, f11, f6
  fmul.d    f0, f4, f5
  fdiv.d    f10, f9, f18
  fsqrt.d   f6, f10
  fmadd.d   f21, f4, f21, f0
  fcvt.s.w  f9, a3
  fcvt.d.w  f0, s5
  fcvt.d.s  f20, f8
  fcvt.s.d  f2, f0
  fcvt.w.s  s7, f5, rtz
  fcvt.l.d  a5, f21, rtz
  feq.d     a3, f4, f7
  flt.s     s2, f18, f6
  fclass.d  t3, f21
  csrr  t2, mscratch
  csrw  mscratch, s3
  csrrw a2, mscratch, a2
  csrrs t6, mstatus, x0
  csrrc a1, mscratch, x0
  csrrwi a2, mscratch, 6
  fence
  fence.i
  c.addi a0, -7
  c.mv   a1, a2
  c.li   a3, 11
  c.add  a4, a5
  la    s0, tdat
  li    s7, 480
  li    t5, 1612
  add   s6, a5, a1
  sub   s3, t6, t0
  xor   t4, t5, s9
  or    a5, a7, a4
  and   s6, t2, s3
  addi  s2, t0, 764
  andi  a6, a1, 279
  ori   a1, s4, 1932
  xori  s7, s6, -904
  slli  a4, s10, 24
  srli  a5, t2, 30
  srai  a1, s6, 43
  sllw  a5, t1, t5
  sraw  t2, s9, s4
  slt   s7, a2, t1
  sltu  s3, a2, s9
  sltiu s11, s10, 1523
  lui   t4, 0x32f83
  auipc s11, 0xc3
  addw  s5, s6, s9
  subw  t6, t5, s2
  addiw t5, s6, 996
  mul   t2, s8, s4
  mulh  a3, t4, s9
  mulhu a5, s5, s9
  mulw  a6, a0, t0
  div   s3, a1, s9
  divu  a5, s5, s10
  rem   s8, t5, s8
  remu  t1, s6, s2
  divw  t2, s7, s3
  remw  t3, a0, t3
  sd    a3, 0(s0)
  ld    s9, 0(s0)
  sw    s10, 0(s0)
  lw    s11, 0(s0)
  lwu   t4, 0(s0)
  lh    s11, 0(s0)
  lbu   s8, 0(s0)
  lr.d      a0, (s0)
  sc.d      a6, s3, (s0)
  amoadd.w  t0, s7, (s0)
  amoswap.d a1, a5, (s0)
  amoand.w  s3, s4, (s0)
  amoor.d   a4, s9, (s0)
  amoxor.w  s4, t3, (s0)
  amomax.d  a2, t4, (s0)
  amominu.w t6, s10, (s0)
  fmv.w.x   f9, s6
  fmv.d.x   f4, s3
  fadd.s    f19, f11, f8
  fsub.s    f3, f8, f20
  fmul.s    f0, f19, f19
  fdiv.s    f6, f19, f9
  fmin.s    f9, f10, f19
  fmax.s    f8, f3, f10
  fsgnj.s   f2, f9, f8
  fadd.d    f21, f2, f0
  fsub.d    f4, f6, f8
  fmul.d    f7, f4, f6
  fdiv.d    f3, f10, f11
  fsqrt.d   f7, f8
  fmadd.d   f1, f7, f4, f4
  fcvt.s.w  f21, a1
  fcvt.d.w  f21, a6
  fcvt.d.s  f6, f3
  fcvt.s.d  f20, f19
  fcvt.w.s  s2, f6, rtz
  fcvt.l.d  a4, f19, rtz
  feq.d     s5, f6, f18
  flt.s     s9, f1, f3
  fclass.d  a6, f21
  csrr  s2, mscratch
  csrw  mscratch, s11
  csrrw t0, mscratch, a0
  csrrs s10, mstatus, x0
  csrrc s9, mscratch, x0
  csrrwi a7, mscratch, 19
  fence
  fence.i
  c.addi a0, -22
  c.mv   a1, a2
  c.li   a3, -13
  c.add  a4, a5
  la    s0, tdat
  li    a6, 717
  li    s10, -1838
  add   s10, s2, s11
  sub   s4, s5, a3
  xor   s5, t3, t3
  or    s2, s6, s2
  and   a7, t5, t4
  addi  t3, t1, 2028
  andi  s10, s6, 635
  ori   s5, s8, 1842
  xori  a1, t2, -785
  slli  t2, t1, 21
  srli  t6, s4, 15
  srai  a7, t1, 24
  sllw  a5, s10, t5
  sraw  t6, a7, t4
  slt   s7, t0, s10
  sltu  a0, s9, a1
  sltiu s6, t6, 1949
  lui   t1, 0x11154
  auipc s4, 0x6
  addw  s8, s11, s6
  subw  a0, t4, t1
  addiw s6, t1, -1321
  mul   t5, t1, t4
  mulh  a6, a7, a7
  mulhu a1, s2, t5
  mulw  a6, a1, s11
  div   s8, a1, s11
  divu  a2, a6, a0
  rem   s7, s8, t3
  remu  a5, a5, a4
  divw  t0, t0, s7
  remw  t6, a4, t1
  sd    s7, 0(s0)
  ld    s11, 0(s0)
  sw    a0, 0(s0)
  lw    a6, 0(s0)
  lwu   s11, 0(s0)
  lh    a0, 0(s0)
  lbu   s5, 0(s0)
  lr.d      s4, (s0)
  sc.d      s8, t2, (s0)
  amoadd.w  a4, s10, (s0)
  amoswap.d s5, t6, (s0)
  amoand.w  s4, s10, (s0)
  amoor.d   s5, a7, (s0)
  amoxor.w  s10, s9, (s0)
  amomax.d  a3, t6, (s0)
  amominu.w s11, s5, (s0)
  fmv.w.x   f3, t5
  fmv.d.x   f0, s2
  fadd.s    f9, f18, f6
  fsub.s    f5, f1, f1
  fmul.s    f10, f21, f9
  fdiv.s    f18, f19, f9
  fmin.s    f11, f11, f3
  fmax.s    f4, f8, f0
  fsgnj.s   f11, f0, f6
  fadd.d    f19, f4, f10
  fsub.d    f9, f3, f1
  fmul.d    f19, f10, f4
  fdiv.d    f1, f5, f0
  fsqrt.d   f20, f9
  fmadd.d   f20, f3, f20, f2
  fcvt.s.w  f19, a7
  fcvt.d.w  f21, t4
  fcvt.d.s  f9, f19
  fcvt.s.d  f4, f21
  fcvt.w.s  t4, f7, rtz
  fcvt.l.d  t2, f0, rtz
  feq.d     t3, f8, f21
  flt.s     s9, f18, f7
  fclass.d  s10, f20
  csrr  s3, mscratch
  csrw  mscratch, s3
  csrrw a3, mscratch, s11
  csrrs a3, mstatus, x0
  csrrc s3, mscratch, x0
  csrrwi a1, mscratch, 16
  fence
  fence.i
  c.addi a0, -14
  c.mv   a1, a2
  c.li   a3, -2
  c.add  a4, a5
  la    s0, tdat
  li    t5, 383
  li    s4, 1238
  add   s6, s11, t3
  sub   s7, s11, a6
  xor   a5, a7, s5
  or    t0, t4, t1
  and   s6, a1, s10
  addi  t2, s6, 1480
  andi  s6, s4, 105
  ori   a2, s10, 895
  xori  a3, t5, 1342
  slli  a6, t1, 29
  srli  s11, t2, 20
  srai  s5, a6, 3
  sllw  a4, s4, a3
  sraw  t6, t3, s3
  slt   a1, s10, s9
  sltu  s7, t2, s3
  sltiu a4, s5, 128
  lui   a6, 0x95d85
  auipc t3, 0x2a
  addw  s9, t3, a6
  subw  s10, s11, s4
  addiw t5, s7, -1092
  mul   a6, a7, t2
  mulh  s6, s7, t0
  mulhu s11, a3, s8
  mulw  s7, a1, s11
  div   a2, t0, s3
  divu  a1, a1, t6
  rem   s4, a6, s5
  remu  a5, s11, t3
  divw  a3, t3, a3
  remw  t2, t6, t2
  sd    a2, 0(s0)
  ld    a5, 0(s0)
  sw    s7, 0(s0)
  lw    a5, 0(s0)
  lwu   s2, 0(s0)
  lh    a3, 0(s0)
  lbu   s6, 0(s0)
  lr.d      a1, (s0)
  sc.d      t2, t5, (s0)
  amoadd.w  a0, s11, (s0)
  amoswap.d s4, t4, (s0)
  amoand.w  a1, a7, (s0)
  amoor.d   t5, t5, (s0)
  amoxor.w  t0, s5, (s0)
  amomax.d  s10, a1, (s0)
  amominu.w s8, s2, (s0)
  fmv.w.x   f2, s7
  fmv.d.x   f3, a0
  fadd.s    f6, f4, f5
  fsub.s    f18, f4, f19
  fmul.s    f7, f19, f21
  fdiv.s    f1, f2, f7
  fmin.s    f0, f7, f6
  fmax.s    f20, f11, f6
  fsgnj.s   f18, f19, f3
  fadd.d    f0, f11, f5
  fsub.d    f4, f4, f7
  fmul.d    f11, f10, f19
  fdiv.d    f4, f7, f8
  fsqrt.d   f10, f4
  fmadd.d   f6, f11, f10, f1
  fcvt.s.w  f6, s11
  fcvt.d.w  f19, t3
  fcvt.d.s  f0, f3
  fcvt.s.d  f11, f11
  fcvt.w.s  s4, f8, rtz
  fcvt.l.d  s11, f5, rtz
  feq.d     a0, f7, f6
  flt.s     t6, f7, f10
  fclass.d  a3, f5
  csrr  t0, mscratch
  csrw  mscratch, a7
  csrrw a2, mscratch, s8
  csrrs s7, mstatus, x0
  csrrc s4, mscratch, x0
  csrrwi t3, mscratch, 30
  fence
  fence.i
  c.addi a0, 1
  c.mv   a1, a2
  c.li   a3, 1
  c.add  a4, a5
  la    s0, tdat
  li    s4, 617
  li    a0, -702
  add   a4, t5, s8
  sub   s5, s8, t1
  xor   s11, s11, t2
  or    s11, s6, t3
  and   s11, a2, s3
  addi  s7, s5, -1606
  andi  s2, a5, 152
  ori   s2, s4, 1418
  xori  a1, t6, -438
  slli  a5, a5, 22
  srli  a4, s11, 52
  srai  s9, t2, 42
  sllw  s2, a3, t3
  sraw  s2, a5, a1
  slt   s3, t1, s5
  sltu  t2, s6, s9
  sltiu s8, s6, 1905
  lui   a1, 0x5695e
  auipc s9, 0xbe
  addw  s5, t1, a5
  subw  t1, a7, t6
  addiw t6, s9, 1331
  mul   s2, a0, t6
  mulh  t6, t6, a5
  mulhu t1, s5, t0
  mulw  t1, s4, s4
  div   s11, s7, t2
  divu  t5, a5, a6
  rem   t6, s10, a2
  remu  a0, t1, t1
  divw  s2, a6, t1
  remw  s2, s10, s4
  sd    s5, 0(s0)
  ld    a7, 0(s0)
  sw    a2, 0(s0)
  lw    s4, 0(s0)
  lwu   a1, 0(s0)
  lh    s10, 0(s0)
  lbu   t0, 0(s0)
  lr.d      t2, (s0)
  sc.d      a0, s6, (s0)
  amoadd.w  t0, s3, (s0)
  amoswap.d s5, t5, (s0)
  amoand.w  s6, t2, (s0)
  amoor.d   a5, s11, (s0)
  amoxor.w  s4, s11, (s0)
  amomax.d  s5, a0, (s0)
  amominu.w s6, t1, (s0)
  fmv.w.x   f6, t5
  fmv.d.x   f2, s7
  fadd.s    f21, f0, f21
  fsub.s    f19, f6, f3
  fmul.s    f19, f21, f19
  fdiv.s    f9, f7, f20
  fmin.s    f21, f6, f1
  fmax.s    f2, f0, f0
  fsgnj.s   f2, f8, f20
  fadd.d    f0, f9, f21
  fsub.d    f5, f2, f20
  fmul.d    f21, f5, f4
  fdiv.d    f9, f10, f18
  fsqrt.d   f7, f4
  fmadd.d   f10, f11, f0, f1
  fcvt.s.w  f20, s2
  fcvt.d.w  f4, a0
  fcvt.d.s  f1, f9
  fcvt.s.d  f8, f18
  fcvt.w.s  t1, f21, rtz
  fcvt.l.d  s9, f2, rtz
  feq.d     s9, f3, f7
  flt.s     a4, f21, f6
  fclass.d  a3, f0
  csrr  a5, mscratch
  csrw  mscratch, a2
  csrrw s9, mscratch, t6
  csrrs s3, mstatus, x0
  csrrc s6, mscratch, x0
  csrrwi s7, mscratch, 1
  fence
  fence.i
  c.addi a0, 23
  c.mv   a1, a2
  c.li   a3, 15
  c.add  a4, a5
  la    s0, tdat
  li    t6, 641
  li    a2, 1999
  add   s5, t0, t1
  sub   s2, s11, s9
  xor   a6, s9, s5
  or    t0, a7, t5
  and   s9, s9, t0
  addi  a2, t4, -1118
  andi  t1, s3, 553
  ori   s10, t1, 1086
  xori  s4, s2, 870
  slli  t5, t4, 5
  srli  s11, s10, 49
  srai  t5, t0, 13
  sllw  s11, s4, s5
  sraw  t1, t2, t4
  slt   s10, a2, a4
  sltu  s10, a1, t5
  sltiu a2, s11, 1298
  lui   t3, 0xa3cdf
  auipc t2, 0x5d
  addw  s3, a4, s4
  subw  t0, s4, s7
  addiw a6, s3, 579
  mul   a5, a0, t0
  mulh  t3, t4, t5
  mulhu a4, a0, t1
  mulw  s8, t2, a0
  div   s9, s7, s9
  divu  t5, s4, a5
  rem   t2, s7, t4
  remu  t4, t6, t3
  divw  s8, a2, s11
  remw  s10, t6, t3
  sd    s4, 8(s0)
  ld    a2, 8(s0)
  sw    a7, 8(s0)
  lw    t3, 8(s0)
  lwu   t0, 8(s0)
  lh    s8, 8(s0)
  lbu   t5, 8(s0)
  lr.d      s5, (s0)
  sc.d      a6, s7, (s0)
  amoadd.w  t3, s6, (s0)
  amoswap.d s7, s2, (s0)
  amoand.w  s9, t0, (s0)
  amoor.d   a3, a6, (s0)
  amoxor.w  s8, s6, (s0)
  amomax.d  s8, a0, (s0)
  amominu.w t1, a3, (s0)
  fmv.w.x   f4, s11
  fmv.d.x   f1, t0
  fadd.s    f21, f8, f2
  fsub.s    f10, f6, f18
  fmul.s    f21, f7, f1
  fdiv.s    f2, f19, f11
  fmin.s    f4, f2, f1
  fmax.s    f7, f9, f10
  fsgnj.s   f19, f4, f21
  fadd.d    f20, f8, f2
  fsub.d    f9, f6, f7
  fmul.d    f2, f10, f9
  fdiv.d    f10, f5, f7
  fsqrt.d   f20, f11
  fmadd.d   f18, f7, f11, f3
  fcvt.s.w  f1, s11
  fcvt.d.w  f18, t1
  fcvt.d.s  f8, f6
  fcvt.s.d  f18, f18
  fcvt.w.s  a2, f11, rtz
  fcvt.l.d  s8, f8, rtz
  feq.d     a3, f9, f6
  flt.s     t6, f9, f9
  fclass.d  t4, f7
  csrr  s3, mscratch
  csrw  mscratch, t3
  csrrw a3, mscratch, s5
  csrrs t2, mstatus, x0
  csrrc t3, mscratch, x0
  csrrwi s5, mscratch, 10
  fence
  fence.i
  c.addi a0, 22
  c.mv   a1, a2
  c.li   a3, -8
  c.add  a4, a5
  la    s0, tdat
  li    s8, 270
  li    s3, 1876
  add   a4, s3, s11
  sub   t1, s8, a7
  xor   t1, a6, a1
  or    t4, s11, a6
  and   t1, s11, t2
  addi  a4, s8, 227
  andi  t3, t1, 1309
  ori   t2, s6, 669
  xori  a1, s7, 923
  slli  s9, t3, 51
  srli  s5, t5, 63
  srai  s9, a6, 19
  sllw  s2, s10, t4
  sraw  a5, a6, a2
  slt   t2, s7, t3
  sltu  s7, s2, t6
  sltiu s2, s4, 592
  lui   t4, 0x6e2e6
  auipc s11, 0x12
  addw  s6, a2, a1
  subw  s7, t2, s3
  addiw t3, s5, 704
  mul   a1, s3, a0
  mulh  a6, t6, s6
  mulhu s10, a7, a3
  mulw  a2, t1, s2
  div   s11, s8, a3
  divu  s3, a5, s7
  rem   s4, t0, t2
  remu  t4, t6, s5
  divw  s5, t2, a6
  remw  a7, s11, t0
  sd    s9, 8(s0)
  ld    s3, 8(s0)
  sw    s7, 8(s0)
  lw    s3, 8(s0)
  lwu   s8, 8(s0)
  lh    a3, 8(s0)
  lbu   t0, 8(s0)
  lr.d      a5, (s0)
  sc.d      s8, t0, (s0)
  amoadd.w  a2, s5, (s0)
  amoswap.d t2, s9, (s0)
  amoand.w  s3, s2, (s0)
  amoor.d   t5, s10, (s0)
  amoxor.w  t0, s5, (s0)
  amomax.d  a5, t5, (s0)
  amominu.w t1, a1, (s0)
  fmv.w.x   f20, t1
  fmv.d.x   f4, a2
  fadd.s    f6, f10, f21
  fsub.s    f10, f10, f3
  fmul.s    f4, f7, f10
  fdiv.s    f11, f8, f7
  fmin.s    f1, f1, f7
  fmax.s    f1, f8, f21
  fsgnj.s   f0, f19, f7
  fadd.d    f5, f1, f6
  fsub.d    f10, f2, f21
  fmul.d    f20, f7, f4
  fdiv.d    f3, f9, f3
  fsqrt.d   f10, f18
  fmadd.d   f8, f9, f7, f18
  fcvt.s.w  f4, t1
  fcvt.d.w  f2, s6
  fcvt.d.s  f5, f0
  fcvt.s.d  f10, f20
  fcvt.w.s  t6, f9, rtz
  fcvt.l.d  a1, f21, rtz
  feq.d     s4, f11, f11
  flt.s     a5, f1, f6
  fclass.d  s3, f7
  csrr  s3, mscratch
  csrw  mscratch, a4
  csrrw t4, mscratch, a3
  csrrs s6, mstatus, x0
  csrrc s4, mscratch, x0
  csrrwi t2, mscratch, 28
  fence
  fence.i
  c.addi a0, -1
  c.mv   a1, a2
  c.li   a3, 19
  c.add  a4, a5
  la    s0, tdat
  li    a7, 1736
  li    a1, 441
  add   t4, a6, s11
  sub   s9, t5, a3
  xor   a6, t2, a6
  or    a5, s2, a5
  and   a5, s2, s5
  addi  s10, s3, -1242
  andi  s10, a1, 1853
  ori   t1, a5, 1980
  xori  t6, a5, 696
  slli  s4, s3, 10
  srli  a3, s9, 5
  srai  t1, s2, 46
  sllw  t3, t1, s7
  sraw  t1, t0, s10
  slt   a5, s4, t5
  sltu  s8, t4, t0
  sltiu a0, a2, 1543
  lui   t3, 0xb1c4d
  auipc t5, 0xe3
  addw  s3, s6, a1
  subw  a1, s3, t4
  addiw t4, a4, -1410
  mul   s4, s2, s4
  mulh  s6, t4, s9
  mulhu t5, a1, s7
  mulw  a5, s10, t2
  div   t0, s8, s6
  divu  s7, s4, s7
  rem   a2, s9, t4
  remu  a7, a7, t1
  divw  s3, a0, a7
  remw  a7, a0, a5
  sd    t0, 0(s0)
  ld    s8, 0(s0)
  sw    s3, 0(s0)
  lw    t6, 0(s0)
  lwu   a0, 0(s0)
  lh    a7, 0(s0)
  lbu   a0, 0(s0)
  lr.d      t2, (s0)
  sc.d      s10, a6, (s0)
  amoadd.w  s7, t3, (s0)
  amoswap.d t4, t5, (s0)
  amoand.w  a3, t0, (s0)
  amoor.d   t6, a7, (s0)
  amoxor.w  a5, a1, (s0)
  amomax.d  t5, t6, (s0)
  amominu.w s2, a2, (s0)
  fmv.w.x   f1, t3
  fmv.d.x   f9, a2
  fadd.s    f0, f9, f18
  fsub.s    f8, f8, f6
  fmul.s    f19, f21, f2
  fdiv.s    f20, f10, f0
  fmin.s    f21, f7, f1
  fmax.s    f19, f0, f20
  fsgnj.s   f1, f8, f1
  fadd.d    f8, f11, f0
  fsub.d    f7, f8, f2
  fmul.d    f1, f5, f4
  fdiv.d    f10, f3, f6
  fsqrt.d   f5, f11
  fmadd.d   f0, f20, f2, f21
  fcvt.s.w  f2, s5
  fcvt.d.w  f10, a0
  fcvt.d.s  f3, f3
  fcvt.s.d  f0, f19
  fcvt.w.s  t2, f21, rtz
  fcvt.l.d  s3, f21, rtz
  feq.d     t4, f18, f0
  flt.s     s11, f3, f9
  fclass.d  t6, f0
  csrr  s4, mscratch
  csrw  mscratch, a0
  csrrw a3, mscratch, s4
  csrrs s7, mstatus, x0
  csrrc t6, mscratch, x0
  csrrwi t2, mscratch, 11
  fence
  fence.i
  c.addi a0, -26
  c.mv   a1, a2
  c.li   a3, -13
  c.add  a4, a5
  la    s0, tdat
  li    a6, 565
  li    t5, -355
  add   s5, s10, t5
  sub   t6, s2, a3
  xor   a2, t1, s6
  or    s5, s10, a1
  and   a3, a4, a1
  addi  a5, a7, -652
  andi  a6, a6, 894
  ori   t4, a7, 1296
  xori  s10, a7, 2037
  slli  t4, s10, 16
  srli  a6, s8, 30
  srai  s10, a5, 50
  sllw  a5, a2, a4
  sraw  t0, a7, a2
  slt   a5, a2, s11
  sltu  s7, s3, s4
  sltiu t3, s6, 749
  lui   t2, 0xc6409
  auipc s10, 0x76
  addw  a6, a7, s10
  subw  t1, a6, s9
  addiw s10, a1, 849
  mul   s9, s8, t6
  mulh  s3, a7, s11
  mulhu s6, s9, a7
  mulw  a7, s3, s3
  div   s10, t6, t5
  divu  t5, s3, a5
  rem   a6, s8, a0
  remu  a6, t3, t4
  divw  a2, t6, t1
  remw  s5, a3, s8
  sd    t0, 8(s0)
  ld    t4, 8(s0)
  sw    t3, 8(s0)
  lw    t3, 8(s0)
  lwu   s4, 8(s0)
  lh    t3, 8(s0)
  lbu   a2, 8(s0)
  lr.d      t0, (s0)
  sc.d      a1, a7, (s0)
  amoadd.w  a2, t3, (s0)
  amoswap.d s5, a7, (s0)
  amoand.w  t3, a6, (s0)
  amoor.d   t1, a6, (s0)
  amoxor.w  t2, a7, (s0)
  amomax.d  s4, a4, (s0)
  amominu.w a7, s7, (s0)
  fmv.w.x   f9, a7
  fmv.d.x   f19, s4
  fadd.s    f3, f3, f21
  fsub.s    f2, f2, f2
  fmul.s    f5, f19, f10
  fdiv.s    f19, f1, f7
  fmin.s    f1, f10, f8
  fmax.s    f11, f5, f18
  fsgnj.s   f20, f10, f4
  fadd.d    f8, f9, f8
  fsub.d    f20, f9, f9
  fmul.d    f6, f6, f1
  fdiv.d    f6, f8, f0
  fsqrt.d   f18, f20
  fmadd.d   f3, f9, f2, f21
  fcvt.s.w  f0, t5
  fcvt.d.w  f19, a0
  fcvt.d.s  f11, f9
  fcvt.s.d  f7, f3
  fcvt.w.s  s8, f9, rtz
  fcvt.l.d  s10, f7, rtz
  feq.d     t5, f4, f7
  flt.s     a5, f11, f4
  fclass.d  s2, f5
  csrr  s7, mscratch
  csrw  mscratch, s9
  csrrw a0, mscratch, s4
  csrrs s3, mstatus, x0
  csrrc s6, mscratch, x0
  csrrwi t5, mscratch, 3
  fence
  fence.i
  c.addi a0, -19
  c.mv   a1, a2
  c.li   a3, -27
  c.add  a4, a5
  la    s0, tdat
  li    t4, 1575
  li    t5, 606
  add   a7, t3, t0
  sub   a3, s7, s3
  xor   a0, a3, t4
  or    s9, s8, s4
  and   s10, a6, s11
  addi  a5, t4, 1645
  andi  s2, a3, 802
  ori   a3, t5, 1757
  xori  a5, s4, 793
  slli  s4, t3, 22
  srli  a4, t5, 47
  srai  s4, s3, 3
  sllw  a1, a7, t4
  sraw  a2, s8, s2
  slt   s7, s7, s5
  sltu  a0, s10, t0
  sltiu a5, s10, 1012
  lui   a0, 0x6b0b7
  auipc a6, 0x62
  addw  s7, s7, s3
  subw  t4, s8, t2
  addiw t6, t2, 1745
  mul   t2, a6, t5
  mulh  s6, a3, t0
  mulhu s9, a5, a4
  mulw  s5, t5, s10
  div   t0, a5, a5
  divu  t0, s5, a0
  rem   s10, a7, t0
  remu  a3, s8, a6
  divw  a6, s2, s2
  remw  s3, t1, s10
  sd    s10, 0(s0)
  ld    s5, 0(s0)
  sw    t1, 0(s0)
  lw    s7, 0(s0)
  lwu   a5, 0(s0)
  lh    t6, 0(s0)
  lbu   a3, 0(s0)
  lr.d      s10, (s0)
  sc.d      t0, s8, (s0)
  amoadd.w  s7, t6, (s0)
  amoswap.d s8, t5, (s0)
  amoand.w  t3, a4, (s0)
  amoor.d   s2, a7, (s0)
  amoxor.w  s8, s6, (s0)
  amomax.d  t6, t6, (s0)
  amominu.w a3, s11, (s0)
  fmv.w.x   f11, a0
  fmv.d.x   f2, s7
  fadd.s    f18, f20, f19
  fsub.s    f1, f21, f9
  fmul.s    f0, f6, f19
  fdiv.s    f5, f2, f8
  fmin.s    f1, f2, f6
  fmax.s    f18, f9, f0
  fsgnj.s   f21, f4, f1
  fadd.d    f19, f10, f18
  fsub.d    f3, f20, f8
  fmul.d    f7, f5, f0
  fdiv.d    f18, f20, f10
  fsqrt.d   f11, f18
  fmadd.d   f2, f5, f11, f18
  fcvt.s.w  f20, a4
  fcvt.d.w  f18, a7
  fcvt.d.s  f19, f2
  fcvt.s.d  f8, f19
  fcvt.w.s  s9, f7, rtz
  fcvt.l.d  a5, f6, rtz
  feq.d     t5, f8, f19
  flt.s     a7, f3, f11
  fclass.d  a0, f11
  csrr  s2, mscratch
  csrw  mscratch, s2
  csrrw s2, mscratch, t6
  csrrs a3, mstatus, x0
  csrrc a0, mscratch, x0
  csrrwi t5, mscratch, 22
  fence
  fence.i
  c.addi a0, -16
  c.mv   a1, a2
  c.li   a3, 26
  c.add  a4, a5
  la    s0, tdat
  li    t6, 1305
  li    a5, 1915
  add   s4, a4, a1
  sub   s10, t2, t0
  xor   t1, t0, t3
  or    a6, t0, a6
  and   t3, t0, s8
  addi  a3, a7, 1044
  andi  t3, a2, 1206
  ori   t2, s10, 1632
  xori  s7, t1, 276
  slli  s9, a3, 48
  srli  s11, a7, 19
  srai  s9, s8, 23
  sllw  a7, s8, s5
  sraw  s11, s7, a3
  slt   a2, t2, t2
  sltu  t1, a0, s4
  sltiu t6, t3, 181
  lui   t0, 0xf46a5
  auipc a6, 0x39
  addw  s3, a7, a2
  subw  a2, s8, s9
  addiw s4, a5, 783
  mul   t0, a2, a5
  mulh  s3, s3, t6
  mulhu a6, t2, s5
  mulw  s3, s7, s11
  div   t3, t3, a4
  divu  a4, s7, a5
  rem   a7, s9, s2
  remu  t2, s9, a7
  divw  s9, a7, t4
  remw  s11, t1, s9
  sd    t2, 8(s0)
  ld    s8, 8(s0)
  sw    a7, 8(s0)
  lw    s3, 8(s0)
  lwu   t6, 8(s0)
  lh    s10, 8(s0)
  lbu   t5, 8(s0)
  lr.d      s6, (s0)
  sc.d      a2, s4, (s0)
  amoadd.w  t4, t6, (s0)
  amoswap.d t3, a1, (s0)
  amoand.w  a4, t1, (s0)
  amoor.d   a4, s8, (s0)
  amoxor.w  a5, t3, (s0)
  amomax.d  a2, t4, (s0)
  amominu.w s4, a1, (s0)
  fmv.w.x   f10, t0
  fmv.d.x   f4, s6
  fadd.s    f1, f4, f6
  fsub.s    f6, f4, f2
  fmul.s    f7, f3, f5
  fdiv.s    f5, f19, f8
  fmin.s    f9, f6, f8
  fmax.s    f21, f10, f18
  fsgnj.s   f8, f6, f4
  fadd.d    f18, f19, f18
  fsub.d    f6, f21, f11
  fmul.d    f20, f20, f5
  fdiv.d    f8, f9, f20
  fsqrt.d   f19, f10
  fmadd.d   f3, f9, f3, f18
  fcvt.s.w  f19, t1
  fcvt.d.w  f0, a5
  fcvt.d.s  f10, f18
  fcvt.s.d  f5, f2
  fcvt.w.s  a4, f1, rtz
  fcvt.l.d  s4, f6, rtz
  feq.d     a1, f21, f6
  flt.s     a7, f21, f18
  fclass.d  a5, f4
  csrr  a2, mscratch
  csrw  mscratch, s3
  csrrw a6, mscratch, t5
  csrrs s11, mstatus, x0
  csrrc a6, mscratch, x0
  csrrwi s5, mscratch, 14
  fence
  fence.i
  c.addi a0, 28
  c.mv   a1, a2
  c.li   a3, -11
  c.add  a4, a5
  la    s0, tdat
  li    t0, 99
  li    t6, 806
  add   t1, t1, a1
  sub   s4, a0, s5
  xor   t1, s9, s3
  or    s6, s4, a0
  and   s10, t4, a0
  addi  a6, s2, 1942
  andi  t2, s9, 593
  ori   s3, s7, 312
  xori  a6, t1, -564
  slli  a5, a2, 24
  srli  t1, s8, 31
  srai  a2, s6, 39
  sllw  t0, s7, t0
  sraw  t6, t4, s2
  slt   t1, t3, s6
  sltu  t6, a1, t0
  sltiu a1, t4, 231
  lui   t1, 0xb39b4
  auipc s2, 0x9e
  addw  t0, a2, t3
  subw  t4, t5, s7
  addiw t3, t1, -1010
  mul   a6, a7, t0
  mulh  s11, a6, s4
  mulhu t5, s8, t0
  mulw  s10, t4, s5
  div   s6, s8, a6
  divu  a6, s3, a5
  rem   s4, t5, t1
  remu  s3, a7, s10
  divw  s11, s7, s10
  remw  s7, a3, a4
  sd    a7, 0(s0)
  ld    s7, 0(s0)
  sw    a0, 0(s0)
  lw    s11, 0(s0)
  lwu   s5, 0(s0)
  lh    a1, 0(s0)
  lbu   s9, 0(s0)
  lr.d      t0, (s0)
  sc.d      a1, s9, (s0)
  amoadd.w  s3, s6, (s0)
  amoswap.d a3, t3, (s0)
  amoand.w  t0, s9, (s0)
  amoor.d   t0, s9, (s0)
  amoxor.w  t6, t0, (s0)
  amomax.d  a3, s8, (s0)
  amominu.w s5, t5, (s0)
  fmv.w.x   f11, a1
  fmv.d.x   f7, s7
  fadd.s    f21, f1, f10
  fsub.s    f1, f9, f7
  fmul.s    f2, f18, f7
  fdiv.s    f20, f2, f2
  fmin.s    f8, f6, f6
  fmax.s    f11, f9, f0
  fsgnj.s   f19, f6, f10
  fadd.d    f9, f2, f21
  fsub.d    f18, f8, f9
  fmul.d    f21, f0, f5
  fdiv.d    f20, f11, f3
  fsqrt.d   f5, f11
  fmadd.d   f3, f6, f3, f8
  fcvt.s.w  f9, s2
  fcvt.d.w  f0, a4
  fcvt.d.s  f4, f6
  fcvt.s.d  f10, f19
  fcvt.w.s  a6, f1, rtz
  fcvt.l.d  s6, f7, rtz
  feq.d     s6, f1, f7
  flt.s     t3, f8, f4
  fclass.d  a6, f7
  csrr  s5, mscratch
  csrw  mscratch, t3
  csrrw t0, mscratch, a1
  csrrs t3, mstatus, x0
  csrrc t0, mscratch, x0
  csrrwi a0, mscratch, 29
  fence
  fence.i
  c.addi a0, 18
  c.mv   a1, a2
  c.li   a3, 8
  c.add  a4, a5
  la    s0, tdat
  li    t3, 1827
  li    t5, 114
  add   s5, s9, s10
  sub   a6, t1, s4
  xor   t2, t1, t1
  or    a4, a5, a5
  and   s9, s9, t3
  addi  a0, t6, -742
  andi  s3, a7, 1596
  ori   a7, t4, 1851
  xori  a3, a6, -1248
  slli  s7, t6, 6
  srli  t2, s7, 38
  srai  s2, t1, 38
  sllw  t0, s9, a7
  sraw  t5, t4, t3
  slt   a0, a5, a7
  sltu  s3, t2, s9
  sltiu t2, a6, 1370
  lui   a2, 0xd294d
  auipc s2, 0xb8
  addw  s8, s6, a2
  subw  a0, s7, s11
  addiw t5, s8, 1946
  mul   s4, a7, t4
  mulh  s9, s4, t0
  mulhu s6, a5, s9
  mulw  s2, t2, s9
  div   s7, s3, a2
  divu  a1, a5, s9
  rem   a1, s4, a0
  remu  a1, t4, a0
  divw  s10, s10, a7
  remw  a5, s2, s11
  sd    a6, 0(s0)
  ld    s11, 0(s0)
  sw    t2, 0(s0)
  lw    a6, 0(s0)
  lwu   s9, 0(s0)
  lh    a1, 0(s0)
  lbu   t1, 0(s0)
  lr.d      a5, (s0)
  sc.d      t3, s9, (s0)
  amoadd.w  s8, a2, (s0)
  amoswap.d s6, s2, (s0)
  amoand.w  t3, t4, (s0)
  amoor.d   s9, a4, (s0)
  amoxor.w  a6, t5, (s0)
  amomax.d  t1, a1, (s0)
  amominu.w a7, s3, (s0)
  fmv.w.x   f10, t2
  fmv.d.x   f21, t6
  fadd.s    f11, f21, f11
  fsub.s    f10, f21, f19
  fmul.s    f4, f20, f5
  fdiv.s    f18, f1, f10
  fmin.s    f5, f20, f11
  fmax.s    f11, f5, f18
  fsgnj.s   f11, f3, f7
  fadd.d    f19, f8, f20
  fsub.d    f3, f20, f3
  fmul.d    f7, f11, f8
  fdiv.d    f0, f18, f10
  fsqrt.d   f0, f19
  fmadd.d   f3, f0, f9, f21
  fcvt.s.w  f5, s5
  fcvt.d.w  f20, t6
  fcvt.d.s  f21, f11
  fcvt.s.d  f19, f5
  fcvt.w.s  a5, f20, rtz
  fcvt.l.d  a4, f9, rtz
  feq.d     a7, f7, f20
  flt.s     t5, f5, f0
  fclass.d  s2, f21
  csrr  a0, mscratch
  csrw  mscratch, a1
  csrrw s3, mscratch, t5
  csrrs s7, mstatus, x0
  csrrc a5, mscratch, x0
  csrrwi s8, mscratch, 25
  fence
  fence.i
  c.addi a0, -18
  c.mv   a1, a2
  c.li   a3, 31
  c.add  a4, a5
  la    s0, tdat
  li    a5, 1329
  li    s5, -513
  add   s5, a1, t6
  sub   a0, t5, s5
  xor   s4, a0, s3
  or    a0, t0, a0
  and   s4, t2, t4
  addi  s11, a1, 81
  andi  s6, a4, 1982
  ori   s8, a3, 1821
  xori  s5, a2, -423
  slli  s10, s7, 30
  srli  a6, t2, 6
  srai  s9, s11, 14
  sllw  s6, s7, t1
  sraw  s10, a3, a3
  slt   s7, s10, t0
  sltu  t4, a5, s9
  sltiu t0, a5, 19
  lui   t2, 0x143e2
  auipc s10, 0xf4
  addw  t4, s5, a1
  subw  t0, s9, a2
  addiw s4, a6, -1681
  mul   a2, t5, s9
  mulh  s10, a3, a5
  mulhu s11, s2, t4
  mulw  t1, a0, s7
  div   t0, a3, s7
  divu  s2, a0, s4
  rem   s4, s4, t1
  remu  a5, a7, t0
  divw  t1, s7, a7
  remw  t0, t4, a5
  sd    t0, 0(s0)
  ld    a1, 0(s0)
  sw    a4, 0(s0)
  lw    a1, 0(s0)
  lwu   s3, 0(s0)
  lh    t4, 0(s0)
  lbu   t3, 0(s0)
  lr.d      s4, (s0)
  sc.d      a7, s8, (s0)
  amoadd.w  s4, a0, (s0)
  amoswap.d a7, a3, (s0)
  amoand.w  a7, s2, (s0)
  amoor.d   s6, t6, (s0)
  amoxor.w  t6, a3, (s0)
  amomax.d  s10, s4, (s0)
  amominu.w t5, s3, (s0)
  fmv.w.x   f19, s7
  fmv.d.x   f2, s11
  fadd.s    f2, f11, f3
  fsub.s    f4, f0, f2
  fmul.s    f21, f7, f4
  fdiv.s    f18, f5, f20
  fmin.s    f2, f9, f21
  fmax.s    f9, f6, f0
  fsgnj.s   f18, f3, f11
  fadd.d    f1, f11, f8
  fsub.d    f4, f9, f6
  fmul.d    f10, f5, f19
  fdiv.d    f6, f4, f19
  fsqrt.d   f4, f2
  fmadd.d   f10, f8, f18, f2
  fcvt.s.w  f7, t0
  fcvt.d.w  f18, t6
  fcvt.d.s  f20, f19
  fcvt.s.d  f5, f11
  fcvt.w.s  t2, f2, rtz
  fcvt.l.d  s4, f4, rtz
  ld    a0, tdat, 0(s0)
  feq.d     t4, f10, f1
  flt.s     s8, f1, f10
  fclass.d  s4, f2
  csrr  t2, mscratch
  csrw  mscratch, a1
  csrrw s3, mscratch, s3
  csrrs a2, mstatus, x0
  csrrc a4, mscratch, x0
  csrrwi t3, mscratch, 4
  fence
  fence.i
  c.addi a0, 4
  c.mv   a1, a2
  c.li   a3, 9
  c.add  a4, a5
  la    s0, tdat
  li    t5, 653
  li    a1, 13
  add   s3, s7, s5
  sub   s9, a3, s9
  xor   a0, t6, s6
  or    s6, a0, s3
  and   a3, t4, s3
  addi  a4, a6, -858
  andi  a7, t2, 943
  ori   s11, s6, 1761
  xori  t3, a1, 452
  slli  a4, t3, 52
  srli  s6, a1, 46
  srai  s7, t2, 0
  sllw  t3, t5, s9
  sraw  s11, s11, t4
  slt   s5, s10, s9
  sltu  s8, t2, t4
  sltiu a7, a0, 1299
  lui   t1, 0x655b3
  auipc s7, 0x80
  addw  s7, t4, s4
  subw  s10, t5, a4
  addiw s3, a4, 2020
  mul   s11, s4, a5
  mulh  a1, s6, s9
  mulhu s2, t5, a6
  mulw  a3, s5, a6
  div   t6, a4, s8
  divu  s10, s2, a2
  rem   a5, t5, a0
  remu  t5, s11, t2
  divw  a3, s9, s4
  remw  t6, t2, s2
  sd    t4, 8(s0)
  ld    s4, 8(s0)
  sw    s3, 8(s0)
  lw    s9, 8(s0)
  lwu   s6, 8(s0)
  lh    t4, 8(s0)
  lbu   s2, 8(s0)
  lr.d      t5, (s0)
  sc.d      s6, a2, (s0)
  amoadd.w  s5, s8, (s0)
  amoswap.d t3, t3, (s0)
  amoand.w  s9, a2, (s0)
  amoor.d   s10, t3, (s0)
  amoxor.w  s8, s2, (s0)
  amomax.d  a5, a6, (s0)
  amominu.w t6, s6, (s0)
  fmv.w.x   f0, s9
  fmv.d.x   f3, s9
  fadd.s    f6, f5, f5
  fsub.s    f8, f9, f19
  fmul.s    f4, f8, f21
  fdiv.s    f11, f6, f11
  fmin.s    f3, f0, f8
  fmax.s    f21, f2, f9
  fsgnj.s   f18, f3, f2
  fadd.d    f9, f8, f0
  fsub.d    f3, f6, f18
  fmul.d    f20, f6, f9
  fdiv.d    f10, f3, f1
  fsqrt.d   f8, f3
  fmadd.d   f18, f20, f20, f18
  fcvt.s.w  f20, s10
  fcvt.d.w  f2, s3
  fcvt.d.s  f4, f11
  fcvt.s.d  f0, f2
  fcvt.w.s  t3, f19, rtz
  fcvt.l.d  a2, f8, rtz
  feq.d     t0, f7, f4
  flt.s     t3, f19, f21
  fclass.d  t4, f0
  csrr  a1, mscratch
  csrw  mscratch, s5
  csrrw a1, mscratch, a5
  csrrs s8, mstatus, x0
  csrrc s2, mscratch, x0
  csrrwi s11, mscratch, 5
  fence
  fence.i
  c.addi a0, -6
  c.mv   a1, a2
  c.li   a3, -12
  c.add  a4, a5
  la    s0, tdat
  li    s10, 397
  li    t3, -1275
  add   t6, s8, s5
  sub   t5, s3, s7
  xor   s2, s6, t2
  or    a3, a4, a2
  and   t5, s3, a7
  addi  s3, s4, -7
  andi  a7, s10, 1859
  ori   t1, a1, 1389
  xori  t4, a3, -1502
  slli  a3, s4, 18
  srli  t6, t1, 20
  srai  t4, s5, 33
  sllw  s11, a0, a1
  sraw  a5, t4, t3
  slt   s5, a0, s5
  sltu  s9, s2, a1
  sltiu t1, a7, 1887
  lui   s9, 0xd24de
  auipc s5, 0xa9
  addw  a4, a5, a0
  subw  a0, a5, a4
  addiw a6, a6, -1037
  mul   s8, s11, s4
  mulh  s5, a2, a1
  mulhu t2, s6, s4
  mulw  t3, t3, s9
  div   s7, a4, t0
  divu  t3, s7, t6
  rem   s4, t5, s5
  remu  a2, a1, s4
  divw  a7, s7, t1
  remw  s11, s3, t1
  sd    s2, 8(s0)
  ld    s5, 8(s0)
  sw    t3, 8(s0)
  lw    a3, 8(s0)
  lwu   t3, 8(s0)
  lh    t6, 8(s0)
  lbu   s5, 8(s0)
  lr.d      s7, (s0)
  sc.d      a2, s10, (s0)
  amoadd.w  t5, s7, (s0)
  amoswap.d s9, a3, (s0)
  amoand.w  a2, t3, (s0)
  amoor.d   a2, s7, (s0)
  amoxor.w  a7, s9, (s0)
  amomax.d  s10, s10, (s0)
  amominu.w s6, s6, (s0)
  fmv.w.x   f8, t3
  fmv.d.x   f11, t5
  fadd.s    f10, f7, f20
  fsub.s    f9, f1, f2
  fmul.s    f8, f11, f7
  fdiv.s    f1, f21, f9
  fmin.s    f21, f18, f18
  fmax.s    f20, f5, f0
  fsgnj.s   f9, f3, f3
  fadd.d    f11, f0, f7
  fsub.d    f1, f21, f10
  fmul.d    f20, f21, f6
  fdiv.d    f1, f20, f19
  fsqrt.d   f6, f6
  fmadd.d   f3, f1, f5, f5
  fcvt.s.w  f1, t1
  fcvt.d.w  f3, t5
  fcvt.d.s  f21, f2
  fcvt.s.d  f9, f6
  fcvt.w.s  a5, f20, rtz
  fcvt.l.d  s2, f21, rtz
  feq.d     s2, f8, f6
  flt.s     t6, f20, f5
  fclass.d  a5, f20
  csrr  t4, mscratch
  csrw  mscratch, a6
  csrrw a5, mscratch, s11
  csrrs s3, mstatus, x0
  csrrc t4, mscratch, x0
  csrrwi t0, mscratch, 7
  fence
  fence.i
  c.addi a0, -24
  c.mv   a1, a2
  c.li   a3, -15
  c.add  a4, a5
  la    s0, tdat
  li    s11, 733
  li    s3, -1428
  add   s8, s11, t6
  sub   t0, t0, a5
  xor   a5, s4, a2
  or    s2, s7, t5
  and   t1, t1, t1
  addi  a4, a6, 1974
  andi  s11, a4, 480
  ori   a4, s9, 636
  xori  s6, a4, 1219
  slli  t1, t1, 31
  srli  s7, t0, 1
  srai  a5, s10, 2
  sllw  s7, a4, s9
  sraw  t1, s10, a4
  slt   a0, s6, s9
  sltu  s11, t3, s11
  sltiu t4, t5, 750
  lui   t6, 0xbb27e
  auipc s6, 0xf2
  addw  s6, s3, a0
  subw  t0, s9, t2
  addiw s8, t6, -1425
  mul   t6, t4, a2
  mulh  s4, t5, a7
  mulhu s2, a5, s8
  mulw  s3, s2, a6
  div   a2, a3, a4
  divu  s6, s11, t5
  rem   a5, t5, t2
  remu  s5, s8, s8
  divw  t5, a5, a0
  remw  s10, s6, t1
  sd    t1, 8(s0)
  ld    a4, 8(s0)
  sw    a7, 8(s0)
  lw    s7, 8(s0)
  lwu   t1, 8(s0)
  lh    t4, 8(s0)
  lbu   s10, 8(s0)
  lr.d      t5, (s0)
  sc.d      t1, s5, (s0)
  amoadd.w  s5, a5, (s0)
  amoswap.d t6, t6, (s0)
  amoand.w  s3, t1, (s0)
  amoor.d   a7, s11, (s0)
  amoxor.w  a0, t0, (s0)
  amomax.d  a7, s3, (s0)
  amominu.w a2, t3, (s0)
  fmv.w.x   f5, a5
  fmv.d.x   f2, t0
  fadd.s    f20, f19, f8
  fsub.s    f11, f6, f8
  fmul.s    f2, f11, f1
  fdiv.s    f18, f3, f8
  fmin.s    f5, f19, f18
  fmax.s    f10, f8, f19
  fsgnj.s   f10, f21, f18
  fadd.d    f5, f20, f4
  fsub.d    f8, f18, f19
  fmul.d    f19, f9, f5
  fdiv.d    f4, f9, f6
  fsqrt.d   f8, f0
  fmadd.d   f20, f20, f18, f5
  fcvt.s.w  f2, a0
  fcvt.d.w  f2, s9
  fcvt.d.s  f9, f4
  fcvt.s.d  f3, f19
  fcvt.w.s  a2, f2, rtz
  fcvt.l.d  s9, f5, rtz
  feq.d     a3, f6, f3
  flt.s     a7, f6, f5
  fclass.d  s5, f11
  csrr  t0, mscratch
  csrw  mscratch, s9
  csrrw a3, mscratch, s9
  csrrs s6, mstatus, x0
  csrrc t5, mscratch, x0
  csrrwi t1, mscratch, 13
  fence
  fence.i
  c.addi a0, -23
  c.mv   a1, a2
  c.li   a3, -8
  c.add  a4, a5
  la    s0, tdat
  li    t4, 336
  li    a2, 893
  add   t1, s4, s10
  sub   a2, s5, t5
  xor   s2, t1, t1
  or    a2, s5, t4
  and   a5, t4, s10
  addi  a6, s9, 425
  andi  s2, a5, 350
  ori   a4, t6, 1473
  xori  t5, a6, -1769
  slli  a1, t1, 42
  srli  s3, s9, 28
  srai  s11, t1, 45
  sllw  t0, a4, a3
  sraw  t0, s5, s3
  slt   s5, t4, t1
  sltu  s11, s2, s10
  sltiu s2, s4, 602
  lui   s5, 0x3c1b9
  auipc t2, 0x4b
  addw  t1, s10, s5
  subw  t6, a4, a5
  addiw s4, t4, 717
  mul   a4, a4, s11
  mulh  s8, s7, s2
  mulhu a2, s6, a6
  mulw  a4, s11, s3
  div   s5, t6, t3
  divu  s5, t4, s2
  rem   t3, s4, t3
  remu  a3, s4, a1
  divw  t4, t3, s9
  remw  a3, t1, a1
  sd    s10, 0(s0)
  ld    a6, 0(s0)
  sw    s9, 0(s0)
  lw    a0, 0(s0)
  lwu   s10, 0(s0)
  lh    a5, 0(s0)
  lbu   a6, 0(s0)
  lr.d      s8, (s0)
  sc.d      t4, a6, (s0)
  amoadd.w  a1, a2, (s0)
  amoswap.d a0, t4, (s0)
  amoand.w  s3, a6, (s0)
  amoor.d   s4, t2, (s0)
  amoxor.w  t0, s9, (s0)
  amomax.d  s11, s8, (s0)
  amominu.w a1, a5, (s0)
  fmv.w.x   f11, t2
  fmv.d.x   f0, a4
  fadd.s    f21, f0, f5
  fsub.s    f1, f6, f19
  fmul.s    f1, f3, f20
  fdiv.s    f3, f3, f18
  fmin.s    f9, f1, f5
  fmax.s    f6, f4, f6
  fsgnj.s   f18, f7, f3
  fadd.d    f21, f11, f2
  fsub.d    f20, f8, f2
  fmul.d    f18, f7, f21
  fdiv.d    f21, f20, f7
  fsqrt.d   f18, f9
  fmadd.d   f11, f1, f11, f21
  fcvt.s.w  f20, s5
  fcvt.d.w  f4, t6
  fcvt.d.s  f5, f1
  fcvt.s.d  f21, f11
  fcvt.w.s  s5, f21, rtz
  fcvt.l.d  t1, f9, rtz
  feq.d     s4, f21, f9
  flt.s     s11, f5, f9
  fclass.d  t5, f1
  csrr  s8, mscratch
  csrw  mscratch, t2
  csrrw t1, mscratch, t6
  csrrs s6, mstatus, x0
  csrrc t2, mscratch, x0
  csrrwi s11, mscratch, 3
  fence
  fence.i
  c.addi a0, -14
  c.mv   a1, a2
  c.li   a3, 9
  c.add  a4, a5
  la    s0, tdat
  li    a3, 993
  li    s11, 1728
  add   s10, t3, a0
  sub   s3, s8, s6
  xor   s8, a4, t2
  or    s10, s7, t0
  and   s4, a3, a7
  addi  s7, s3, 1194
  andi  a6, t5, 675
  ori   s11, s7, 1054
  xori  s8, s3, 1493
  slli  s3, a4, 39
  srli  s7, t5, 2
  srai  a4, a4, 42
  sllw  t1, s8, s5
  sraw  a4, s9, a2
  slt   a6, a6, a7
  sltu  s8, a4, t6
  sltiu a5, t5, 1000
  lui   t6, 0xc679b
  auipc a7, 0xc4
  addw  t6, t2, t6
  subw  s11, a3, s9
  addiw s2, t3, 1365
  mul   s8, s11, a3
  mulh  t2, s10, s8
  mulhu s10, s3, a5
  mulw  t2, a0, a4
  div   s10, a0, t2
  divu  s9, a6, s9
  rem   a7, s11, a1
  remu  s3, t5, a2
  divw  a4, a1, s7
  remw  s8, s11, s4
  sd    a0, 8(s0)
  ld    s11, 8(s0)
  sw    a0, 8(s0)
  lw    t4, 8(s0)
  lwu   s9, 8(s0)
  lh    t6, 8(s0)
  lbu   s8, 8(s0)
  lr.d      s8, (s0)
  sc.d      s9, s7, (s0)
  amoadd.w  s7, s10, (s0)
  amoswap.d a4, s6, (s0)
  amoand.w  s9, a3, (s0)
  amoor.d   s11, s11, (s0)
  amoxor.w  s7, s5, (s0)
  amomax.d  s10, a7, (s0)
  amominu.w t3, s6, (s0)
  fmv.w.x   f8, a5
  fmv.d.x   f2, s2
  fadd.s    f9, f2, f11
  fsub.s    f4, f6, f0
  fmul.s    f0, f1, f3
  fdiv.s    f2, f5, f21
  fmin.s    f3, f10, f7
  fmax.s    f1, f21, f1
  fsgnj.s   f2, f4, f6
  fadd.d    f7, f11, f0
  fsub.d    f18, f19, f8
  fmul.d    f3, f5, f2
  fdiv.d    f3, f11, f0
  fsqrt.d   f19, f11
  fmadd.d   f10, f3, f2, f11
  fcvt.s.w  f6, t5
  fcvt.d.w  f7, a4
  fcvt.d.s  f9, f3
  fcvt.s.d  f2, f5
  fcvt.w.s  a3, f3, rtz
  fcvt.l.d  t5, f21, rtz
  feq.d     s6, f1, f18
  flt.s     s9, f11, f2
  fclass.d  s2, f5
  csrr  t3, mscratch
  csrw  mscratch, a2
  csrrw a2, mscratch, t5
  csrrs t0, mstatus, x0
  csrrc a4, mscratch, x0
  csrrwi s11, mscratch, 28
  fence
  fence.i
  c.addi a0, -25
  c.mv   a1, a2
  c.li   a3, 7
  c.add  a4, a5
  la    s0, tdat
  li    s10, 1495
  li    s3, -252
  add   t4, s10, a4
  sub   a1, s9, t6
  xor   s10, s9, s4
  or    s4, s8, a1
  and   s11, t6, s8
  addi  s7, s4, 883
  andi  a1, t2, 297
  ori   s4, t2, 613
  xori  t4, a0, -1607
  slli  a7, a7, 9
  srli  s11, a0, 54
  srai  t3, s11, 23
  sllw  t4, a1, a2
  sraw  a0, t2, t4
  slt   s10, t5, s10
  sltu  a2, s9, a7
  sltiu s5, a1, 1470
  lui   s10, 0x363c9
  auipc s7, 0xed
  addw  a3, s11, s8
  subw  a4, s8, s2
  addiw t0, s4, -875
  mul   a0, a4, t2
  mulh  t1, a5, s6
  mulhu a3, a0, s10
  mulw  s7, t6, s6
  div   t2, s3, s10
  divu  s7, a3, s8
  rem   s9, a5, s7
  remu  t6, a7, a2
  divw  s10, a4, s11
  remw  s4, a1, s7
  sd    t0, 8(s0)
  ld    a2, 8(s0)
  sw    s10, 8(s0)
  lw    a1, 8(s0)
  lwu   s6, 8(s0)
  lh    s7, 8(s0)
  lbu   a7, 8(s0)
  lr.d      t1, (s0)
  sc.d      s9, s7, (s0)
  amoadd.w  a6, t4, (s0)
  amoswap.d a0, t3, (s0)
  amoand.w  t0, s10, (s0)
  amoor.d   s9, t6, (s0)
  amoxor.w  t2, t6, (s0)
  amomax.d  s2, t0, (s0)
  amominu.w s11, s7, (s0)
  fmv.w.x   f0, a1
  fmv.d.x   f6, s3
  fadd.s    f7, f4, f6
  fsub.s    f2, f10, f18
  fmul.s    f9, f5, f1
  fdiv.s    f8, f6, f4
  fmin.s    f9, f9, f10
  fmax.s    f11, f11, f5
  fsgnj.s   f18, f21, f0
  fadd.d    f4, f20, f6
  fsub.d    f20, f21, f9
  fmul.d    f5, f21, f7
  fdiv.d    f3, f18, f9
  fsqrt.d   f18, f8
  fmadd.d   f3, f18, f0, f2
  fcvt.s.w  f21, s5
  fcvt.d.w  f2, s6
  fcvt.d.s  f8, f20
  fcvt.s.d  f2, f19
  fcvt.w.s  s7, f1, rtz
  fcvt.l.d  a2, f5, rtz
  feq.d     a6, f10, f5
  flt.s     t0, f3, f0
  fclass.d  s5, f19
  csrr  t2, mscratch
  csrw  mscratch, a6
  csrrw s7, mscratch, s5
  csrrs s4, mstatus, x0
  csrrc t0, mscratch, x0
  csrrwi a2, mscratch, 1
  fence
  fence.i
  c.addi a0, -32
  c.mv   a1, a2
  c.li   a3, -22
  c.add  a4, a5
  la    s0, tdat
  li    t0, 607
  li    s3, 1873
  add   a4, s2, a1
  sub   s5, s2, s5
  xor   t2, s6, a0
  or    s11, t2, s2
  and   s8, s11, s3
  addi  a4, s6, -1347
  andi  s2, s5, 1994
  ori   a0, t2, 1294
  xori  s6, a3, 1633
  slli  t6, t1, 28
  srli  s4, s5, 53
  srai  s4, a1, 2
  sllw  s3, s8, a1
  sraw  a7, t5, a7
  slt   s3, s2, t1
  sltu  s8, a3, t0
  sltiu a6, a2, 368
  lui   a0, 0xf893
  auipc a5, 0x5
  addw  t6, t2, t0
  subw  a3, t3, a3
  addiw s6, a4, 487
  mul   a6, s4, s9
  mulh  s10, s9, s11
  mulhu a7, a6, s3
  mulw  s11, s4, s8
  div   t0, s7, a7
  divu  s2, a0, a4
  rem   s11, t4, a4
  remu  t1, s4, s8
  divw  t2, t2, s5
  remw  a2, s4, t1
  sd    t2, 0(s0)
  ld    s6, 0(s0)
  sw    a1, 0(s0)
  lw    t1, 0(s0)
  lwu   s6, 0(s0)
  lh    t1, 0(s0)
  lbu   t1, 0(s0)
  lr.d      s6, (s0)
  sc.d      t2, s11, (s0)
  amoadd.w  s5, t1, (s0)
  amoswap.d s7, a5, (s0)
  amoand.w  s10, a2, (s0)
  amoor.d   s6, t2, (s0)
  amoxor.w  s4, a2, (s0)
  amomax.d  t4, t1, (s0)
  amominu.w s2, t3, (s0)
  fmv.w.x   f0, t2
  fmv.d.x   f3, t5
  fadd.s    f5, f1, f8
  fsub.s    f20, f21, f10
  fmul.s    f9, f4, f11
  fdiv.s    f21, f19, f4
  fmin.s    f19, f18, f0
  fmax.s    f18, f20, f4
  fsgnj.s   f4, f2, f0
  fadd.d    f0, f1, f10
  fsub.d    f10, f10, f4
  fmul.d    f18, f6, f10
  fdiv.d    f2, f11, f7
  fsqrt.d   f20, f1
  fmadd.d   f18, f19, f4, f1
  fcvt.s.w  f1, t3
  fcvt.d.w  f6, t6
  fcvt.d.s  f6, f20
  fcvt.s.d  f0, f4
  fcvt.w.s  a5, f9, rtz
  fcvt.l.d  s2, f2, rtz
  feq.d     s9, f7, f20
  flt.s     s6, f0, f2
  fclass.d  t2, f9
  csrr  s7, mscratch
  csrw  mscratch, a5
  csrrw t2, mscratch, t5
  csrrs s3, mstatus, x0
  csrrc t3, mscratch, x0
  csrrwi s5, mscratch, 3
  fence
  fence.i
  c.addi a0, -7
  c.mv   a1, a2
  c.li   a3, 11
  c.add  a4, a5
  la    s0, tdat
  li    t6, 933
  li    s8, 1121
  add   s7, t0, s11
  sub   a0, s11, s2
  xor   a3, t4, a2
  or    a3, t4, a0
  and   a5, a5, a1
  addi  s9, a0, 210
  andi  t3, a2, 1880
  ori   a5, t4, 1871
  xori  s11, s10, -1460
  slli  s4, t2, 24
  srli  s6, t3, 24
  srai  t1, s6, 45
  sllw  s2, s2, a6
  sraw  t1, t6, s2
  slt   a5, a3, t3
  sltu  s5, t6, s7
  sltiu t6, a0, 1755
  lui   a6, 0xcd42f
  auipc a1, 0x8e
  addw  s11, s4, s11
  subw  a0, a4, a5
  addiw t5, t0, -1972
  mul   s8, s8, a0
  mulh  s7, a0, t6
  mulhu a5, a3, t3
  mulw  s7, t4, s2
  div   a0, s8, s10
  divu  s11, a3, t1
  rem   t2, s7, t1
  remu  s2, s6, t4
  divw  a7, a5, a3
  remw  s10, s7, s5
  sd    s7, 0(s0)
  ld    s6, 0(s0)
  sw    a0, 0(s0)
  lw    a6, 0(s0)
  lwu   t6, 0(s0)
  lh    s2, 0(s0)
  lbu   a6, 0(s0)
  lr.d      t3, (s0)
  sc.d      s10, s11, (s0)
  amoadd.w  s6, a6, (s0)
  amoswap.d t4, t1, (s0)
  amoand.w  a2, a2, (s0)
  amoor.d   s3, t4, (s0)
  amoxor.w  a1, s2, (s0)
  amomax.d  s10, s2, (s0)
  amominu.w s3, t6, (s0)
  fmv.w.x   f4, a2
  fmv.d.x   f11, s11
  fadd.s    f3, f10, f2
  fsub.s    f2, f20, f18
  fmul.s    f7, f7, f2
  fdiv.s    f19, f7, f20
  fmin.s    f4, f10, f4
  fmax.s    f4, f21, f5
  fsgnj.s   f1, f7, f0
  fadd.d    f18, f9, f20
  fsub.d    f21, f8, f2
  fmul.d    f9, f6, f1
  fdiv.d    f7, f11, f4
  fsqrt.d   f18, f0
  fmadd.d   f19, f9, f21, f5
  fcvt.s.w  f21, s11
  fcvt.d.w  f3, s9
  fcvt.d.s  f0, f3
  fcvt.s.d  f7, f9
  fcvt.w.s  a7, f4, rtz
  fcvt.l.d  t0, f6, rtz
  feq.d     s10, f8, f5
  flt.s     s6, f19, f21
  fclass.d  a0, f3
  csrr  t2, mscratch
  csrw  mscratch, s5
  csrrw t3, mscratch, a4
  csrrs a3, mstatus, x0
  csrrc a6, mscratch, x0
  csrrwi s4, mscratch, 4
  fence
  fence.i
  c.addi a0, -27
  c.mv   a1, a2
  c.li   a3, 0
  c.add  a4, a5
  la    s0, tdat
  li    a3, 1309
  li    s2, 1109
  add   s11, s2, s4
  sub   a6, a2, t3
  xor   a1, s4, s3
  or    a3, s4, s8
  and   s8, s9, s8
  addi  t3, s9, 1577
  andi  t6, a6, 1784
  ori   a3, s6, 2025
  xori  s8, t1, -1089
  slli  t2, t5, 52
  srli  s5, t4, 38
  srai  s2, s8, 21
  sllw  t2, a3, s3
  sraw  s11, s11, s6
  slt   s9, t3, a5
  sltu  s10, s4, a0
  sltiu a5, s10, 1162
  lui   t2, 0x56c21
  auipc a3, 0x66
  addw  s2, a4, t2
  subw  s9, s5, a5
  addiw a3, s11, -1754
  mul   t1, a3, t3
  mulh  a3, t2, a1
  mulhu a5, s5, t4
  mulw  a5, t2, s6
  div   s5, a4, a4
  divu  s9, t0, a2
  rem   a5, t1, t2
  remu  a7, s7, t2
  divw  t6, t2, s8
  remw  a1, t4, s8
  sd    s8, 0(s0)
  ld    t5, 0(s0)
  sw    s8, 0(s0)
  lw    a2, 0(s0)
  lwu   a2, 0(s0)
  lh    s4, 0(s0)
  lbu   t2, 0(s0)
  lr.d      a2, (s0)
  sc.d      t0, a4, (s0)
  amoadd.w  s8, a3, (s0)
  amoswap.d s10, a7, (s0)
  amoand.w  s5, a0, (s0)
  amoor.d   s6, t3, (s0)
  amoxor.w  t2, s3, (s0)
  amomax.d  t2, s7, (s0)
  amominu.w a4, a5, (s0)
  fmv.w.x   f3, t0
  fmv.d.x   f8, a7
  fadd.s    f9, f11, f3
  fsub.s    f2, f10, f4
  fmul.s    f20, f8, f11
  fdiv.s    f18, f3, f4
  fmin.s    f18, f20, f10
  fmax.s    f3, f20, f1
  fsgnj.s   f2, f5, f5
  fadd.d    f3, f18, f9
  fsub.d    f3, f8, f10
  fmul.d    f8, f6, f3
  fdiv.d    f8, f9, f18
  fsqrt.d   f1, f4
  fmadd.d   f11, f9, f9, f0
  fcvt.s.w  f21, s8
  fcvt.d.w  f6, s4
  fcvt.d.s  f11, f4
  fcvt.s.d  f20, f7
  fcvt.w.s  a1, f5, rtz
  fcvt.l.d  a3, f7, rtz
  feq.d     t3, f3, f5
  flt.s     s2, f0, f7
  fclass.d  t1, f21
  csrr  t0, mscratch
  csrw  mscratch, s9
  csrrw a7, mscratch, s8
  csrrs t1, mstatus, x0
  csrrc t5, mscratch, x0
  csrrwi s3, mscratch, 18
  fence
  fence.i
  c.addi a0, -25
  c.mv   a1, a2
  c.li   a3, 1
  c.add  a4, a5
  la    s0, tdat
  li    a4, 66
  li    s11, -727
  add   s5, t5, a0
  sub   t2, t1, t3
  xor   t5, a0, t6
  or    a7, a2, s2
  and   t2, t2, s6
  addi  s2, a4, 1028
  andi  t4, a6, 312
  ori   a7, t1, 204
  xori  a0, s3, -438
  slli  t0, s3, 23
  srli  s4, t1, 21
  srai  s2, a1, 57
  sllw  s8, s4, s11
  sraw  t4, t2, s9
  slt   s8, s7, s7
  sltu  s8, a7, s3
  sltiu t4, s9, 551
  lui   a3, 0x7b2b
  auipc s2, 0xf6
  addw  s4, t5, a0
  subw  a4, t0, t1
  addiw s6, t5, 1168
  mul   a1, s5, s9
  mulh  s7, a7, a2
  mulhu a0, a4, a0
  mulw  a4, a1, s6
  div   t6, s7, a6
  divu  s5, s9, t3
  rem   t1, t5, a3
  remu  s9, t1, t1
  divw  s7, t1, a6
  remw  t3, s4, t6
  sd    t5, 8(s0)
  ld    s7, 8(s0)
  sw    t5, 8(s0)
  lw    s5, 8(s0)
  lwu   s4, 8(s0)
  lh    s11, 8(s0)
  lbu   a0, 8(s0)
  lr.d      a7, (s0)
  sc.d      s5, t6, (s0)
  amoadd.w  a3, t5, (s0)
  amoswap.d a0, a4, (s0)
  amoand.w  t5, s2, (s0)
  amoor.d   a7, a5, (s0)
  amoxor.w  a0, t5, (s0)
  amomax.d  a5, t1, (s0)
  amominu.w a1, s2, (s0)
  fmv.w.x   f18, s7
  fmv.d.x   f21, a3
  fadd.s    f18, f11, f2
  fsub.s    f20, f18, f9
  fmul.s    f9, f19, f3
  fdiv.s    f20, f5, f1
  fmin.s    f19, f10, f8
  fmax.s    f18, f0, f1
  fsgnj.s   f1, f18, f0
  fadd.d    f2, f5, f8
  fsub.d    f7, f7, f0
  fmul.d    f10, f20, f18
  fdiv.d    f7, f8, f19
  fsqrt.d   f10, f6
  fmadd.d   f2, f8, f9, f18
  fcvt.s.w  f5, s5
  fcvt.d.w  f10, a3
  fcvt.d.s  f3, f10
  fcvt.s.d  f0, f2
  fcvt.w.s  t3, f10, rtz
  fcvt.l.d  a7, f9, rtz
  feq.d     s5, f7, f6
  flt.s     t3, f5, f6
  fclass.d  s4, f3
  csrr  s9, mscratch
  csrw  mscratch, a4
  csrrw s9, mscratch, s7
  csrrs a1, mstatus, x0
  csrrc t0, mscratch, x0
  csrrwi s8, mscratch, 7
  fence
  fence.i
  c.addi a0, -1
  c.mv   a1, a2
  c.li   a3, -10
  c.add  a4, a5
  la    s0, tdat
  li    a5, 158
  li    s8, -925
  add   s11, a2, a6
  sub   t0, t2, a0
  xor   t5, s2, s11
  or    a5, s4, s9
  and   a1, s5, t2
  addi  a5, s10, 403
  andi  a0, a7, 1119
  ori   a3, a3, 1584
  xori  t5, t3, 2033
  slli  t1, t5, 44
  srli  s8, s3, 42
  srai  a6, s9, 56
  sllw  s3, a7, s11
  sraw  t2, t6, a5
  slt   s10, a0, t3
  sltu  s8, s11, s10
  sltiu a3, t5, 1289
  lui   a4, 0x84e0
  auipc t4, 0xbe
  addw  a3, s3, s6
  subw  a2, s3, t0
  addiw s8, a1, 153
  mul   s3, s11, a0
  mulh  s8, s4, a3
  mulhu a4, s5, s8
  mulw  a4, a2, t4
  div   s5, s6, a1
  divu  a2, a3, a7
  rem   s3, t4, a4
  remu  t2, t6, a1
  divw  s8, s10, a7
  remw  s4, s3, s9
  sd    a2, 0(s0)
  ld    t4, 0(s0)
  sw    s9, 0(s0)
  lw    t2, 0(s0)
  lwu   s11, 0(s0)
  lh    a0, 0(s0)
  lbu   s7, 0(s0)
  lr.d      t5, (s0)
  sc.d      s9, s3, (s0)
  amoadd.w  s2, a1, (s0)
  amoswap.d s10, s5, (s0)
  amoand.w  t6, t0, (s0)
  amoor.d   s2, a5, (s0)
  amoxor.w  a5, s2, (s0)
  amomax.d  t4, a6, (s0)
  amominu.w a7, t3, (s0)
  fmv.w.x   f19, s3
  fmv.d.x   f19, s2
  fadd.s    f7, f1, f4
  fsub.s    f2, f4, f6
  fmul.s    f21, f5, f6
  fdiv.s    f1, f21, f0
  fmin.s    f6, f4, f2
  fmax.s    f2, f19, f11
  fsgnj.s   f21, f8, f10
  fadd.d    f7, f0, f0
  fsub.d    f10, f19, f7
  fmul.d    f9, f0, f7
  fdiv.d    f0, f7, f20
  fsqrt.d   f19, f3
  fmadd.d   f1, f21, f4, f8
  fcvt.s.w  f9, s10
  fcvt.d.w  f5, a7
  fcvt.d.s  f6, f19
  fcvt.s.d  f19, f18
  fcvt.w.s  s2, f9, rtz
  fcvt.l.d  a0, f6, rtz
  feq.d     t4, f10, f5
  flt.s     t5, f5, f1
  fclass.d  s6, f8
  csrr  a3, mscratch
  csrw  mscratch, t4
  csrrw s2, mscratch, a2
  csrrs a7, mstatus, x0
  csrrc a3, mscratch, x0
  csrrwi s11, mscratch, 28
  fence
  fence.i
  c.addi a0, 14
  c.mv   a1, a2
  c.li   a3, 27
  c.add  a4, a5
  la    s0, tdat
  li    s6, 1708
  li    s4, -1562
  add   a4, a6, a2
  sub   s4, s7, t5
  xor   t4, a1, a3
  or    s4, a4, t4
  and   t4, a2, a4
  addi  s6, s3, 1126
  andi  s11, t4, 1860
  ori   s9, a5, 168
  xori  a1, s5, 1299
  slli  s5, s8, 27
  srli  t1, t5, 36
  srai  s2, s7, 12
  sllw  t6, a6, s11
  sraw  a0, t1, s3
  slt   s2, a2, a0
  sltu  s9, s11, a7
  sltiu t5, t1, 350
  lui   a1, 0xcb83c
  auipc a5, 0xbd
  addw  a4, s2, s3
  subw  s5, a1, s11
  addiw s7, a0, 1860
  mul   s2, a2, t3
  mulh  s4, a0, t6
  mulhu a4, t5, s2
  mulw  t1, t1, s2
  div   t1, s8, a4
  divu  a1, s8, a3
  rem   s7, a3, s4
  remu  t1, a1, t1
  divw  a6, t4, t6
  remw  a7, t4, s9
  sd    s11, 8(s0)
  ld    a6, 8(s0)
  sw    s9, 8(s0)
  lw    a3, 8(s0)
  lwu   t1, 8(s0)
  lh    s9, 8(s0)
  lbu   t6, 8(s0)
  lr.d      s8, (s0)
  sc.d      s11, t5, (s0)
  amoadd.w  t3, a4, (s0)
  amoswap.d a2, t0, (s0)
  amoand.w  t6, s8, (s0)
  amoor.d   s4, s11, (s0)
  amoxor.w  s11, t1, (s0)
  amomax.d  a4, s10, (s0)
  amominu.w a1, a5, (s0)
  fmv.w.x   f11, a0
  fmv.d.x   f5, a3
  fadd.s    f1, f6, f19
  fsub.s    f2, f0, f10
  fmul.s    f2, f7, f7
  fdiv.s    f7, f19, f3
  fmin.s    f6, f11, f5
  fmax.s    f1, f18, f7
  fsgnj.s   f11, f7, f11
  fadd.d    f21, f19, f20
  fsub.d    f5, f5, f0
  fmul.d    f21, f6, f2
  fdiv.d    f10, f21, f9
  fsqrt.d   f8, f21
  fmadd.d   f7, f21, f19, f10
  fcvt.s.w  f3, t1
  fcvt.d.w  f18, t2
  fcvt.d.s  f19, f4
  fcvt.s.d  f7, f6
  fcvt.w.s  a0, f20, rtz
  fcvt.l.d  s5, f10, rtz
  feq.d     a7, f4, f9
  flt.s     t2, f8, f10
  fclass.d  a7, f8
  csrr  s11, mscratch
  csrw  mscratch, s5
  csrrw a0, mscratch, s4
  csrrs t2, mstatus, x0
  csrrc a6, mscratch, x0
  csrrwi a6, mscratch, 4
  fence
  fence.i
  c.addi a0, -13
  c.mv   a1, a2
  c.li   a3, 23
  c.add  a4, a5
  la    s0, tdat
  li    a5, 1254
  li    s9, -1286
  add   s8, s6, t2
  sub   t5, t1, a0
  xor   t0, s2, a0
  or    t6, a2, s6
  and   s3, a6, t4
  addi  s9, s3, -1099
  andi  a4, t6, 792
  ori   a1, t6, 223
  xori  a7, a4, 1775
  slli  a7, s2, 27
  srli  s10, a7, 22
  srai  s4, s8, 63
  sllw  s8, t6, a0
  sraw  t4, a4, t2
  slt   t5, s8, s3
  sltu  a6, a2, s3
  sltiu a6, s2, 198
  lui   t0, 0x359a4
  auipc s4, 0xd5
  addw  s7, s7, s8
  subw  s4, s11, a2
  addiw s5, t2, -1854
  mul   t0, s7, s3
  mulh  s10, t3, s8
  mulhu a4, a0, s8
  mulw  t0, s10, s4
  div   s3, t6, s10
  divu  t5, a4, a6
  rem   t0, s11, t5
  remu  a5, a5, s5
  divw  s10, a6, s2
  remw  a3, s11, t2
  sd    s9, 8(s0)
  ld    a1, 8(s0)
  sw    a5, 8(s0)
  lw    a6, 8(s0)
  lwu   t3, 8(s0)
  lh    s4, 8(s0)
  lbu   t4, 8(s0)
  lr.d      s6, (s0)
  sc.d      s4, a7, (s0)
  amoadd.w  s2, a3, (s0)
  amoswap.d a0, a1, (s0)
  amoand.w  a1, t2, (s0)
  amoor.d   a4, t2, (s0)
  amoxor.w  t6, s2, (s0)
  amomax.d  s9, a7, (s0)
  amominu.w t2, t1, (s0)
  fmv.w.x   f0, s3
  fmv.d.x   f3, s4
  fadd.s    f3, f6, f0
  fsub.s    f2, f10, f2
  fmul.s    f20, f20, f3
  fdiv.s    f10, f1, f7
  fmin.s    f20, f9, f11
  fmax.s    f1, f21, f5
  fsgnj.s   f5, f6, f8
  fadd.d    f2, f21, f6
  fsub.d    f6, f21, f9
  fmul.d    f11, f10, f11
  fdiv.d    f4, f19, f10
  fsqrt.d   f6, f20
  fmadd.d   f3, f0, f21, f7
  fcvt.s.w  f2, a3
  fcvt.d.w  f20, t6
  fcvt.d.s  f4, f21
  fcvt.s.d  f11, f4
  fcvt.w.s  a5, f7, rtz
  fcvt.l.d  s9, f1, rtz
  feq.d     s6, f5, f4
  flt.s     a2, f9, f18
  fclass.d  s5, f4
  csrr  s10, mscratch
  csrw  mscratch, t1
  csrrw s4, mscratch, a4
  csrrs t3, mstatus, x0
  csrrc a1, mscratch, x0
  csrrwi s11, mscratch, 19
  fence
  fence.i
  c.addi a0, 24
  c.mv   a1, a2
  c.li   a3, 0
  c.add  a4, a5
  la    s0, tdat
  li    s9, 637
  li    s11, -2027
  add   a2, a6, t6
  sub   s2, a4, a7
  xor   s4, a3, s7
  or    s7, s4, a4
  and   s2, s6, a3
  addi  a1, a7, -1223
  andi  t3, s2, 446
  ori   a5, s11, 496
  xori  t2, s4, 605
  slli  s4, s4, 18
  srli  s4, s8, 9
  srai  a6, t0, 10
  sllw  s3, s4, t6
  sraw  a4, s3, t5
  slt   a5, t5, a3
  sltu  s3, s2, s8
  sltiu t6, a4, 59
  lui   s4, 0xc03f8
  auipc t5, 0x6b
  addw  s3, a2, a4
  subw  s11, a6, s9
  addiw s5, s9, -1268
  mul   a2, a6, a2
  mulh  s7, s3, t1
  mulhu s6, s11, a6
  mulw  a2, t2, t6
  div   s7, a7, a5
  divu  s6, a6, t0
  rem   a1, s10, a0
  remu  t3, a7, s5
  divw  s10, a4, s11
  remw  a5, s6, a2
  sd    a1, 0(s0)
  ld    a7, 0(s0)
  sw    s10, 0(s0)
  lw    t4, 0(s0)
  lwu   s11, 0(s0)
  lh    a4, 0(s0)
  lbu   a1, 0(s0)
  lr.d      a0, (s0)
  sc.d      t6, a1, (s0)
  amoadd.w  t6, t6, (s0)
  amoswap.d s10, s3, (s0)
  amoand.w  s8, s6, (s0)
  amoor.d   a6, t1, (s0)
  amoxor.w  t0, s2, (s0)
  amomax.d  s6, s6, (s0)
  amominu.w t4, t5, (s0)
  fmv.w.x   f20, s3
  fmv.d.x   f11, t2
  fadd.s    f19, f9, f9
  fsub.s    f6, f20, f10
  fmul.s    f20, f1, f19
  fdiv.s    f21, f20, f18
  fmin.s    f9, f6, f4
  fmax.s    f2, f20, f20
  fsgnj.s   f4, f3, f11
  fadd.d    f9, f18, f7
  fsub.d    f10, f2, f6
  fmul.d    f0, f9, f0
  fdiv.d    f2, f18, f11
  fsqrt.d   f1, f6
  fmadd.d   f0, f1, f0, f2
  fcvt.s.w  f21, s5
  fcvt.d.w  f4, a1
  fcvt.d.s  f0, f20
  fcvt.s.d  f21, f6
  fcvt.w.s  a3, f8, rtz
  fcvt.l.d  s11, f3, rtz
  feq.d     t6, f1, f3
  flt.s     t1, f8, f11
  fclass.d  s3, f21
  csrr  t1, mscratch
  csrw  mscratch, s8
  csrrw t4, mscratch, s11
  csrrs t6, mstatus, x0
  csrrc a0, mscratch, x0
  csrrwi s3, mscratch, 2
  fence
  fence.i
  c.addi a0, 2
  c.mv   a1, a2
  c.li   a3, 24
  c.add  a4, a5
  la    s0, tdat
  li    s6, 1752
  li    a5, 1639
  add   t5, t1, t4
  sub   s8, a2, s2
  xor   t1, t2, s8
  or    a2, t3, a7
  and   s3, s3, a4
  addi  s8, t1, -1281
  andi  s3, s3, 1131
  ori   s10, t0, 717
  xori  a6, a2, -1126
  slli  t5, t2, 50
  srli  t2, s10, 23
  srai  s2, t1, 30
  sllw  a5, s2, a0
  sraw  a0, t3, a6
  slt   a3, t4, s5
  sltu  a6, a5, a4
  sltiu a4, a0, 1950
  lui   s9, 0xa1efb
  auipc s4, 0x7
  addw  a6, s11, s9
  subw  s3, t2, t2
  addiw a6, t2, 1855
  mul   a1, s6, a7
  mulh  s3, t3, a3
  mulhu s8, t1, t3
  mulw  t5, t4, a3
  div   a7, t0, t3
  divu  a7, a1, s7
  rem   s3, s4, t3
  remu  t6, s7, a3
  divw  t6, a4, t2
  remw  a7, t4, t6
  sd    t1, 8(s0)
  ld    t3, 8(s0)
  sw    s11, 8(s0)
  lw    t6, 8(s0)
  lwu   t2, 8(s0)
  lh    s10, 8(s0)
  lbu   t6, 8(s0)
  lr.d      t5, (s0)
  sc.d      a1, a3, (s0)
  amoadd.w  s2, s8, (s0)
  amoswap.d a2, a0, (s0)
  amoand.w  a3, t2, (s0)
  amoor.d   s6, t5, (s0)
  amoxor.w  a1, a1, (s0)
  amomax.d  s7, a7, (s0)
  amominu.w s8, a1, (s0)
  fmv.w.x   f11, s2
  fmv.d.x   f10, t2
  fadd.s    f4, f1, f0
  fsub.s    f9, f10, f10
  fmul.s    f11, f19, f18
  fdiv.s    f4, f1, f5
  fmin.s    f19, f3, f3
  fmax.s    f7, f8, f21
  fsgnj.s   f5, f6, f6
  fadd.d    f19, f9, f8
  fsub.d    f8, f8, f20
  fmul.d    f19, f10, f19
  fdiv.d    f5, f3, f5
  fsqrt.d   f10, f5
  fmadd.d   f9, f21, f4, f21
  fcvt.s.w  f20, s11
  fcvt.d.w  f3, a0
  fcvt.d.s  f20, f3
  fcvt.s.d  f11, f1
  fcvt.w.s  a3, f19, rtz
  fcvt.l.d  a4, f3, rtz
  feq.d     s11, f3, f21
  flt.s     s9, f0, f19
  fclass.d  t0, f11
  csrr  t4, mscratch
  csrw  mscratch, t5
  csrrw a0, mscratch, s6
  csrrs a6, mstatus, x0
  csrrc a1, mscratch, x0
  csrrwi t5, mscratch, 2
  fence
  fence.i
  c.addi a0, 13
  c.mv   a1, a2
  c.li   a3, 21
  c.add  a4, a5
  la    s0, tdat
  li    s4, 1799
  li    a6, -197
  add   s8, t6, s3
  sub   s9, s8, s6
  xor   t4, t2, s8
  or    s11, a2, a6
  and   t6, t3, a1
  addi  s4, s7, -228
  andi  s5, s6, 407
  ori   a4, s9, 1589
  xori  a5, s10, -1836
  slli  t2, t5, 62
  srli  a7, t2, 2
  srai  a3, s3, 32
  sllw  a2, t3, s4
  sraw  s2, a7, s10
  slt   t4, a4, t1
  sltu  s3, s10, a2
  sltiu s7, s11, 337
  lui   t4, 0x2c93b
  auipc t5, 0xa2
  addw  a1, s3, a2
  subw  t4, t1, s9
  addiw s5, a1, 120
  mul   s11, s9, s8
  mulh  s5, a7, a2
  mulhu a4, a4, a4
  mulw  s3, t6, s3
  div   a4, a3, a0
  divu  a4, t3, t0
  rem   a1, s4, a0
  remu  s7, t1, s6
  divw  a0, t0, a2
  remw  t1, t2, t5
  sd    t6, 8(s0)
  ld    s6, 8(s0)
  sw    t3, 8(s0)
  lw    a5, 8(s0)
  lwu   s10, 8(s0)
  lh    s6, 8(s0)
  lbu   a5, 8(s0)
  lr.d      s7, (s0)
  sc.d      s8, s11, (s0)
  amoadd.w  s2, s5, (s0)
  amoswap.d s5, a1, (s0)
  amoand.w  s10, s7, (s0)
  amoor.d   s7, a2, (s0)
  amoxor.w  s6, t3, (s0)
  amomax.d  a6, a2, (s0)
  amominu.w s8, a3, (s0)
  fmv.w.x   f5, t6
  fmv.d.x   f18, s7
  fadd.s    f21, f10, f1
  fsub.s    f18, f9, f21
  fmul.s    f10, f21, f1
  fdiv.s    f9, f0, f11
  fmin.s    f1, f3, f1
  fmax.s    f9, f9, f1
  fsgnj.s   f9, f2, f8
  fadd.d    f8, f6, f20
  fsub.d    f0, f8, f2
  fmul.d    f21, f4, f2
  fdiv.d    f5, f18, f1
  fsqrt.d   f10, f4
  fmadd.d   f18, f20, f6, f1
  fcvt.s.w  f11, t6
  fcvt.d.w  f4, s4
  fcvt.d.s  f10, f9
  fcvt.s.d  f6, f7
  fcvt.w.s  t2, f1, rtz
  fcvt.l.d  s5, f1, rtz
  feq.d     s7, f2, f1
  flt.s     a4, f20, f20
  fclass.d  s7, f1
  csrr  a5, mscratch
  csrw  mscratch, a4
  csrrw s4, mscratch, s9
  csrrs s6, mstatus, x0
  csrrc s7, mscratch, x0
  csrrwi s8, mscratch, 24
  fence
  fence.i
  c.addi a0, -27
  c.mv   a1, a2
  c.li   a3, 18
  c.add  a4, a5
  la    s0, tdat
  li    t1, 360
  li    s3, -1593
  add   a1, s7, t4
  sub   s10, a2, s10
  xor   a7, a2, t5
  or    t6, s3, s10
  and   s10, t5, a6
  addi  a0, a6, 1329
  andi  a0, t0, 134
  ori   a6, a4, 376
  xori  s8, a7, 1398
  slli  t4, s5, 49
  srli  a5, s4, 29
  srai  a4, s8, 29
  sllw  a2, a6, a4
  sraw  a1, s4, t0
  slt   a7, s5, t2
  sltu  s8, s11, s9
  sltiu s4, s5, 595
  lui   s7, 0x52bd6
  auipc a7, 0x0
  addw  s3, t0, t5
  subw  t4, t4, s2
  addiw a1, a7, 446
  mul   a4, a5, s5
  mulh  a3, t0, s3
  mulhu a6, s3, t3
  mulw  t1, s8, t0
  div   t0, a5, s7
  divu  a7, a2, s10
  rem   a4, t1, s8
  remu  a5, t6, s9
  divw  s6, s10, a1
  remw  s2, a3, t2
  sd    t1, 0(s0)
  ld    t1, 0(s0)
  sw    s3, 0(s0)
  lw    s9, 0(s0)
  lwu   s10, 0(s0)
  lh    a2, 0(s0)
  lbu   t6, 0(s0)
  lr.d      s6, (s0)
  sc.d      a7, a1, (s0)
  amoadd.w  s6, s11, (s0)
  amoswap.d a7, a5, (s0)
  amoand.w  t6, a0, (s0)
  amoor.d   s10, t3, (s0)
  amoxor.w  a3, s2, (s0)
  amomax.d  s8, a0, (s0)
  amominu.w t4, a7, (s0)
  fmv.w.x   f18, s6
  fmv.d.x   f21, s2
  fadd.s    f3, f20, f5
  fsub.s    f19, f0, f8
  fmul.s    f20, f6, f21
  fdiv.s    f4, f5, f19
  fmin.s    f19, f19, f9
  fmax.s    f19, f1, f11
  fsgnj.s   f0, f1, f4
  fadd.d    f4, f11, f7
  fsub.d    f2, f1, f3
  fmul.d    f0, f0, f7
  fdiv.d    f0, f8, f11
  fsqrt.d   f0, f11
  fmadd.d   f8, f19, f19, f6
  fcvt.s.w  f2, s2
  fcvt.d.w  f0, t2
  fcvt.d.s  f0, f18
  fcvt.s.d  f4, f21
  fcvt.w.s  s11, f11, rtz
  fcvt.l.d  s11, f9, rtz
  feq.d     a3, f20, f0
  flt.s     t6, f8, f8
  fclass.d  s10, f8
  csrr  a5, mscratch
  csrw  mscratch, t6
  csrrw s6, mscratch, a1
  csrrs a3, mstatus, x0
  csrrc s8, mscratch, x0
  csrrwi t0, mscratch, 30
  fence
  fence.i
  c.addi a0, 3
  c.mv   a1, a2
  c.li   a3, 21
  c.add  a4, a5
  la    s0, tdat
  li    s11, 1200
  li    a6, 1840
  add   s4, s3, t0
  sub   a2, s5, a6
  xor   s4, a7, a0
  or    a5, t2, a5
  and   s10, t1, s3
  addi  t4, s9, 2017
  andi  s10, t2, 1217
  ori   t0, a3, 143
  xori  t6, s4, -1420
  slli  s9, s10, 6
  srli  t2, t2, 50
  srai  s9, a7, 23
  sllw  s11, t2, t1
  sraw  t4, s9, s3
  slt   a4, a7, a5
  sltu  t1, t0, s2
  sltiu a1, t3, 817
  lui   t0, 0x6a591
  auipc t4, 0xfd
  addw  a2, s7, s8
  subw  s2, a3, s2
  addiw a7, a3, -1071
  mul   s6, s6, s10
  mulh  a2, s2, s11
  mulhu t4, s9, t0
  mulw  s2, t3, a7
  div   a4, t4, t6
  divu  s3, t1, t3
  rem   a4, t3, s2
  remu  s10, t5, s8
  divw  t4, s3, a3
  remw  a5, a0, t5
  sd    t4, 0(s0)
  ld    a2, 0(s0)
  sw    t5, 0(s0)
  lw    s5, 0(s0)
  lwu   s10, 0(s0)
  lh    t3, 0(s0)
  lbu   a1, 0(s0)
  lr.d      s3, (s0)
  sc.d      a3, a3, (s0)
  amoadd.w  a0, t5, (s0)
  amoswap.d s8, s4, (s0)
  amoand.w  t2, s8, (s0)
  amoor.d   s7, a2, (s0)
  amoxor.w  a5, a3, (s0)
  amomax.d  a2, a7, (s0)
  amominu.w a6, a4, (s0)
  fmv.w.x   f3, a4
  fmv.d.x   f5, s6
  fadd.s    f19, f10, f11
  fsub.s    f20, f6, f3
  fmul.s    f7, f2, f1
  fdiv.s    f0, f7, f10
  fmin.s    f21, f11, f8
  fmax.s    f7, f5, f0
  fsgnj.s   f4, f9, f7
  fadd.d    f20, f10, f4
  fsub.d    f1, f21, f11
  fmul.d    f19, f7, f19
  fdiv.d    f20, f0, f19
  fsqrt.d   f1, f9
  fmadd.d   f10, f0, f1, f3
  fcvt.s.w  f6, s2
  fcvt.d.w  f1, a5
  fcvt.d.s  f9, f20
  fcvt.s.d  f5, f9
  fcvt.w.s  a3, f19, rtz
  fcvt.l.d  t6, f0, rtz
  feq.d     s9, f5, f3
  flt.s     t2, f6, f20
  fclass.d  s7, f1
  csrr  s7, mscratch
  csrw  mscratch, s10
  csrrw a2, mscratch, s10
  csrrs s11, mstatus, x0
  csrrc a4, mscratch, x0
  csrrwi a2, mscratch, 10
  fence
  fence.i
  c.addi a0, -26
  c.mv   a1, a2
  c.li   a3, -24
  c.add  a4, a5
  la    s0, tdat
  li    s11, 1511
  li    t6, -1901
  add   s8, s6, a3
  sub   a6, a4, t4
  xor   a3, s9, s6
  or    t3, s5, t0
  and   s10, a6, t3
  addi  s2, t3, -1335
  andi  a2, t0, 263
  ori   s11, a5, 61
  xori  a0, s3, 628
  slli  t1, s2, 31
  srli  s2, s10, 63
  srai  a4, a5, 36
  sllw  a0, a4, a6
  sraw  t3, t5, s8
  slt   a0, s8, a6
  sltu  t6, s5, s7
  sltiu t3, a3, 381
  lui   a2, 0x4023c
  auipc s3, 0x3b
  addw  s2, t6, t6
  subw  t2, t2, s6
  addiw s2, s10, 993
  mul   t3, s9, s8
  mulh  s4, s4, s6
  mulhu s5, t4, a3
  mulw  t6, s11, a5
  div   t1, s11, a2
  divu  a2, t3, t1
  rem   a6, a7, s9
  remu  s11, a0, a1
  divw  s5, a3, s6
  remw  s10, t1, t4
  sd    s6, 0(s0)
  ld    s2, 0(s0)
  sw    t1, 0(s0)
  lw    s4, 0(s0)
  lwu   a4, 0(s0)
  lh    a0, 0(s0)
  lbu   t2, 0(s0)
  lr.d      t6, (s0)
  sc.d      s5, t2, (s0)
  amoadd.w  s8, s10, (s0)
  amoswap.d s3, t0, (s0)
  amoand.w  s10, s10, (s0)
  amoor.d   s11, t4, (s0)
  amoxor.w  a5, a1, (s0)
  amomax.d  a0, s3, (s0)
  amominu.w a4, s2, (s0)
  fmv.w.x   f5, t5
  fmv.d.x   f9, t2
  fadd.s    f19, f19, f19
  fsub.s    f4, f5, f2
  fmul.s    f6, f1, f21
  fdiv.s    f5, f21, f1
  fmin.s    f18, f0, f18
  fmax.s    f5, f6, f1
  fsgnj.s   f20, f8, f1
  fadd.d    f6, f7, f2
  fsub.d    f7, f19, f9
  fmul.d    f18, f6, f2
  fdiv.d    f6, f8, f9
  fsqrt.d   f1, f18
  fmadd.d   f6, f21, f3, f4
  fcvt.s.w  f18, s4
  fcvt.d.w  f3, a0
  fcvt.d.s  f19, f8
  fcvt.s.d  f0, f0
  fcvt.w.s  s11, f10, rtz
  fcvt.l.d  t3, f8, rtz
  feq.d     s4, f7, f20
  flt.s     s4, f6, f4
  fclass.d  a3, f0
  csrr  s7, mscratch
  csrw  mscratch, t0
  csrrw a4, mscratch, t0
  csrrs s8, mstatus, x0
  csrrc t2, mscratch, x0
  csrrwi a4, mscratch, 16
  fence
  fence.i
  c.addi a0, -4
  c.mv   a1, a2
  c.li   a3, 0
  c.add  a4, a5
  la    s0, tdat
  li    s7, 20
  li    s7, -745
  add   t1, t0, s5
  sub   a3, a4, s11
  xor   s8, t6, a6
  or    a1, s8, a2
  and   a7, a6, s2
  addi  a0, a3, -722
  andi  s7, s5, 190
  ori   a3, a7, 1881
  xori  t1, t4, -470
  slli  t2, s8, 9
  srli  s9, s9, 35
  srai  s10, t2, 50
  sllw  a2, s2, t1
  sraw  t6, s2, s8
  slt   a3, s10, t2
  sltu  t6, s11, s3
  sltiu t5, a1, 231
  lui   s5, 0x12ee
  auipc a4, 0xb9
  addw  s9, t5, a7
  subw  s2, s2, t0
  addiw a3, a6, 1177
  mul   s5, a0, t3
  mulh  t4, a0, s3
  mulhu t6, a5, t2
  mulw  a2, s8, s11
  div   s5, t0, s4
  divu  a0, t1, t4
  rem   t4, t5, s4
  remu  s8, s4, t2
  divw  s10, a4, s11
  remw  s3, s2, s8
  sd    t5, 0(s0)
  ld    t3, 0(s0)
  sw    s8, 0(s0)
  lw    t1, 0(s0)
  lwu   t0, 0(s0)
  lh    t6, 0(s0)
  lbu   s4, 0(s0)
  lr.d      a7, (s0)
  sc.d      s11, s6, (s0)
  amoadd.w  a6, a5, (s0)
  amoswap.d t3, t3, (s0)
  amoand.w  a4, t2, (s0)
  amoor.d   t6, a0, (s0)
  amoxor.w  a6, t5, (s0)
  amomax.d  t6, t4, (s0)
  amominu.w a1, a6, (s0)
  fmv.w.x   f4, s10
  fmv.d.x   f11, t3
  fadd.s    f0, f8, f7
  fsub.s    f11, f3, f9
  fmul.s    f2, f2, f0
  fdiv.s    f18, f0, f1
  fmin.s    f5, f9, f18
  fmax.s    f8, f3, f3
  fsgnj.s   f10, f1, f5
  fadd.d    f1, f0, f9
  fsub.d    f4, f5, f20
  fmul.d    f8, f3, f0
  fdiv.d    f4, f21, f20
  fsqrt.d   f11, f6
  fmadd.d   f5, f11, f21, f3
  fcvt.s.w  f18, t5
  fcvt.d.w  f11, a3
  fcvt.d.s  f8, f5
  fcvt.s.d  f18, f3
  fcvt.w.s  s11, f19, rtz
  fcvt.l.d  a5, f10, rtz
  feq.d     a4, f6, f10
  flt.s     s5, f21, f2
  fclass.d  s10, f2
  csrr  s3, mscratch
  csrw  mscratch, s2
  csrrw s10, mscratch, s3
  csrrs s4, mstatus, x0
  csrrc s6, mscratch, x0
  csrrwi s7, mscratch, 31
  fence
  fence.i
  c.addi a0, 22
  c.mv   a1, a2
  c.li   a3, 12
  c.add  a4, a5
  la    s0, tdat
  li    s4, 913
  li    a1, 1802
  add   t4, s3, t5
  sub   a4, t1, a0
  xor   t1, a7, a2
  or    a1, a2, t3
  and   t5, s7, s4
  addi  a6, a1, -558
  andi  a5, t2, 1840
  ori   a6, s10, 427
  xori  a2, a7, 1648
  slli  a7, a6, 3
  srli  t3, s4, 3
  srai  a0, a3, 46
  sllw  a2, a6, t1
  sraw  s11, s2, t6
  slt   t1, t3, t5
  sltu  s2, s7, t4
  sltiu s9, a0, 361
  lui   s3, 0xe542e
  auipc a1, 0x52
  addw  a3, s8, s9
  subw  a7, s2, a7
  addiw a4, a5, -1088
  mul   a0, s8, a7
  mulh  a1, a7, a3
  mulhu s5, s5, s4
  mulw  s10, t6, s5
  div   a4, s6, s2
  divu  s7, t6, t6
  rem   a4, t6, s9
  remu  s2, s11, s8
  divw  a5, t6, a1
  remw  a0, s11, t5
  sd    t5, 0(s0)
  ld    a1, 0(s0)
  sw    t3, 0(s0)
  lw    t5, 0(s0)
  lwu   s7, 0(s0)
  lh    t3, 0(s0)
  lbu   s9, 0(s0)
  lr.d      t2, (s0)
  sc.d      s10, s5, (s0)
  amoadd.w  s5, s6, (s0)
  amoswap.d s4, a3, (s0)
  amoand.w  t1, a4, (s0)
  amoor.d   a0, t0, (s0)
  amoxor.w  a1, s8, (s0)
  amomax.d  s5, s2, (s0)
  amominu.w a1, a1, (s0)
  fmv.w.x   f9, t6
  fmv.d.x   f18, a0
  fadd.s    f18, f7, f8
  fsub.s    f6, f0, f3
  fmul.s    f21, f6, f5
  fdiv.s    f5, f19, f0
  fmin.s    f20, f20, f3
  fmax.s    f20, f6, f2
  fsgnj.s   f4, f10, f21
  fadd.d    f18, f3, f8
  fsub.d    f11, f3, f0
  fmul.d    f1, f21, f11
  fdiv.d    f4, f10, f7
  fsqrt.d   f3, f19
  fmadd.d   f11, f6, f21, f5
  fcvt.s.w  f6, s11
  fcvt.d.w  f1, t3
  fcvt.d.s  f19, f5
  fcvt.s.d  f5, f19
  fcvt.w.s  s8, f0, rtz
  fcvt.l.d  s11, f10, rtz
  feq.d     s7, f5, f8
  flt.s     a5, f20, f0
  fclass.d  t4, f9
  csrr  s8, mscratch
  csrw  mscratch, t1
  csrrw a2, mscratch, a3
  csrrs s7, mstatus, x0
  csrrc s6, mscratch, x0
  csrrwi a3, mscratch, 12
  fence
  fence.i
  c.addi a0, 22
  c.mv   a1, a2
  c.li   a3, 10
  c.add  a4, a5
  la    s0, tdat
  li    s8, 1437
  li    a6, 294
  add   s3, s7, t1
  sub   a4, a1, t1
  xor   s9, s5, a3
  or    s9, s6, a7
  and   s8, t1, a7
  addi  t4, s6, -2015
  andi  s6, s10, 1159
  ori   s7, s5, 1303
  xori  t4, t3, 1581
  slli  a6, t0, 52
  srli  s3, a7, 9
  srai  s9, s10, 27
  sllw  t5, s9, t6
  sraw  s5, t5, t4
  slt   s5, s2, s11
  sltu  s5, s10, a6
  sltiu s7, t2, 589
  lui   t2, 0xfae42
  auipc a1, 0x89
  addw  a5, a3, s8
  subw  s3, s6, t3
  addiw a4, a5, -453
  mul   t4, s4, s6
  mulh  s2, s5, s5
  mulhu s10, t1, s5
  mulw  a1, s6, s2
  div   t1, t6, a5
  divu  t6, t6, s3
  rem   t0, a3, a0
  remu  s7, s4, a6
  divw  s8, s3, t1
  remw  t0, s10, t4
  sd    a2, 8(s0)
  ld    a1, 8(s0)
  sw    s4, 8(s0)
  lw    s4, 8(s0)
  lwu   t1, 8(s0)
  lh    s8, 8(s0)
  lbu   a0, 8(s0)
  lr.d      s3, (s0)
  sc.d      a7, a3, (s0)
  amoadd.w  t5, a0, (s0)
  amoswap.d a7, t6, (s0)
  amoand.w  s6, t3, (s0)
  amoor.d   t4, a4, (s0)
  amoxor.w  s3, s2, (s0)
  amomax.d  t2, s7, (s0)
  amominu.w s6, a6, (s0)
  fmv.w.x   f18, t5
  fmv.d.x   f7, a4
  fadd.s    f6, f9, f2
  fsub.s    f8, f0, f8
  fmul.s    f0, f18, f18
  fdiv.s    f18, f21, f5
  fmin.s    f21, f7, f7
  fmax.s    f0, f0, f2
  fsgnj.s   f2, f10, f10
  fadd.d    f2, f20, f6
  fsub.d    f5, f4, f19
  fmul.d    f0, f10, f19
  fdiv.d    f19, f18, f0
  fsqrt.d   f10, f0
  fmadd.d   f10, f3, f21, f21
  fcvt.s.w  f9, s10
  fcvt.d.w  f20, s8
  fcvt.d.s  f1, f11
  fcvt.s.d  f1, f19
  fcvt.w.s  a1, f11, rtz
  fcvt.l.d  s7, f10, rtz
  feq.d     s8, f9, f9
  flt.s     s3, f8, f4
  fclass.d  a2, f20
  csrr  t5, mscratch
  csrw  mscratch, t0
  csrrw s6, mscratch, a1
  csrrs a6, mstatus, x0
  csrrc s11, mscratch, x0
  csrrwi t3, mscratch, 11
  fence
  fence.i
  c.addi a0, 5
  c.mv   a1, a2
  c.li   a3, 22
  c.add  a4, a5
  la    s0, tdat
  li    s10, 1847
  li    a4, -1509
  add   a2, s7, t4
  sub   t2, s8, t2
  xor   t1, s9, a7
  or    t1, t5, t3
  and   s8, s6, a4
  addi  a6, a3, 1282
  andi  a6, s10, 1509
  ori   a2, t4, 404
  xori  t5, t1, 139
  slli  a1, s10, 20
  srli  t2, t2, 29
  srai  s10, t2, 45
  sllw  t5, a0, t5
  sraw  t1, t1, s5
  slt   s6, a6, s9
  sltu  a7, a1, a1
  sltiu s6, a2, 875
  lui   s9, 0x67ba7
  auipc s5, 0xd0
  addw  t5, s3, t4
  subw  t2, a1, a5
  addiw s10, t1, 1099
  mul   t3, t2, a7
  mulh  s4, s6, s3
  mulhu t2, s8, t6
  mulw  s3, s9, s11
  div   t1, a6, s6
  divu  a2, s3, s9
  rem   s2, s11, s10
  remu  a6, t2, s4
  divw  a2, t3, s3
  remw  s8, a6, s8
  sd    t3, 0(s0)
  ld    s11, 0(s0)
  sw    t2, 0(s0)
  lw    a0, 0(s0)
  lwu   t0, 0(s0)
  lh    s6, 0(s0)
  lbu   t5, 0(s0)
  lr.d      t1, (s0)
  sc.d      a5, s10, (s0)
  amoadd.w  s11, s4, (s0)
  amoswap.d a3, t5, (s0)
  amoand.w  t5, t1, (s0)
  amoor.d   t6, s3, (s0)
  amoxor.w  s7, t0, (s0)
  amomax.d  s7, t2, (s0)
  amominu.w t0, s5, (s0)
  fmv.w.x   f11, s9
  fmv.d.x   f19, a6
  fadd.s    f18, f3, f20
  fsub.s    f8, f11, f19
  fmul.s    f0, f19, f7
  fdiv.s    f10, f18, f1
  fmin.s    f7, f4, f3
  fmax.s    f0, f20, f6
  fsgnj.s   f8, f1, f6
  fadd.d    f6, f2, f20
  fsub.d    f5, f11, f19
  fmul.d    f10, f2, f9
  fdiv.d    f19, f18, f2
  fsqrt.d   f11, f2
  fmadd.d   f4, f20, f9, f2
  fcvt.s.w  f0, s11
  fcvt.d.w  f8, a1
  fcvt.d.s  f1, f0
  fcvt.s.d  f6, f2
  fcvt.w.s  s11, f5, rtz
  fcvt.l.d  a1, f11, rtz
  feq.d     a0, f21, f10
  flt.s     t5, f2, f0
  fclass.d  s6, f2
  csrr  a1, mscratch
  csrw  mscratch, s2
  csrrw t5, mscratch, a7
  csrrs s7, mstatus, x0
  csrrc t4, mscratch, x0
  csrrwi a6, mscratch, 10
  fence
  fence.i
  c.addi a0, -15
  c.mv   a1, a2
  c.li   a3, 12
  c.add  a4, a5
  la    s0, tdat
  li    s10, 117
  li    s8, -1339
  add   s5, s2, t6
  sub   a4, t4, s10
  xor   t3, a4, s6
  or    t6, s5, a2
  and   a2, t1, t6
  addi  t0, t2, 1088
  andi  a1, a3, 1369
  ori   s9, s3, 1262
  xori  a1, t1, 1610
  slli  a2, s7, 46
  srli  s5, t0, 11
  srai  s5, s10, 58
  sllw  t0, a2, a5
  sraw  t4, t6, s8
  slt   s9, t1, s8
  sltu  t1, s4, a3
  sltiu t6, a1, 848
  lui   a4, 0x14963
  auipc a5, 0x12
  addw  s10, a0, s8
  subw  a2, s11, s5
  addiw s3, t0, -913
  mul   s8, a0, s11
  mulh  a1, t0, t3
  mulhu s9, t3, s6
  mulw  t4, a1, t0
  div   a5, s7, s7
  divu  s7, t1, t1
  rem   s2, s7, t5
  remu  a4, t1, t0
  divw  s8, t5, s6
  remw  t2, s3, s8
  sd    a5, 8(s0)
  ld    s7, 8(s0)
  sw    t6, 8(s0)
  lw    s4, 8(s0)
  lwu   a6, 8(s0)
  lh    s8, 8(s0)
  lbu   t1, 8(s0)
  lr.d      s2, (s0)
  sc.d      s9, s5, (s0)
  amoadd.w  a5, t4, (s0)
  amoswap.d a2, s11, (s0)
  amoand.w  s10, t4, (s0)
  amoor.d   s2, a3, (s0)
  amoxor.w  s6, t6, (s0)
  amomax.d  s9, s8, (s0)
  amominu.w a2, t3, (s0)
  fmv.w.x   f19, s9
  fmv.d.x   f11, a2
  fadd.s    f8, f6, f9
  fsub.s    f2, f4, f7
  fmul.s    f2, f9, f7
  fdiv.s    f21, f1, f2
  fmin.s    f19, f7, f3
  fmax.s    f0, f6, f4
  fsgnj.s   f4, f4, f0
  fadd.d    f19, f1, f11
  fsub.d    f21, f3, f8
  fmul.d    f21, f18, f18
  fdiv.d    f3, f5, f21
  fsqrt.d   f6, f20
  fmadd.d   f4, f3, f20, f7
  fcvt.s.w  f11, a7
  fcvt.d.w  f1, s2
  fcvt.d.s  f4, f21
  fcvt.s.d  f20, f2
  fcvt.w.s  s7, f20, rtz
  fcvt.l.d  t5, f0, rtz
  feq.d     t2, f6, f7
  flt.s     a1, f2, f9
  fclass.d  s5, f6
  csrr  a3, mscratch
  csrw  mscratch, s4
  csrrw a2, mscratch, s9
  csrrs t3, mstatus, x0
  csrrc t3, mscratch, x0
  csrrwi a3, mscratch, 24
  fence
  fence.i
  c.addi a0, -30
  c.mv   a1, a2
  c.li   a3, 29
  c.add  a4, a5
  la    s0, tdat
  li    s10, 333
  li    t2, -821
  add   s10, a4, a4
  sub   s3, s2, a5
  xor   s4, t4, s8
  or    a2, s4, s4
  and   s3, a5, s9
  addi  s3, s11, -1283
  andi  s10, s9, 88
  ori   s9, t0, 1728
  xori  t5, s7, 1262
  slli  t2, s2, 60
  srli  t6, a0, 2
  srai  s10, a7, 34
  sllw  t2, t0, s10
  sraw  s10, s3, s2
  slt   a5, s4, t0
  sltu  a3, s2, a1
  sltiu t0, s8, 1149
  lui   s10, 0xce9e2
  auipc t1, 0x18
  addw  a4, a2, t5
  subw  a4, t6, t2
  addiw a3, s4, -1976
  mul   t0, t5, a2
  mulh  t4, a0, t0
  mulhu s6, a7, s10
  mulw  t0, a2, a6
  div   a0, t3, a6
  divu  a0, s11, t1
  rem   a3, a3, a4
  remu  t1, s9, t6
  divw  s10, s4, s5
  remw  a3, a4, a3
  sd    s2, 8(s0)
  ld    s3, 8(s0)
  sw    t1, 8(s0)
  lw    t5, 8(s0)
  lwu   a3, 8(s0)
  lh    t4, 8(s0)
  lbu   s10, 8(s0)
  lr.d      s3, (s0)
  sc.d      s10, t3, (s0)
  amoadd.w  s8, s8, (s0)
  amoswap.d t2, s6, (s0)
  amoand.w  s5, a5, (s0)
  amoor.d   a7, a7, (s0)
  amoxor.w  a0, t4, (s0)
  amomax.d  t0, s6, (s0)
  amominu.w t5, s10, (s0)
  fmv.w.x   f4, s8
  fmv.d.x   f1, t1
  fadd.s    f3, f10, f0
  fsub.s    f8, f1, f4
  fmul.s    f10, f6, f8
  fdiv.s    f20, f4, f3
  fmin.s    f6, f3, f9
  fmax.s    f9, f19, f6
  fsgnj.s   f21, f10, f19
  fadd.d    f20, f3, f2
  fsub.d    f20, f8, f8
  fmul.d    f4, f20, f2
  fdiv.d    f18, f8, f11
  fsqrt.d   f8, f9
  fmadd.d   f21, f8, f21, f7
  fcvt.s.w  f18, t6
  fcvt.d.w  f21, a7
  fcvt.d.s  f20, f11
  fcvt.s.d  f19, f6
  fcvt.w.s  a2, f4, rtz
  fcvt.l.d  s3, f1, rtz
  feq.d     a5, f3, f7
  flt.s     a4, f6, f5
  fclass.d  s9, f9
  csrr  s4, mscratch
  csrw  mscratch, s5
  csrrw a6, mscratch, s5
  csrrs a2, mstatus, x0
  csrrc t2, mscratch, x0
  csrrwi a3, mscratch, 4
  fence
  fence.i
  c.addi a0, 3
  c.mv   a1, a2
  c.li   a3, 0
  c.add  a4, a5
  la    s0, tdat
  li    s2, 693
  li    a2, 926
  add   a7, a5, t6
  sub   a5, a2, t0
  xor   s4, a0, t5
  or    s10, s10, t1
  and   a0, s2, s7
  addi  t0, a4, -1352
  andi  t5, t5, 35
  ori   t2, t0, 1786
  xori  s4, a1, -1885
  slli  s8, t4, 58
  srli  t2, a6, 11
  srai  a7, t4, 3
  sllw  s10, s10, s11
  sraw  t6, t2, t0
  slt   t1, a4, s9
  sltu  t4, t0, t6
  sltiu s6, a0, 171
  lui   s5, 0x9c6a8
  auipc s2, 0x35
  addw  a5, a7, s10
  subw  t0, a6, t6
  addiw s4, t5, -1485
  mul   t2, s3, a3
  mulh  t0, s10, t2
  mulhu t0, a2, a7
  mulw  t4, t2, s2
  div   a6, a6, a3
  divu  a1, t2, a7
  rem   s2, t3, t0
  remu  s3, s2, a5
  divw  t4, s3, s2
  remw  s2, s6, s3
  sd    s3, 0(s0)
  ld    s11, 0(s0)
  sw    t6, 0(s0)
  lw    a3, 0(s0)
  lwu   s6, 0(s0)
  lh    a7, 0(s0)
  lbu   s7, 0(s0)
  lr.d      a0, (s0)
  sc.d      s7, s8, (s0)
  amoadd.w  t1, t3, (s0)
  amoswap.d s3, s5, (s0)
  amoand.w  s11, s5, (s0)
  amoor.d   a2, t1, (s0)
  amoxor.w  a4, t1, (s0)
  amomax.d  a6, t4, (s0)
  amominu.w t6, s5, (s0)
  fmv.w.x   f6, s11
  fmv.d.x   f9, t2
  fadd.s    f7, f8, f4
  fsub.s    f19, f0, f4
  fmul.s    f10, f6, f1
  fdiv.s    f3, f1, f2
  fmin.s    f8, f21, f19
  fmax.s    f3, f7, f9
  fsgnj.s   f5, f21, f2
  fadd.d    f20, f11, f21
  fsub.d    f2, f4, f8
  fmul.d    f1, f5, f3
  fdiv.d    f21, f19, f8
  fsqrt.d   f19, f7
  fmadd.d   f19, f6, f11, f10
  fcvt.s.w  f11, s9
  fcvt.d.w  f4, a1
  fcvt.d.s  f20, f2
  fcvt.s.d  f11, f11
  fcvt.w.s  s3, f2, rtz
  fcvt.l.d  s9, f18, rtz
  feq.d     a0, f9, f21
  flt.s     t0, f3, f21
  fclass.d  s10, f6
  csrr  t0, mscratch
  csrw  mscratch, a6
  csrrw t0, mscratch, s5
  csrrs a3, mstatus, x0
  csrrc a0, mscratch, x0
  csrrwi s7, mscratch, 15
  fence
  fence.i
  c.addi a0, 21
  c.mv   a1, a2
  c.li   a3, 17
  c.add  a4, a5
  la    s0, tdat
  li    a6, 1361
  li    s7, -991
  add   a6, s6, s10
  sub   s8, a7, s2
  xor   t0, a1, t5
  or    s8, t5, t6
  and   s8, t5, a5
  addi  t4, a1, 1095
  andi  t5, a5, 1220
  ori   a7, s7, 1352
  xori  a1, s2, -1382
  slli  a3, t5, 63
  srli  t3, s3, 45
  srai  s10, t2, 8
  sllw  t3, t5, s7
  sraw  t3, s5, t2
  slt   s5, s8, s7
  sltu  s5, s9, s11
  sltiu s11, s4, 1872
  lui   s6, 0x7be64
  auipc a2, 0x75
  addw  t2, s7, a0
  subw  s7, t2, a6
  addiw s2, s5, -1959
  mul   s2, t0, a1
  mulh  s7, t0, a3
  mulhu s6, s4, s5
  mulw  s4, a0, a0
  div   a3, t0, t5
  divu  t5, t3, a0
  rem   t5, a5, s4
  remu  t5, s11, t4
  divw  a2, t5, s2
  remw  a0, a3, s2
  sd    t5, 0(s0)
  ld    a7, 0(s0)
  sw    a0, 0(s0)
  lw    t4, 0(s0)
  lwu   s4, 0(s0)
  lh    s4, 0(s0)
  lbu   t3, 0(s0)
  lr.d      s3, (s0)
  sc.d      s6, s2, (s0)
  amoadd.w  a0, s7, (s0)
  amoswap.d t3, s6, (s0)
  amoand.w  s5, a7, (s0)
  amoor.d   a6, s8, (s0)
  amoxor.w  t0, t0, (s0)
  amomax.d  a5, s3, (s0)
  amominu.w s8, s3, (s0)
  fmv.w.x   f7, a7
  fmv.d.x   f9, a6
  fadd.s    f2, f11, f3
  fsub.s    f0, f8, f7
  fmul.s    f1, f9, f6
  fdiv.s    f4, f8, f11
  fmin.s    f18, f18, f21
  fmax.s    f20, f19, f11
  fsgnj.s   f20, f19, f0
  fadd.d    f11, f3, f7
  fsub.d    f11, f8, f11
  fmul.d    f3, f5, f4
  fdiv.d    f7, f10, f7
  fsqrt.d   f8, f19
  fmadd.d   f21, f11, f5, f9
  fcvt.s.w  f21, t2
  fcvt.d.w  f2, s8
  fcvt.d.s  f2, f20
  fcvt.s.d  f2, f19
  fcvt.w.s  s10, f5, rtz
  fcvt.l.d  s11, f9, rtz
  feq.d     t3, f11, f6
  flt.s     t5, f4, f6
  fclass.d  s4, f7
  csrr  t6, mscratch
  csrw  mscratch, s8
  csrrw s6, mscratch, a7
  csrrs t4, mstatus, x0
  csrrc s11, mscratch, x0
  csrrwi s7, mscratch, 14
  fence
  fence.i
  c.addi a0, 7
  c.mv   a1, a2
  c.li   a3, -26
  c.add  a4, a5
  la    s0, tdat
  li    a5, 1667
  li    t5, -817
  add   s7, s11, s10
  sub   s11, a2, s3
  xor   t1, a0, t0
  or    a4, a0, a3
  and   a0, s9, a2
  addi  t4, s6, -467
  andi  a7, t1, 1063
  ori   s9, t4, 121
  xori  s4, a5, -296
  slli  s11, s2, 18
  srli  s4, s7, 39
  srai  t6, a0, 6
  sllw  t4, s7, a2
  sraw  s2, s2, t4
  slt   s2, t1, a4
  sltu  s10, s5, t6
  sltiu a4, t2, 232
  lui   s7, 0x7c59e
  auipc a3, 0x4b
  addw  t6, s4, s4
  subw  a6, a4, a2
  addiw a4, a6, -794
  mul   a2, s4, s7
  mulh  a2, s6, s5
  mulhu s10, t6, s9
  mulw  t2, t2, s3
  div   s6, a5, a2
  divu  t6, t6, s11
  rem   a7, t2, t5
  remu  a5, t6, a3
  divw  s8, s4, a5
  remw  t2, a0, s8
  sd    s8, 8(s0)
  ld    s3, 8(s0)
  sw    s9, 8(s0)
  lw    t0, 8(s0)
  lwu   s9, 8(s0)
  lh    a5, 8(s0)
  lbu   s8, 8(s0)
  lr.d      t4, (s0)
  sc.d      a6, s2, (s0)
  amoadd.w  s5, t6, (s0)
  amoswap.d t0, s11, (s0)
  amoand.w  s11, a7, (s0)
  amoor.d   s2, a5, (s0)
  amoxor.w  t0, s11, (s0)
  amomax.d  s5, s10, (s0)
  amominu.w s9, s7, (s0)
  fmv.w.x   f7, s4
  fmv.d.x   f4, a3
  fadd.s    f8, f20, f1
  fsub.s    f8, f11, f19
  fmul.s    f21, f11, f6
  fdiv.s    f21, f10, f4
  fmin.s    f0, f18, f18
  fmax.s    f5, f5, f6
  fsgnj.s   f0, f7, f2
  fadd.d    f11, f18, f10
  fsub.d    f3, f10, f3
  fmul.d    f18, f9, f10
  fdiv.d    f4, f1, f19
  fsqrt.d   f4, f20
  fmadd.d   f18, f5, f10, f9
  fcvt.s.w  f0, t6
  fcvt.d.w  f4, t6
  fcvt.d.s  f20, f8
  fcvt.s.d  f4, f4
  fcvt.w.s  t2, f2, rtz
  fcvt.l.d  s6, f0, rtz
  feq.d     a1, f9, f0
  flt.s     a0, f5, f7
  fclass.d  s7, f6
  csrr  t4, mscratch
  csrw  mscratch, s4
  csrrw a5, mscratch, s8
  csrrs s8, mstatus, x0
  csrrc a1, mscratch, x0
  csrrwi a7, mscratch, 1
  fence
  fence.i
  c.addi a0, 28
  c.mv   a1, a2
  c.li   a3, 4
  c.add  a4, a5
  la    s0, tdat
  li    t0, 1054
  li    s5, -296
  add   t6, s9, s8
  sub   s4, a7, a1
  xor   a7, s7, s8
  or    a6, t0, s2
  and   a7, t4, a6
  addi  a7, t1, -1829
  andi  a6, t1, 679
  ori   s8, s10, 451
  xori  s9, a5, 1312
  slli  t6, a7, 40
  srli  s6, s8, 20
  srai  s7, s2, 11
  sllw  s2, s7, s8
  sraw  t3, a5, a6
  slt   s6, t4, t3
  sltu  t2, a3, s7
  sltiu a2, a4, 52
  lui   s5, 0x7f87d
  auipc a1, 0x3
  addw  s10, s7, a6
  subw  a4, s8, s9
  addiw s10, s11, -1343
  mul   s2, t5, a4
  mulh  s5, t0, a2
  mulhu s2, a5, t2
  mulw  a0, s6, a4
  div   s3, t2, a3
  divu  s11, t5, s9
  rem   s5, a5, t4
  remu  s5, s8, t0
  divw  a6, a7, s10
  remw  s6, s11, t2
  sd    t1, 8(s0)
  ld    t0, 8(s0)
  sw    s3, 8(s0)
  lw    s6, 8(s0)
  lwu   a5, 8(s0)
  lh    t2, 8(s0)
  lbu   s11, 8(s0)
  lr.d      s2, (s0)
  sc.d      s9, a5, (s0)
  amoadd.w  a3, s7, (s0)
  amoswap.d a1, s10, (s0)
  amoand.w  t2, s5, (s0)
  amoor.d   s3, a7, (s0)
  amoxor.w  t0, a3, (s0)
  amomax.d  s4, t3, (s0)
  amominu.w a6, s9, (s0)
  fmv.w.x   f21, a6
  fmv.d.x   f8, s10
  fadd.s    f0, f20, f8
  fsub.s    f11, f3, f20
  fmul.s    f0, f10, f20
  fdiv.s    f20, f18, f8
  fmin.s    f21, f8, f3
  fmax.s    f7, f20, f0
  fsgnj.s   f18, f1, f5
  fadd.d    f3, f11, f4
  fsub.d    f11, f19, f8
  fmul.d    f19, f11, f8
  fdiv.d    f20, f20, f18
  fsqrt.d   f6, f20
  fmadd.d   f0, f9, f19, f19
  fcvt.s.w  f8, a7
  fcvt.d.w  f20, s7
  fcvt.d.s  f20, f10
  fcvt.s.d  f6, f5
  fcvt.w.s  s8, f5, rtz
  fcvt.l.d  a1, f11, rtz
  feq.d     t2, f8, f19
  flt.s     s7, f9, f2
  fclass.d  s6, f8
  csrr  t5, mscratch
  csrw  mscratch, s3
  csrrw s9, mscratch, a7
  csrrs t0, mstatus, x0
  csrrc t0, mscratch, x0
  csrrwi a7, mscratch, 24
  fence
  fence.i
  c.addi a0, 30
  c.mv   a1, a2
  c.li   a3, -25
  c.add  a4, a5
  la    s0, tdat
  li    s11, 403
  li    a1, 608
  add   s7, a2, a4
  sub   t6, a5, a1
  xor   t3, s4, t3
  or    a3, a5, s9
  and   s7, s6, s4
  addi  s4, s4, 1004
  andi  t3, t4, 1690
  ori   s7, a4, 1257
  xori  s9, s9, 753
  slli  s5, s7, 27
  srli  t6, s5, 31
  srai  s7, a1, 33
  sllw  s8, a7, s6
  sraw  t0, t6, a4
  slt   s6, t3, s2
  sltu  t4, a2, s4
  sltiu a3, s7, 1975
  lui   a0, 0x8492c
  auipc s11, 0xa
  addw  s6, t4, t5
  subw  s2, t4, t4
  addiw a1, s11, -1165
  mul   t1, a0, s3
  mulh  t4, t3, s4
  mulhu a4, s5, s6
  mulw  a5, s3, s4
  div   t1, a0, a6
  divu  s11, a1, t5
  rem   s6, t1, a2
  remu  t2, s9, s7
  divw  a3, s10, t6
  remw  t2, s10, s8
  sd    t0, 0(s0)
  ld    a5, 0(s0)
  sw    s2, 0(s0)
  lw    s9, 0(s0)
  lwu   t1, 0(s0)
  lh    t2, 0(s0)
  lbu   s2, 0(s0)
  lr.d      t3, (s0)
  sc.d      a3, s2, (s0)
  amoadd.w  t5, t3, (s0)
  amoswap.d a7, a4, (s0)
  amoand.w  s2, a1, (s0)
  amoor.d   a3, a4, (s0)
  amoxor.w  a4, s5, (s0)
  amomax.d  t6, a5, (s0)
  amominu.w t4, s4, (s0)
  fmv.w.x   f9, s2
  fmv.d.x   f0, a2
  fadd.s    f1, f18, f2
  fsub.s    f6, f0, f10
  fmul.s    f11, f8, f10
  fdiv.s    f11, f3, f1
  fmin.s    f21, f3, f10
  fmax.s    f5, f2, f2
  fsgnj.s   f20, f8, f18
  fadd.d    f9, f19, f1
  fsub.d    f2, f18, f19
  fmul.d    f4, f0, f6
  fdiv.d    f7, f8, f8
  fsqrt.d   f10, f4
  fmadd.d   f19, f10, f19, f19
  fcvt.s.w  f8, a0
  fcvt.d.w  f5, t4
  fcvt.d.s  f9, f10
  fcvt.s.d  f8, f0
  fcvt.w.s  s9, f7, rtz
  fcvt.l.d  t1, f5, rtz
  feq.d     t0, f9, f7
  flt.s     t5, f20, f7
  fclass.d  t6, f5
  csrr  s7, mscratch
  csrw  mscratch, a2
  csrrw a0, mscratch, a2
  csrrs s8, mstatus, x0
  csrrc s11, mscratch, x0
  csrrwi a0, mscratch, 30
  fence
  fence.i
  c.addi a0, -4
  c.mv   a1, a2
  c.li   a3, -1
  c.add  a4, a5
  la    s0, tdat
  li    s5, 1212
  li    s11, 1233
  add   s7, a3, a6
  sub   s4, t0, t1
  xor   s2, t0, s6
  or    t5, a6, a0
  and   t0, s7, s7
  addi  a5, s6, -1553
  andi  a7, t0, 900
  ori   a1, s8, 187
  xori  a2, a3, 1852
  slli  a0, s3, 1
  srli  s8, t5, 13
  srai  a4, t5, 52
  sllw  a7, a4, s8
  sraw  s8, t5, a4
  slt   s4, t6, a4
  sltu  s11, s4, a7
  sltiu s5, s6, 1338
  lui   s2, 0xb177e
  auipc t4, 0x13
  addw  s8, s6, t1
  subw  a5, s2, t0
  addiw s11, a5, 114
  mul   s3, t1, a7
  mulh  s9, a4, a6
  mulhu s9, s8, a6
  mulw  t0, a0, s11
  div   a2, s2, a5
  divu  t2, s10, a5
  rem   s8, t6, t2
  remu  t5, a4, a3
  divw  t4, t4, a7
  remw  s6, s6, t4
  sd    t0, 0(s0)
  ld    a2, 0(s0)
  sw    t4, 0(s0)
  lw    a5, 0(s0)
  lwu   t3, 0(s0)
  lh    a5, 0(s0)
  lbu   a2, 0(s0)
  lr.d      s9, (s0)
  sc.d      t3, t2, (s0)
  amoadd.w  s4, s5, (s0)
  amoswap.d t3, s6, (s0)
  amoand.w  s7, s8, (s0)
  amoor.d   t3, t1, (s0)
  amoxor.w  t1, t6, (s0)
  amomax.d  s8, a1, (s0)
  amominu.w t3, t2, (s0)
  fmv.w.x   f6, t0
  fmv.d.x   f21, a6
  fadd.s    f19, f21, f7
  fsub.s    f2, f6, f7
  fmul.s    f0, f2, f2
  fdiv.s    f6, f1, f9
  fmin.s    f6, f1, f4
  fmax.s    f11, f2, f1
  fsgnj.s   f1, f10, f18
  fadd.d    f11, f4, f10
  fsub.d    f2, f0, f11
  fmul.d    f1, f2, f10
  fdiv.d    f20, f7, f9
  fsqrt.d   f0, f18
  fmadd.d   f1, f7, f8, f10
  fcvt.s.w  f21, a3
  fcvt.d.w  f2, s7
  fcvt.d.s  f11, f21
  fcvt.s.d  f1, f10
  fcvt.w.s  t0, f8, rtz
  fcvt.l.d  t0, f18, rtz
  feq.d     a5, f3, f19
  flt.s     a3, f10, f6
  fclass.d  s8, f10
  csrr  s8, mscratch
  csrw  mscratch, s3
  csrrw s8, mscratch, s11
  csrrs t2, mstatus, x0
  csrrc a5, mscratch, x0
  csrrwi t6, mscratch, 21
  fence
  fence.i
  c.addi a0, -30
  c.mv   a1, a2
  c.li   a3, 14
  c.add  a4, a5
  la    s0, tdat
  li    a0, 675
  li    t6, -1999
  add   s8, t0, s5
  sub   s4, t2, s5
  xor   a4, s9, a1
  or    t1, a0, s4
  and   s6, s9, s2
  addi  t2, s5, -246
  andi  t2, a5, 544
  ori   a4, a6, 1656
  xori  s3, s6, -675
  slli  t0, a3, 28
  srli  s5, t5, 18
  srai  a7, s10, 53
  sllw  t2, s7, a5
  sraw  s2, s7, a6
  slt   t5, t5, t0
  sltu  t6, s5, a2
  sltiu s5, s8, 295
  lui   t5, 0xff27e
  auipc s5, 0x77
  addw  s9, a6, a0
  subw  s8, a0, s3
  addiw t6, s4, -1463
  mul   a6, t4, t3
  mulh  t2, s5, s11
  mulhu s2, s7, a5
  mulw  s8, t1, t5
  div   t3, s10, s11
  divu  s9, s9, t1
  rem   a3, s9, s8
  remu  a2, s10, a0
  divw  s4, t4, t5
  remw  t1, a7, s7
  sd    a2, 8(s0)
  ld    a2, 8(s0)
  sw    s9, 8(s0)
  lw    a0, 8(s0)
  lwu   s9, 8(s0)
  lh    a5, 8(s0)
  lbu   s4, 8(s0)
  lr.d      s6, (s0)
  sc.d      s8, t0, (s0)
  amoadd.w  s3, s9, (s0)
  amoswap.d a2, s2, (s0)
  amoand.w  s8, a7, (s0)
  amoor.d   t6, t1, (s0)
  amoxor.w  a3, t2, (s0)
  amomax.d  t5, s4, (s0)
  amominu.w a0, s11, (s0)
  fmv.w.x   f5, a6
  fmv.d.x   f8, a0
  fadd.s    f10, f4, f5
  fsub.s    f0, f5, f18
  fmul.s    f5, f20, f18
  fdiv.s    f1, f0, f9
  fmin.s    f4, f4, f21
  fmax.s    f2, f8, f5
  fsgnj.s   f0, f11, f6
  fadd.d    f6, f2, f9
  fsub.d    f18, f21, f11
  fmul.d    f11, f20, f9
  fdiv.d    f0, f18, f0
  fsqrt.d   f10, f10
  fmadd.d   f10, f10, f0, f18
  fcvt.s.w  f4, t1
  fcvt.d.w  f5, s5
  fcvt.d.s  f11, f9
  fcvt.s.d  f11, f11
  fcvt.w.s  a7, f19, rtz
  fcvt.l.d  a7, f7, rtz
  feq.d     s8, f6, f0
  flt.s     a7, f20, f0
  fclass.d  t0, f0
  csrr  a3, mscratch
  csrw  mscratch, a5
  csrrw s11, mscratch, t4
  csrrs a1, mstatus, x0
  csrrc s10, mscratch, x0
  csrrwi a3, mscratch, 6
  fence
  fence.i
  c.addi a0, -31
  c.mv   a1, a2
  c.li   a3, 27
  c.add  a4, a5
  la    s0, tdat
  li    a2, 943
  li    a1, -1126
  add   s8, t4, a7
  sub   s8, t6, t2
  xor   t1, t6, a2
  or    a7, a7, t5
  and   s6, a2, s8
  addi  s8, s4, -280
  andi  a5, s5, 1939
  ori   t3, t5, 1122
  xori  s6, s2, 726
  slli  a3, a1, 8
  srli  a6, t5, 50
  srai  s10, a0, 27
  sllw  s4, a1, a0
  sraw  s8, t5, s2
  slt   t1, t6, a2
  sltu  a7, s10, s4
  sltiu s11, s2, 370
  lui   t2, 0x2dced
  auipc s8, 0x80
  addw  s4, t5, a0
  subw  s7, a5, a6
  addiw a1, a4, -1525
  mul   a6, s5, a4
  mulh  s5, t6, s10
  mulhu a1, a1, a2
  mulw  t1, t2, s8
  div   s5, s5, s9
  divu  s11, s11, t6
  rem   s6, a6, t3
  remu  t6, s3, a4
  divw  a5, a5, a6
  remw  s5, a5, s10
  sd    t2, 0(s0)
  ld    a7, 0(s0)
  sw    s10, 0(s0)
  lw    a6, 0(s0)
  lwu   s10, 0(s0)
  lh    s6, 0(s0)
  lbu   a3, 0(s0)
  lr.d      a0, (s0)
  sc.d      a1, a1, (s0)
  amoadd.w  t3, t5, (s0)
  amoswap.d a2, s2, (s0)
  amoand.w  t6, t1, (s0)
  amoor.d   t3, s7, (s0)
  amoxor.w  a6, s11, (s0)
  amomax.d  s9, t4, (s0)
  amominu.w s6, s6, (s0)
  fmv.w.x   f21, a6
  fmv.d.x   f21, s4
  fadd.s    f8, f8, f19
  fsub.s    f0, f1, f18
  fmul.s    f21, f7, f1
  fdiv.s    f1, f0, f1
  fmin.s    f7, f19, f7
  fmax.s    f7, f3, f9
  fsgnj.s   f19, f5, f1
  fadd.d    f10, f19, f9
  fsub.d    f19, f10, f19
  fmul.d    f4, f5, f1
  fdiv.d    f3, f9, f19
  fsqrt.d   f4, f5
  fmadd.d   f5, f3, f5, f18
  fcvt.s.w  f8, s4
  fcvt.d.w  f11, s11
  fcvt.d.s  f18, f4
  fcvt.s.d  f19, f6
  fcvt.w.s  s11, f8, rtz
  fcvt.l.d  t2, f6, rtz
  feq.d     t0, f0, f9
  flt.s     a4, f3, f4
  fclass.d  s8, f7
  csrr  s6, mscratch
  csrw  mscratch, s5
  csrrw s7, mscratch, a3
  csrrs a5, mstatus, x0
  csrrc s2, mscratch, x0
  csrrwi s3, mscratch, 2
  fence
  fence.i
  c.addi a0, -18
  c.mv   a1, a2
  c.li   a3, 3
  c.add  a4, a5
  la    s0, tdat
  li    s5, 2029
  li    a7, -1916
  add   s8, t3, s11
  sub   s2, s10, t1
  xor   s2, s11, s4
  or    t3, s9, t4
  and   t0, t3, s2
  addi  s7, s10, -786
  andi  t6, t2, 1218
  ori   a4, a0, 143
  xori  t6, s6, -744
  slli  a4, a7, 62
  srli  a1, a5, 34
  srai  a5, s2, 41
  sllw  t5, s11, a5
  sraw  t3, s11, s6
  slt   a3, s9, a7
  sltu  t2, s6, a7
  sltiu t6, a0, 737
  lui   s11, 0x2a4e0
  auipc a1, 0xa4
  addw  s5, t1, t0
  subw  s3, s3, a0
  addiw t4, a1, 2031
  mul   a0, t2, t5
  mulh  t6, s3, s7
  mulhu a4, a2, s3
  mulw  a2, t2, t3
  div   a2, a4, t4
  divu  s11, a2, a0
  rem   t2, a0, s6
  remu  t2, a4, t4
  divw  a1, s7, s8
  remw  s6, s4, t0
  sd    t4, 0(s0)
  ld    a5, 0(s0)
  sw    s11, 0(s0)
  lw    s11, 0(s0)
  lwu   s2, 0(s0)
  lh    t6, 0(s0)
  lbu   a1, 0(s0)
  lr.d      s11, (s0)
  sc.d      s2, a1, (s0)
  amoadd.w  a0, t0, (s0)
  amoswap.d a5, t6, (s0)
  amoand.w  a1, a2, (s0)
  amoor.d   a0, s11, (s0)
  amoxor.w  a2, s6, (s0)
  amomax.d  a7, s5, (s0)
  amominu.w t6, a1, (s0)
  fmv.w.x   f18, s2
  fmv.d.x   f20, s10
  fadd.s    f3, f11, f20
  fsub.s    f11, f11, f0
  fmul.s    f18, f8, f10
  fdiv.s    f18, f2, f11
  fmin.s    f7, f4, f6
  fmax.s    f7, f20, f11
  fsgnj.s   f6, f21, f4
  fadd.d    f11, f11, f11
  fsub.d    f3, f18, f18
  fmul.d    f6, f2, f2
  fdiv.d    f11, f9, f1
  fsqrt.d   f8, f1
  fmadd.d   f21, f21, f18, f10
  fcvt.s.w  f2, a5
  fcvt.d.w  f10, t4
  fcvt.d.s  f20, f11
  fcvt.s.d  f5, f1
  fcvt.w.s  a3, f21, rtz
  fcvt.l.d  a2, f20, rtz
  feq.d     s5, f8, f11
  flt.s     t5, f8, f10
  fclass.d  t2, f18
  csrr  s7, mscratch
  csrw  mscratch, s7
  csrrw a3, mscratch, t4
  csrrs a7, mstatus, x0
  csrrc t6, mscratch, x0
  csrrwi a0, mscratch, 13
  fence
  fence.i
  c.addi a0, 11
  c.mv   a1, a2
  c.li   a3, -7
  c.add  a4, a5
  la    s0, tdat
  li    t1, 738
  li    a7, -536
  add   s7, s4, t2
  sub   t1, a4, s2
  xor   a0, a2, s4
  or    s11, s6, a0
  and   t1, s11, t4
  addi  s10, a5, 187
  andi  a1, t2, 900
  ori   s10, a4, 1622
  xori  t6, s3, -1417
  slli  s3, s2, 1
  srli  a0, s6, 0
  srai  a1, s7, 20
  sllw  t4, s11, t3
  sraw  s11, t0, t5
  slt   t4, s9, s3
  sltu  t5, s2, a7
  sltiu s5, s8, 160
  lui   s7, 0x43311
  auipc a6, 0x3b
  addw  t4, t5, t2
  subw  s10, a2, s11
  addiw a6, s2, -1587
  mul   s2, s2, t0
  mulh  s11, s3, s5
  mulhu s3, t1, a2
  mulw  t2, s9, s5
  div   s8, a7, s11
  divu  a0, a3, s4
  rem   a4, s3, s5
  remu  a7, s8, s8
  divw  t1, a1, a5
  remw  a3, t2, a3
  sd    s3, 0(s0)
  ld    s5, 0(s0)
  sw    t4, 0(s0)
  lw    s8, 0(s0)
  lwu   s5, 0(s0)
  lh    t4, 0(s0)
  lbu   a2, 0(s0)
  lr.d      s7, (s0)
  sc.d      t6, t2, (s0)
  amoadd.w  a6, s3, (s0)
  amoswap.d a2, s9, (s0)
  amoand.w  s10, s4, (s0)
  amoor.d   t3, s2, (s0)
  amoxor.w  a6, t1, (s0)
  amomax.d  s6, s4, (s0)
  amominu.w a1, t5, (s0)
  fmv.w.x   f5, s5
  fmv.d.x   f11, s5
  fadd.s    f6, f8, f7
  fsub.s    f0, f7, f9
  fmul.s    f5, f21, f5
  fdiv.s    f1, f8, f7
  fmin.s    f9, f7, f10
  fmax.s    f6, f9, f0
  fsgnj.s   f21, f5, f7
  fadd.d    f7, f18, f11
  fsub.d    f11, f8, f4
  fmul.d    f2, f2, f3
  fdiv.d    f19, f4, f18
  fsqrt.d   f10, f0
  fmadd.d   f21, f21, f11, f4
  fcvt.s.w  f6, s6
  fcvt.d.w  f20, a6
  fcvt.d.s  f1, f7
  fcvt.s.d  f5, f4
  fcvt.w.s  a0, f7, rtz
  fcvt.l.d  a5, f18, rtz
  feq.d     a5, f3, f6
  flt.s     t0, f0, f10
  fclass.d  a0, f9
  csrr  a2, mscratch
  csrw  mscratch, t6
  csrrw a3, mscratch, t6
  csrrs a7, mstatus, x0
  csrrc s8, mscratch, x0
  csrrwi a2, mscratch, 14
  fence
  fence.i
  c.addi a0, 12
  c.mv   a1, a2
  c.li   a3, -19
  c.add  a4, a5
  la    s0, tdat
  li    a3, 222
  li    a3, 418
  add   s9, t2, s4
  sub   a7, t1, a6
  xor   a4, s8, t0
  or    t4, a5, a7
  and   a5, a3, a5
  addi  a1, s9, -1672
  andi  s11, s11, 1227
  ori   t1, a5, 1954
  xori  s6, a6, -1136
  slli  t1, t5, 47
  srli  s7, t3, 0
  srai  t2, t6, 32
  sllw  a4, t6, a1
  sraw  a5, a0, s8
  slt   a5, t5, s8
  sltu  a1, s2, t6
  sltiu s9, s5, 1755
  lui   t0, 0xc61ca
  auipc a5, 0xd9
  addw  t3, s6, t2
  subw  s5, t4, s9
  addiw a0, s11, 930
  mul   a5, a1, t3
  mulh  s5, a7, a7
  mulhu s9, a4, s5
  mulw  t4, s3, a6
  div   a7, t0, s3
  divu  a7, t2, s2
  rem   a1, a1, s9
  remu  s4, s6, a2
  divw  s10, s7, s4
  remw  a7, s11, a3
  sd    t2, 0(s0)
  ld    s3, 0(s0)
  sw    a6, 0(s0)
  lw    a1, 0(s0)
  lwu   t3, 0(s0)
  lh    a3, 0(s0)
  lbu   s6, 0(s0)
  lr.d      a3, (s0)
  sc.d      t0, s4, (s0)
  amoadd.w  s9, t2, (s0)
  amoswap.d a5, a5, (s0)
  amoand.w  a0, a6, (s0)
  amoor.d   t6, a7, (s0)
  amoxor.w  s7, s7, (s0)
  amomax.d  t1, a7, (s0)
  amominu.w a3, s5, (s0)
  fmv.w.x   f4, s6
  fmv.d.x   f10, s4
  fadd.s    f2, f21, f2
  fsub.s    f11, f21, f0
  fmul.s    f0, f9, f2
  fdiv.s    f21, f7, f21
  fmin.s    f2, f11, f5
  fmax.s    f9, f5, f4
  fsgnj.s   f6, f21, f2
  fadd.d    f3, f4, f19
  fsub.d    f20, f19, f0
  fmul.d    f9, f3, f0
  fdiv.d    f5, f7, f10
  fsqrt.d   f7, f18
  fmadd.d   f18, f5, f18, f4
  fcvt.s.w  f20, t3
  fcvt.d.w  f18, a1
  fcvt.d.s  f5, f21
  fcvt.s.d  f20, f21
  fcvt.w.s  s5, f8, rtz
  fcvt.l.d  s11, f9, rtz
  feq.d     s2, f1, f9
  flt.s     s8, f7, f6
  fclass.d  t1, f2
  csrr  s9, mscratch
  csrw  mscratch, s7
  csrrw s10, mscratch, t1
  csrrs s8, mstatus, x0
  csrrc s5, mscratch, x0
  csrrwi a5, mscratch, 19
  fence
  fence.i
  c.addi a0, 29
  c.mv   a1, a2
  c.li   a3, -5
  c.add  a4, a5
  la    s0, tdat
  li    t4, 769
  li    a4, -1805
  add   s9, s8, s9
  sub   t3, t2, a1
  xor   s7, s4, s7
  or    a3, a4, s8
  and   s11, a0, s4
  addi  s9, a3, 846
  andi  t5, a2, 1292
  ori   t1, t5, 1888
  xori  s10, t6, -244
  slli  t3, s10, 6
  srli  s6, s5, 22
  srai  t6, t1, 54
  sllw  s6, t6, s6
  sraw  s10, t0, a4
  slt   s4, s9, a3
  sltu  s5, s5, s6
  sltiu a4, s5, 41
  lui   s9, 0x51c60
  auipc s5, 0xe6
  addw  a6, t4, a7
  subw  t4, s5, t4
  addiw s10, a6, 1578
  mul   s5, s5, s3
  mulh  s8, t1, a4
  mulhu a3, s3, s7
  mulw  t5, t6, s11
  div   t6, t0, t6
  divu  t3, a4, t4
  rem   s6, s6, t6
  remu  t0, t5, a5
  divw  a2, a0, a2
  remw  a5, t4, t1
  sd    a5, 8(s0)
  ld    t6, 8(s0)
  sw    s11, 8(s0)
  lw    t4, 8(s0)
  lwu   t4, 8(s0)
  lh    s4, 8(s0)
  lbu   t2, 8(s0)
  lr.d      a7, (s0)
  sc.d      a1, s7, (s0)
  amoadd.w  s4, s4, (s0)
  amoswap.d s2, s3, (s0)
  amoand.w  s6, a4, (s0)
  amoor.d   a3, s8, (s0)
  amoxor.w  t5, a5, (s0)
  amomax.d  s2, s6, (s0)
  amominu.w s10, s6, (s0)
  fmv.w.x   f6, s9
  fmv.d.x   f21, s10
  fadd.s    f5, f19, f11
  fsub.s    f0, f4, f7
  fmul.s    f3, f8, f6
  fdiv.s    f18, f20, f3
  fmin.s    f4, f20, f6
  fmax.s    f7, f10, f11
  fsgnj.s   f19, f0, f20
  fadd.d    f5, f5, f5
  fsub.d    f11, f0, f19
  fmul.d    f10, f8, f2
  fdiv.d    f1, f11, f10
  fsqrt.d   f4, f4
  fmadd.d   f11, f9, f8, f2
  fcvt.s.w  f7, t4
  fcvt.d.w  f7, s9
  fcvt.d.s  f9, f1
  fcvt.s.d  f6, f3
  fcvt.w.s  s3, f10, rtz
  fcvt.l.d  a1, f2, rtz
  feq.d     a3, f3, f2
  flt.s     t4, f9, f7
  fclass.d  s9, f10
  csrr  s4, mscratch
  csrw  mscratch, a5
  csrrw t3, mscratch, s3
  csrrs t5, mstatus, x0
  csrrc a2, mscratch, x0
  csrrwi t3, mscratch, 7
  fence
  fence.i
  c.addi a0, -3
  c.mv   a1, a2
  c.li   a3, 12
  c.add  a4, a5
  la    s0, tdat
  li    s10, 1566
  li    a0, 1660
  add   s9, a0, t6
  sub   s11, s8, t1
  xor   s6, t3, s7
  or    t4, a1, s3
  and   t6, s2, a4
  addi  s7, s10, -1730
  andi  s10, a0, 855
  ori   a4, a4, 691
  xori  t5, a2, 244
  slli  t6, a1, 26
  srli  t2, s4, 18
  srai  t6, s10, 62
  sllw  s3, t3, s5
  sraw  a6, t3, a5
  slt   t3, a5, s9
  sltu  a2, s4, a3
  sltiu s10, a5, 647
  lui   s3, 0xd939c
  auipc t0, 0xd3
  addw  s5, s2, t3
  subw  s8, s10, s9
  addiw a6, s4, 1513
  mul   s9, s11, t2
  mulh  s5, s8, a0
  mulhu s3, a1, t4
  mulw  t4, s7, a4
  div   s4, a0, s5
  divu  s6, t0, a7
  rem   s9, s10, a6
  remu  s8, s10, s2
  divw  t3, a1, a2
  remw  a1, a2, s5
  sd    t6, 0(s0)
  ld    s4, 0(s0)
  sw    a4, 0(s0)
  lw    a3, 0(s0)
  lwu   a3, 0(s0)
  lh    s7, 0(s0)
  lbu   a5, 0(s0)
  lr.d      t5, (s0)
  sc.d      s9, s2, (s0)
  amoadd.w  a1, a1, (s0)
  amoswap.d s4, a6, (s0)
  amoand.w  a6, a6, (s0)
  amoor.d   a1, s3, (s0)
  amoxor.w  s9, s11, (s0)
  amomax.d  t1, s6, (s0)
  amominu.w t3, s9, (s0)
  fmv.w.x   f3, a6
  fmv.d.x   f4, t6
  fadd.s    f2, f1, f19
  fsub.s    f18, f3, f19
  fmul.s    f1, f1, f8
  fdiv.s    f11, f18, f20
  fmin.s    f20, f8, f10
  fmax.s    f2, f21, f7
  fsgnj.s   f10, f4, f0
  fadd.d    f21, f8, f11
  fsub.d    f7, f8, f18
  fmul.d    f19, f8, f2
  fdiv.d    f20, f8, f11
  fsqrt.d   f5, f1
  fmadd.d   f11, f2, f19, f10
  fcvt.s.w  f20, s3
  fcvt.d.w  f21, a3
  fcvt.d.s  f9, f0
  fcvt.s.d  f20, f19
  fcvt.w.s  s2, f11, rtz
  fcvt.l.d  a5, f21, rtz
  feq.d     s11, f0, f8
  flt.s     a4, f20, f5
  fclass.d  t2, f20
  csrr  a7, mscratch
  csrw  mscratch, s5
  csrrw s5, mscratch, t5
  csrrs a4, mstatus, x0
  csrrc t5, mscratch, x0
  csrrwi a7, mscratch, 3
  fence
  fence.i
  c.addi a0, -24
  c.mv   a1, a2
  c.li   a3, 28
  c.add  a4, a5
  la    s0, tdat
  li    s7, 1497
  li    s2, 333
  add   s9, s10, s4
  sub   t4, t0, a5
  xor   s2, s10, t2
  or    a6, a1, a6
  and   t5, a4, a2
  addi  a0, s5, 65
  andi  s6, s8, 387
  ori   t2, a4, 324
  xori  t5, a0, -981
  slli  s5, a7, 22
  srli  a2, t3, 44
  srai  t1, s3, 22
  sllw  a4, a5, s7
  sraw  s6, s8, t0
  slt   t6, a2, a1
  sltu  t6, t5, a7
  sltiu s5, t0, 380
  lui   t4, 0x33556
  auipc t4, 0x17
  addw  s4, t2, s3
  subw  t2, s4, s7
  addiw t0, s10, -1936
  mul   a2, t4, t0
  mulh  s7, t4, s4
  mulhu s11, a6, s6
  mulw  s9, t5, s4
  div   s8, s11, t1
  divu  s10, t2, a0
  rem   s9, t1, t4
  remu  s4, t4, a1
  divw  s5, a1, t3
  remw  t6, a0, s4
  sd    t0, 0(s0)
  ld    s4, 0(s0)
  sw    a2, 0(s0)
  lw    t0, 0(s0)
  lwu   t6, 0(s0)
  lh    t0, 0(s0)
  lbu   a7, 0(s0)
  lr.d      a6, (s0)
  sc.d      s9, s8, (s0)
  amoadd.w  a0, s7, (s0)
  amoswap.d t4, a5, (s0)
  amoand.w  s5, t5, (s0)
  amoor.d   t3, s4, (s0)
  amoxor.w  s2, a2, (s0)
  amomax.d  a0, a6, (s0)
  amominu.w t4, s7, (s0)
  fmv.w.x   f9, a7
  fmv.d.x   f6, s10
  fadd.s    f20, f1, f4
  fsub.s    f0, f18, f21
  fmul.s    f8, f9, f0
  fdiv.s    f4, f19, f8
  fmin.s    f2, f7, f3
  fmax.s    f10, f3, f7
  fsgnj.s   f0, f7, f2
  fadd.d    f5, f6, f9
  fsub.d    f11, f18, f10
  fmul.d    f0, f2, f21
  fdiv.d    f1, f20, f20
  fsqrt.d   f1, f18
  fmadd.d   f8, f11, f21, f3
  fcvt.s.w  f9, t0
  fcvt.d.w  f20, s4
  fcvt.d.s  f20, f6
  fcvt.s.d  f1, f10
  fcvt.w.s  s2, f18, rtz
  fcvt.l.d  t6, f10, rtz
  feq.d     a5, f1, f3
  flt.s     t6, f19, f7
  fclass.d  a6, f0
  csrr  a1, mscratch
  csrw  mscratch, s9
  csrrw a6, mscratch, t1
  csrrs t5, mstatus, x0
  csrrc s5, mscratch, x0
  csrrwi s6, mscratch, 28
  fence
  fence.i
  c.addi a0, -9
  c.mv   a1, a2
  c.li   a3, -21
  c.add  a4, a5
  la    s0, tdat
  li    s8, 270
  li    s11, -963
  add   a6, s5, a5
  sub   t6, s10, a0
  xor   t0, s2, s11
  or    a5, a7, t1
  and   s2, a5, s5
  addi  s8, t2, -962
  andi  s8, t5, 831
  ori   s2, s11, 1918
  xori  s5, a3, -553
  slli  s8, s7, 53
  srli  t6, a7, 57
  srai  a7, s3, 59
  sllw  s4, s6, s6
  sraw  a7, s6, t6
  slt   s2, s2, a2
  sltu  s11, a1, t1
  sltiu a0, a6, 1566
  lui   s7, 0x8f638
  auipc a0, 0x65
  addw  a7, s2, s2
  subw  a4, s2, t4
  addiw s7, t0, -897
  mul   s7, a4, a3
  mulh  s11, t6, s3
  mulhu t1, a3, a1
  mulw  t6, s3, s7
  div   a4, a4, t2
  divu  a0, t1, t1
  rem   a1, t5, s3
  remu  a3, s11, s11
  divw  s3, t0, t6
  remw  s6, a0, a3
  sd    s11, 8(s0)
  ld    a6, 8(s0)
  sw    t4, 8(s0)
  lw    s8, 8(s0)
  lwu   a0, 8(s0)
  lh    t0, 8(s0)
  lbu   t0, 8(s0)
  lr.d      t2, (s0)
  sc.d      s5, t0, (s0)
  amoadd.w  t5, s7, (s0)
  amoswap.d s7, s10, (s0)
  amoand.w  a2, s8, (s0)
  amoor.d   s3, t4, (s0)
  amoxor.w  t5, t6, (s0)
  amomax.d  a0, a0, (s0)
  amominu.w t1, s7, (s0)
  fmv.w.x   f11, t5
  fmv.d.x   f18, a5
  fadd.s    f5, f20, f2
  fsub.s    f5, f1, f21
  fmul.s    f21, f6, f10
  fdiv.s    f19, f9, f6
  fmin.s    f5, f3, f11
  fmax.s    f8, f21, f1
  fsgnj.s   f2, f19, f11
  fadd.d    f8, f3, f0
  fsub.d    f20, f6, f11
  fmul.d    f8, f5, f19
  fdiv.d    f18, f0, f7
  fsqrt.d   f10, f7
  fmadd.d   f4, f11, f8, f21
  fcvt.s.w  f18, a3
  fcvt.d.w  f19, a0
  fcvt.d.s  f18, f21
  fcvt.s.d  f11, f10
  fcvt.w.s  s6, f1, rtz
  fcvt.l.d  s9, f1, rtz
  feq.d     s10, f8, f2
  flt.s     t3, f4, f6
  fclass.d  t3, f2
  csrr  s3, mscratch
  csrw  mscratch, t5
  csrrw a1, mscratch, t3
  csrrs s8, mstatus, x0
  csrrc s2, mscratch, x0
  csrrwi a3, mscratch, 9
  fence
  fence.i
  c.addi a0, 31
  c.mv   a1, a2
  c.li   a3, -4
  c.add  a4, a5
  la    s0, tdat
  li    a6, 1796
  li    a7, -1228
  add   s4, s2, a0
  sub   a7, s6, s6
  xor   a1, t1, s10
  or    s7, s7, a7
  and   s2, s9, s10
  addi  t3, a5, -1112
  andi  a3, t3, 1088
  ori   s9, s6, 1225
  xori  a0, t1, -713
  slli  s11, s2, 61
  srli  t0, t0, 2
  srai  s8, t5, 47
  sllw  s9, t0, t4
  sraw  s2, s6, s10
  slt   a3, a3, t5
  sltu  t4, s6, t4
  sltiu t1, t2, 161
  lui   a6, 0x2ffe0
  auipc a0, 0xb9
  addw  s7, a3, a1
  subw  s6, t4, a7
  addiw a4, t4, -931
  mul   s4, s2, t6
  mulh  s4, s11, a3
  mulhu t0, s6, s4
  mulw  a2, a5, s5
  div   s2, a2, a5
  divu  a3, s4, a4
  rem   s10, s4, a0
  remu  a0, s11, s7
  divw  s6, s7, t3
  remw  a1, s3, s11
  sd    a0, 0(s0)
  ld    a5, 0(s0)
  sw    s9, 0(s0)
  lw    t6, 0(s0)
  lwu   a7, 0(s0)
  lh    a2, 0(s0)
  lbu   s10, 0(s0)
  lr.d      t2, (s0)
  sc.d      t1, t0, (s0)
  amoadd.w  t0, s10, (s0)
  amoswap.d t3, t5, (s0)
  amoand.w  t6, t5, (s0)
  amoor.d   a0, s8, (s0)
  amoxor.w  a0, t1, (s0)
  amomax.d  a7, s10, (s0)
  amominu.w a7, s2, (s0)
  fmv.w.x   f4, a2
  fmv.d.x   f3, a1
  fadd.s    f0, f11, f20
  fsub.s    f10, f0, f11
  fmul.s    f7, f20, f10
  fdiv.s    f1, f5, f20
  fmin.s    f11, f21, f11
  fmax.s    f4, f11, f11
  fsgnj.s   f20, f21, f11
  fadd.d    f1, f0, f19
  fsub.d    f4, f20, f20
  fmul.d    f9, f20, f2
  fdiv.d    f9, f3, f2
  fsqrt.d   f10, f2
  fmadd.d   f18, f0, f8, f0
  fcvt.s.w  f9, a3
  fcvt.d.w  f18, t5
  fcvt.d.s  f8, f19
  fcvt.s.d  f10, f21
  fcvt.w.s  t6, f19, rtz
  fcvt.l.d  s8, f5, rtz
  feq.d     t3, f5, f0
  flt.s     t3, f2, f0
  fclass.d  a3, f8
  csrr  s8, mscratch
  csrw  mscratch, a7
  csrrw t2, mscratch, s10
  csrrs t2, mstatus, x0
  csrrc a5, mscratch, x0
  csrrwi s2, mscratch, 12
  fence
  fence.i
  c.addi a0, -12
  c.mv   a1, a2
  c.li   a3, 0
  c.add  a4, a5
  la    s0, tdat
  li    t2, 1112
  li    s9, 1618
  add   a1, s6, s9
  sub   s6, s10, s7
  xor   s7, s5, a4
  or    a0, s11, s3
  and   s9, t1, t3
  addi  s3, s4, 1782
  andi  s10, s5, 46
  ori   s4, t3, 1794
  xori  s9, s7, 227
  slli  s5, a5, 13
  srli  t1, a2, 31
  srai  s7, t2, 40
  sllw  a2, t0, t0
  sraw  a3, t5, s7
  slt   a3, t0, t1
  sltu  s10, t3, t5
  sltiu a3, t1, 1704
  lui   s6, 0x6f4c8
  auipc s9, 0x95
  addw  a1, t3, t0
  subw  s9, a6, a1
  addiw t5, t0, -1047
  mul   t6, a6, t4
  mulh  s6, s2, s4
  mulhu a3, s5, a7
  mulw  t1, a3, a0
  div   s5, t5, s8
  divu  t2, a1, a5
  rem   a0, a6, s3
  remu  a3, t0, s9
  divw  a6, t4, s6
  remw  s9, s9, t6
  sd    a4, 0(s0)
  ld    s9, 0(s0)
  sw    a2, 0(s0)
  lw    s4, 0(s0)
  lwu   s2, 0(s0)
  lh    a1, 0(s0)
  lbu   s9, 0(s0)
  lr.d      a7, (s0)
  sc.d      s10, a6, (s0)
  amoadd.w  s11, s8, (s0)
  amoswap.d t1, t3, (s0)
  amoand.w  s3, s6, (s0)
  amoor.d   a4, t3, (s0)
  amoxor.w  t1, t6, (s0)
  amomax.d  a5, t4, (s0)
  amominu.w t2, a6, (s0)
  fmv.w.x   f8, a7
  fmv.d.x   f2, a2
  fadd.s    f4, f8, f10
  fsub.s    f0, f11, f2
  fmul.s    f1, f20, f7
  fdiv.s    f7, f4, f21
  fmin.s    f19, f2, f11
  fmax.s    f18, f3, f10
  fsgnj.s   f7, f18, f3
  fadd.d    f18, f21, f19
  fsub.d    f3, f8, f2
  fmul.d    f7, f10, f3
  fdiv.d    f11, f3, f1
  fsqrt.d   f1, f2
  fmadd.d   f10, f19, f1, f21
  fcvt.s.w  f11, t6
  fcvt.d.w  f0, s2
  fcvt.d.s  f4, f19
  fcvt.s.d  f3, f8
  fcvt.w.s  a4, f18, rtz
  fcvt.l.d  s6, f20, rtz
  feq.d     t6, f7, f11
  flt.s     t0, f7, f0
  fclass.d  s7, f2
  csrr  a4, mscratch
  csrw  mscratch, a3
  csrrw s10, mscratch, a2
  csrrs s11, mstatus, x0
  csrrc s8, mscratch, x0
  csrrwi s10, mscratch, 7
  fence
  fence.i
  c.addi a0, -7
  c.mv   a1, a2
  c.li   a3, -27
  c.add  a4, a5
  la    s0, tdat
  li    a7, 95
  li    s11, 421
  add   a1, a3, s4
  sub   a6, a2, a3
  xor   a4, s8, t2
  or    s9, a6, t4
  and   a0, a0, s6
  addi  t3, a3, -1036
  andi  a1, t6, 613
  ori   a6, s5, 1256
  xori  s5, a2, 856
  slli  a6, t3, 31
  srli  a2, a5, 1
  srai  s7, t4, 34
  sllw  a0, s2, a2
  sraw  s2, s9, s5
  slt   s6, s3, t4
  sltu  a1, s11, s11
  sltiu t2, a7, 2
  lui   a0, 0x8539
  auipc s6, 0x0
  addw  s9, a3, a4
  subw  t6, a0, s10
  addiw s5, a1, -1760
  mul   a6, s5, s7
  mulh  s8, s3, a7
  mulhu t3, t1, t5
  mulw  a1, s11, s5
  div   a6, s3, a4
  divu  t1, t3, s3
  rem   s10, a6, s3
  remu  a1, s9, s5
  divw  s6, a5, a0
  remw  s5, a4, s4
  sd    t1, 0(s0)
  ld    t2, 0(s0)
  sw    s7, 0(s0)
  lw    s3, 0(s0)
  lwu   a7, 0(s0)
  lh    s10, 0(s0)
  lbu   t3, 0(s0)
  lr.d      t5, (s0)
  sc.d      s3, t3, (s0)
  amoadd.w  s7, a4, (s0)
  amoswap.d a7, a3, (s0)
  amoand.w  s3, s8, (s0)
  amoor.d   s3, s7, (s0)
  amoxor.w  a4, s9, (s0)
  amomax.d  a4, a5, (s0)
  amominu.w s7, t1, (s0)
  fmv.w.x   f7, s5
  fmv.d.x   f20, t5
  fadd.s    f11, f21, f10
  fsub.s    f18, f1, f20
  fmul.s    f9, f5, f4
  fdiv.s    f4, f9, f2
  fmin.s    f0, f6, f4
  fmax.s    f0, f11, f20
  fsgnj.s   f19, f7, f20
  fadd.d    f4, f6, f6
  fsub.d    f2, f18, f8
  fmul.d    f4, f6, f0
  fdiv.d    f0, f1, f9
  fsqrt.d   f21, f5
  fmadd.d   f8, f18, f5, f8
  fcvt.s.w  f18, a7
  fcvt.d.w  f19, a4
  fcvt.d.s  f11, f8
  fcvt.s.d  f10, f6
  fcvt.w.s  t5, f5, rtz
  fcvt.l.d  s11, f0, rtz
  feq.d     s4, f18, f19
  flt.s     a6, f21, f19
  fclass.d  a5, f6
  csrr  a6, mscratch
  csrw  mscratch, s8
  csrrw t2, mscratch, s8
  csrrs t0, mstatus, x0
  csrrc s4, mscratch, x0
  csrrwi a7, mscratch, 12
  fence
  fence.i
  c.addi a0, -1
  c.mv   a1, a2
  c.li   a3, -24
  c.add  a4, a5
  la    s0, tdat
  li    t0, 1447
  li    a0, -694
  add   s6, a7, a1
  sub   s8, s6, s4
  xor   s11, t3, s2
  or    t3, t0, a3
  and   s8, t5, t1
  addi  s6, a6, -1285
  andi  s5, t4, 1417
  ori   a2, s3, 1572
  xori  s5, t4, -772
  slli  a6, s10, 49
  srli  s9, a3, 17
  srai  a6, t1, 23
  sllw  a0, s3, t5
  sraw  a2, a2, s3
  slt   s10, s5, s11
  sltu  a1, t2, t3
  sltiu s7, s3, 2038
  lui   s9, 0xf8616
  auipc t5, 0x26
  addw  s11, a1, a3
  subw  a1, t3, s11
  addiw s2, s2, -497
  mul   a3, t5, a3
  mulh  t0, s7, a6
  mulhu s5, s6, t5
  mulw  t4, t0, t4
  div   s8, s2, s3
  divu  a1, s11, t2
  rem   a1, s3, t0
  remu  t5, t3, t6
  divw  t0, t1, s9
  remw  a7, a4, s6
  sd    a1, 0(s0)
  ld    t1, 0(s0)
  sw    s5, 0(s0)
  lw    t0, 0(s0)
  lwu   a6, 0(s0)
  lh    t2, 0(s0)
  lbu   s6, 0(s0)
  lr.d      a7, (s0)
  sc.d      s8, a0, (s0)
  amoadd.w  s11, s5, (s0)
  amoswap.d s2, s7, (s0)
  amoand.w  t1, s5, (s0)
  amoor.d   s4, a7, (s0)
  amoxor.w  s7, a2, (s0)
  amomax.d  s5, a2, (s0)
  amominu.w t6, s9, (s0)
  fmv.w.x   f1, t1
  fmv.d.x   f5, a7
  fadd.s    f2, f9, f7
  fsub.s    f2, f5, f11
  fmul.s    f5, f11, f5
  fdiv.s    f7, f11, f21
  fmin.s    f5, f6, f7
  fmax.s    f8, f2, f21
  fsgnj.s   f20, f1, f18
  fadd.d    f3, f20, f19
  fsub.d    f21, f7, f2
  fmul.d    f5, f20, f3
  fdiv.d    f10, f10, f1
  fsqrt.d   f4, f18
  fmadd.d   f10, f3, f18, f3
  fcvt.s.w  f3, a1
  fcvt.d.w  f11, t4
  fcvt.d.s  f19, f11
  fcvt.s.d  f19, f20
  fcvt.w.s  a6, f11, rtz
  fcvt.l.d  s11, f11, rtz
  feq.d     s9, f8, f3
  flt.s     s2, f19, f19
  fclass.d  t5, f8
  csrr  a0, mscratch
  csrw  mscratch, a3
  csrrw s3, mscratch, s4
  csrrs a3, mstatus, x0
  csrrc t2, mscratch, x0
  csrrwi s9, mscratch, 7
  fence
  fence.i
  c.addi a0, -21
  c.mv   a1, a2
  c.li   a3, -18
  c.add  a4, a5
  la    s0, tdat
  li    a4, 1387
  li    t6, 624
  add   t0, s7, a5
  sub   t2, s7, t6
  xor   a7, a6, s7
  or    a5, s5, a0
  and   a7, s11, t3
  addi  s8, a2, -807
  andi  t0, a6, 1544
  ori   s7, s5, 414
  xori  s4, t0, -1952
  slli  a0, t6, 53
  srli  s8, s8, 17
  srai  t2, s5, 45
  sllw  a0, s10, t1
  sraw  a1, s3, s2
  slt   a3, t3, s6
  sltu  a7, t5, s5
  sltiu t6, s7, 2
  lui   s6, 0x9640
  auipc s3, 0x75
  addw  a1, s6, a5
  subw  s5, t5, a1
  addiw a7, a2, -892
  mul   a3, s7, s6
  mulh  t5, s11, s10
  mulhu t6, s8, a3
  mulw  s9, s2, t2
  div   a4, s8, a3
  divu  s7, s7, s10
  rem   a7, s4, s2
  remu  s11, s3, a1
  divw  a6, s8, s11
  remw  s8, s11, t5
  sd    t2, 0(s0)
  ld    a0, 0(s0)
  sw    a4, 0(s0)
  lw    a1, 0(s0)
  lwu   s5, 0(s0)
  lh    t4, 0(s0)
  lbu   t5, 0(s0)
  lr.d      t5, (s0)
  sc.d      a7, t4, (s0)
  amoadd.w  s5, t6, (s0)
  amoswap.d s3, s8, (s0)
  amoand.w  a7, a3, (s0)
  amoor.d   s6, s4, (s0)
  amoxor.w  s5, s9, (s0)
  amomax.d  s6, s2, (s0)
  amominu.w t1, a4, (s0)
  fmv.w.x   f18, a6
  fmv.d.x   f4, a7
  fadd.s    f11, f19, f6
  fsub.s    f5, f10, f6
  fmul.s    f8, f18, f6
  fdiv.s    f18, f1, f21
  fmin.s    f0, f21, f0
  fmax.s    f2, f6, f4
  fsgnj.s   f20, f20, f5
  fadd.d    f21, f21, f7
  fsub.d    f18, f18, f0
  fmul.d    f20, f10, f3
  fdiv.d    f19, f1, f20
  fsqrt.d   f2, f8
  fmadd.d   f19, f5, f2, f8
  fcvt.s.w  f9, t0
  fcvt.d.w  f6, s3
  fcvt.d.s  f20, f4
  fcvt.s.d  f4, f3
  fcvt.w.s  s10, f21, rtz
  fcvt.l.d  t6, f2, rtz
  feq.d     a0, f21, f9
  flt.s     s9, f21, f2
  fclass.d  a1, f9
  csrr  a7, mscratch
  csrw  mscratch, a0
  csrrw t4, mscratch, t0
  csrrs s4, mstatus, x0
  csrrc a0, mscratch, x0
  csrrwi t6, mscratch, 2
  fence
  fence.i
  c.addi a0, -25
  c.mv   a1, a2
  c.li   a3, -24
  c.add  a4, a5
  la    s0, tdat
  li    t5, 2035
  li    a0, -1272
  add   a4, a3, s10
  sub   a1, t1, s9
  xor   t2, t4, a0
  or    s4, s11, s9
  and   t4, t1, s10
  addi  s6, a7, 1987
  andi  t0, s4, 526
  ori   t4, a4, 1115
  xori  a3, s6, -868
  slli  s10, t5, 51
  srli  s6, a4, 14
  srai  t3, t3, 52
  sllw  t3, a6, t1
  sraw  a6, a5, s6
  slt   s11, a0, a2
  sltu  a4, t1, a3
  sltiu s2, s11, 1645
  lui   t1, 0x22b0d
  auipc s7, 0xf8
  addw  a3, a0, t1
  subw  s6, a1, s8
  addiw t3, t1, -1211
  mul   t0, s2, a4
  mulh  a7, a3, s5
  mulhu a0, a1, s3
  mulw  a2, t1, a7
  div   t3, a4, a4
  divu  s8, t2, t6
  rem   t2, s10, a4
  remu  s2, t0, s6
  divw  t5, a7, s6
  remw  s6, s10, a3
  sd    a4, 8(s0)
  ld    a0, 8(s0)
  sw    t6, 8(s0)
  lw    t6, 8(s0)
  lwu   s8, 8(s0)
  lh    a5, 8(s0)
  lbu   t6, 8(s0)
  lr.d      a5, (s0)
  sc.d      a3, s7, (s0)
  amoadd.w  t6, a0, (s0)
  amoswap.d a6, t5, (s0)
  amoand.w  a4, s5, (s0)
  amoor.d   s2, s10, (s0)
  amoxor.w  t1, a7, (s0)
  amomax.d  s8, s5, (s0)
  amominu.w s10, s2, (s0)
  fmv.w.x   f6, a3
  fmv.d.x   f20, t6
  fadd.s    f5, f20, f18
  fsub.s    f21, f10, f2
  fmul.s    f3, f8, f11
  fdiv.s    f0, f19, f19
  fmin.s    f5, f21, f1
  fmax.s    f3, f18, f11
  fsgnj.s   f21, f7, f11
  fadd.d    f8, f5, f0
  fsub.d    f6, f2, f6
  fmul.d    f7, f2, f4
  fdiv.d    f6, f19, f10
  fsqrt.d   f2, f20
  fmadd.d   f6, f20, f6, f3
  fcvt.s.w  f11, s10
  fcvt.d.w  f6, s5
  fcvt.d.s  f5, f1
  fcvt.s.d  f3, f8
  fcvt.w.s  a3, f2, rtz
  fcvt.l.d  t1, f6, rtz
  feq.d     s10, f8, f19
  flt.s     s5, f11, f8
  fclass.d  s7, f11
  csrr  s3, mscratch
  csrw  mscratch, t1
  csrrw t2, mscratch, a2
  csrrs t3, mstatus, x0
  csrrc t4, mscratch, x0
  csrrwi a1, mscratch, 18
  fence
  fence.i
  c.addi a0, 11
  c.mv   a1, a2
  c.li   a3, 2
  c.add  a4, a5
  la    s0, tdat
  li    t2, 1852
  li    s9, -927
  add   s11, t6, s6
  sub   s5, a6, s4
  xor   a0, a5, a4
  or    t6, s6, t0
  and   s5, t6, t0
  addi  t4, a2, -626
  andi  s2, s8, 1969
  ori   s9, s11, 1189
  xori  s5, t3, 995
  slli  s7, a4, 46
  srli  t5, s8, 21
  srai  a4, s11, 41
  sllw  a2, s7, s4
  sraw  s3, s11, s11
  slt   s8, t6, s7
  sltu  s8, s10, s3
  sltiu t1, s3, 1813
  lui   s8, 0xa8e56
  auipc a7, 0x70
  addw  s3, t3, s6
  subw  s10, s5, a5
  addiw t5, t5, -1276
  mul   t6, t3, a7
  mulh  a2, a0, s8
  mulhu a7, t5, a7
  mulw  s5, s10, t5
  div   t0, s7, s8
  divu  a4, s3, a0
  rem   s3, t3, s11
  remu  t3, t5, t6
  divw  a1, s9, a2
  remw  a7, a3, s6
  sd    s11, 8(s0)
  ld    s9, 8(s0)
  sw    s8, 8(s0)
  lw    s6, 8(s0)
  lwu   t2, 8(s0)
  lh    s11, 8(s0)
  lbu   s5, 8(s0)
  lr.d      s5, (s0)
  sc.d      a0, a1, (s0)
  amoadd.w  a0, s7, (s0)
  amoswap.d s8, s7, (s0)
  amoand.w  s5, a3, (s0)
  amoor.d   a4, a4, (s0)
  amoxor.w  t0, s4, (s0)
  amomax.d  s8, t2, (s0)
  amominu.w s3, a0, (s0)
  fmv.w.x   f0, s10
  fmv.d.x   f5, a6
  fadd.s    f21, f2, f4
  fsub.s    f8, f6, f19
  fmul.s    f2, f9, f11
  fdiv.s    f9, f9, f18
  fmin.s    f2, f2, f18
  fmax.s    f20, f6, f20
  fsgnj.s   f11, f3, f3
  fadd.d    f9, f21, f9
  fsub.d    f11, f9, f10
  fmul.d    f10, f3, f6
  fdiv.d    f19, f7, f20
  fsqrt.d   f18, f1
  fmadd.d   f21, f8, f2, f1
  fcvt.s.w  f3, a4
  fcvt.d.w  f7, s6
  fcvt.d.s  f5, f8
  fcvt.s.d  f11, f21
  fcvt.w.s  a0, f5, rtz
  fcvt.l.d  a7, f5, rtz
  feq.d     t0, f3, f11
  flt.s     s9, f0, f3
  fclass.d  s11, f6
  csrr  s2, mscratch
  csrw  mscratch, s3
  csrrw s2, mscratch, a5
  csrrs a7, mstatus, x0
  csrrc t4, mscratch, x0
  csrrwi s3, mscratch, 12
  fence
  fence.i
  c.addi a0, -32
  c.mv   a1, a2
  c.li   a3, 11
  c.add  a4, a5
  la    s0, tdat
  li    a6, 387
  li    a2, -1948
  add   t6, t3, a3
  sub   t1, s4, s5
  xor   t2, s3, s3
  or    t4, a3, a1
  and   s7, a0, t6
  addi  s2, a5, -1276
  andi  a3, a3, 339
  ori   t2, t0, 847
  xori  s4, a1, -270
  slli  t3, s5, 0
  srli  t2, a0, 18
  srai  t4, a5, 4
  sllw  s8, a7, s4
  sraw  a6, s5, t2
  slt   s10, s5, a3
  sltu  s6, a5, s8
  sltiu s8, t5, 1811
  lui   s7, 0x21592
  auipc a6, 0xe9
  addw  a1, t6, t6
  subw  a2, s11, a2
  addiw s6, s11, -1594
  mul   s2, s3, t3
  mulh  t2, s8, t2
  mulhu s5, t5, a7
  mulw  t4, s7, s10
  div   s3, s9, a6
  divu  s6, a5, a1
  rem   s5, a0, s9
  remu  a0, s9, s4
  divw  t1, a5, a2
  remw  t2, s6, s3
  sd    s8, 8(s0)
  ld    a3, 8(s0)
  sw    a6, 8(s0)
  lw    t0, 8(s0)
  lwu   s9, 8(s0)
  lh    t2, 8(s0)
  lbu   t1, 8(s0)
  lr.d      t0, (s0)
  sc.d      s2, s7, (s0)
  amoadd.w  a1, t6, (s0)
  amoswap.d s7, t2, (s0)
  amoand.w  t6, s7, (s0)
  amoor.d   a4, a3, (s0)
  amoxor.w  t4, t1, (s0)
  amomax.d  s8, t6, (s0)
  amominu.w t6, t1, (s0)
  fmv.w.x   f3, t4
  fmv.d.x   f11, t5
  fadd.s    f2, f0, f9
  fsub.s    f10, f10, f1
  fmul.s    f4, f21, f19
  fdiv.s    f9, f9, f7
  fmin.s    f10, f5, f11
  fmax.s    f7, f18, f10
  fsgnj.s   f1, f10, f11
  fadd.d    f0, f9, f18
  fsub.d    f18, f6, f4
  fmul.d    f20, f3, f2
  fdiv.d    f21, f19, f7
  fsqrt.d   f21, f9
  fmadd.d   f6, f21, f7, f0
  fcvt.s.w  f5, s5
  fcvt.d.w  f0, t1
  fcvt.d.s  f19, f5
  fcvt.s.d  f4, f2
  fcvt.w.s  a4, f3, rtz
  fcvt.l.d  a4, f21, rtz
  feq.d     t0, f20, f1
  flt.s     a1, f4, f19
  fclass.d  t4, f1
  csrr  s8, mscratch
  csrw  mscratch, s7
  csrrw s2, mscratch, s2
  csrrs t6, mstatus, x0
  csrrc s7, mscratch, x0
  csrrwi t1, mscratch, 24
  fence
  fence.i
  c.addi a0, -15
  c.mv   a1, a2
  c.li   a3, -16
  c.add  a4, a5
  la    s0, tdat
  li    a1, 371
  li    a3, -1261
  add   t6, t4, t4
  sub   a7, s9, a7
  xor   t2, t0, t0
  or    t0, s4, s2
  and   a0, t2, t5
  addi  s5, t1, -54
  andi  a5, a4, 1086
  ori   a5, a1, 1808
  xori  s10, s4, 761
  slli  a3, s10, 30
  srli  a7, t6, 23
  srai  s2, a1, 9
  sllw  t1, t6, a2
  sraw  t2, t0, a1
  slt   t2, s3, s11
  sltu  a5, s10, t3
  sltiu a7, a3, 1378
  lui   s10, 0x2842c
  auipc s10, 0x11
  addw  s5, s2, t3
  subw  s10, s3, t6
  addiw a2, a7, 1737
  mul   a1, s8, a2
  mulh  s9, t3, a0
  mulhu s7, s9, t0
  mulw  t5, s9, t2
  div   t2, s11, s3
  divu  t4, a7, t0
  rem   s5, a3, t4
  remu  s8, s11, a0
  divw  a7, s8, t0
  remw  s2, s4, s8
  sd    s6, 8(s0)
  ld    a6, 8(s0)
  sw    a5, 8(s0)
  lw    s9, 8(s0)
  lwu   t4, 8(s0)
  lh    s8, 8(s0)
  lbu   t4, 8(s0)
  lr.d      s5, (s0)
  sc.d      t1, s10, (s0)
  amoadd.w  s7, t0, (s0)
  amoswap.d t1, a5, (s0)
  amoand.w  a4, a2, (s0)
  amoor.d   t1, t0, (s0)
  amoxor.w  t3, s7, (s0)
  amomax.d  s7, t5, (s0)
  amominu.w a5, a5, (s0)
  fmv.w.x   f21, t0
  fmv.d.x   f9, s3
  fadd.s    f3, f19, f21
  fsub.s    f6, f8, f3
  fmul.s    f20, f18, f0
  fdiv.s    f6, f6, f6
  fmin.s    f5, f2, f3
  fmax.s    f2, f18, f2
  fsgnj.s   f5, f2, f3
  fadd.d    f0, f2, f11
  fsub.d    f6, f18, f18
  fmul.d    f10, f21, f2
  fdiv.d    f9, f20, f19
  fsqrt.d   f18, f2
  fmadd.d   f9, f4, f18, f6
  fcvt.s.w  f19, a6
  fcvt.d.w  f5, s2
  fcvt.d.s  f4, f6
  fcvt.s.d  f4, f7
  fcvt.w.s  s10, f6, rtz
  fcvt.l.d  s9, f5, rtz
  feq.d     t2, f10, f3
  flt.s     t5, f20, f9
  fclass.d  a5, f21
  csrr  a2, mscratch
  csrw  mscratch, s11
  csrrw s2, mscratch, a6
  csrrs a6, mstatus, x0
  csrrc s8, mscratch, x0
  csrrwi s5, mscratch, 17
  fence
  fence.i
  c.addi a0, 2
  c.mv   a1, a2
  c.li   a3, 20
  c.add  a4, a5
  la    s0, tdat
  li    s8, 1604
  li    t2, -42
  add   s5, s5, a7
  sub   s4, s2, s4
  xor   a1, s4, s2
  or    s8, a6, a4
  and   s3, s4, a2
  addi  t5, t4, 1810
  andi  t0, a6, 252
  ori   a2, s6, 1201
  xori  a1, t5, 1678
  slli  a6, t0, 21
  srli  t6, t5, 40
  srai  s10, s11, 51
  sllw  a5, t1, s10
  sraw  t2, s11, a3
  slt   a4, t4, a0
  sltu  s8, a5, a6
  sltiu s10, a1, 509
  lui   a3, 0x691c9
  auipc s6, 0xc
  addw  s11, a7, a6
  subw  a2, a0, t2
  addiw t4, s6, -29
  mul   t3, s5, t0
  mulh  t2, a2, a2
  mulhu s7, s7, s10
  mulw  t3, t2, s11
  div   s7, s8, t0
  divu  s9, a0, s3
  rem   a4, s2, a6
  remu  t6, s2, s7
  divw  a4, s5, a1
  remw  a7, a3, a2
  sd    s9, 0(s0)
  ld    t3, 0(s0)
  sw    t6, 0(s0)
  lw    a6, 0(s0)
  lwu   a1, 0(s0)
  lh    a6, 0(s0)
  lbu   a1, 0(s0)
  lr.d      a6, (s0)
  sc.d      a6, s9, (s0)
  amoadd.w  s10, s5, (s0)
  amoswap.d t1, s10, (s0)
  amoand.w  s7, a0, (s0)
  amoor.d   s3, a4, (s0)
  amoxor.w  t2, t0, (s0)
  amomax.d  s3, a2, (s0)
  amominu.w s9, t4, (s0)
  fmv.w.x   f6, a0
  fmv.d.x   f20, s5
  fadd.s    f6, f19, f1
  fsub.s    f11, f4, f10
  fmul.s    f21, f11, f20
  fdiv.s    f1, f18, f3
  fmin.s    f7, f18, f7
  fmax.s    f2, f10, f11
  fsgnj.s   f7, f21, f19
  fadd.d    f8, f5, f5
  fsub.d    f4, f0, f18
  fmul.d    f21, f5, f6
  fdiv.d    f21, f2, f7
  fsqrt.d   f0, f7
  fmadd.d   f7, f9, f4, f10
  fcvt.s.w  f2, a2
  fcvt.d.w  f1, s3
  fcvt.d.s  f0, f3
  fcvt.s.d  f0, f3
  fcvt.w.s  t0, f19, rtz
  fcvt.l.d  a1, f8, rtz
  feq.d     s7, f11, f18
  flt.s     t6, f6, f18
  fclass.d  a1, f10
  csrr  t4, mscratch
  csrw  mscratch, a0
  csrrw s5, mscratch, s6
  csrrs a3, mstatus, x0
  csrrc t6, mscratch, x0
  csrrwi t5, mscratch, 4
  fence
  fence.i
  c.addi a0, 22
  c.mv   a1, a2
  c.li   a3, 25
  c.add  a4, a5
  la    s0, tdat
  li    s7, 265
  li    s9, 1405
  add   s4, a4, t4
  sub   a3, s9, a4
  xor   a7, a4, a3
  or    s6, s5, s5
  and   a7, s11, t6
  addi  a5, a1, 1805
  andi  s9, t3, 428
  ori   t6, a6, 278
  xori  s5, t5, 1916
  slli  a1, s2, 33
  srli  t6, s6, 22
  srai  s7, s7, 31
  sllw  s3, t3, s3
  sraw  a1, t6, s7
  slt   t2, a6, a0
  sltu  a3, a1, s2
  sltiu t6, s5, 569
  lui   a5, 0xc346e
  auipc a5, 0xf8
  addw  t2, s2, s3
  subw  t5, t6, a7
  addiw s6, s3, 1733
  mul   a0, t1, t5
  mulh  a2, a5, s11
  mulhu a3, s11, a5
  mulw  a2, s2, t3
  div   s3, s2, s8
  divu  s11, a5, t4
  rem   s9, a2, a4
  remu  s2, s3, s5
  divw  s10, s9, s4
  remw  t6, s11, s2
  sd    a1, 0(s0)
  ld    a5, 0(s0)
  sw    s2, 0(s0)
  lw    s8, 0(s0)
  lwu   a2, 0(s0)
  lh    s6, 0(s0)
  lbu   t5, 0(s0)
  lr.d      s10, (s0)
  sc.d      t5, a6, (s0)
  amoadd.w  s9, s9, (s0)
  amoswap.d s3, t2, (s0)
  amoand.w  s4, t4, (s0)
  amoor.d   s10, s7, (s0)
  amoxor.w  t1, s4, (s0)
  amomax.d  s4, a7, (s0)
  amominu.w t1, s11, (s0)
  fmv.w.x   f5, s7
  fmv.d.x   f4, s10
  fadd.s    f0, f0, f4
  fsub.s    f4, f1, f9
  fmul.s    f8, f1, f8
  fdiv.s    f6, f8, f1
  fmin.s    f20, f5, f10
  fmax.s    f3, f0, f10
  fsgnj.s   f19, f20, f1
  fadd.d    f6, f20, f5
  fsub.d    f19, f5, f19
  fmul.d    f4, f11, f4
  fdiv.d    f2, f3, f8
  fsqrt.d   f19, f3
  fmadd.d   f20, f11, f5, f21
  fcvt.s.w  f11, s7
  fcvt.d.w  f2, s5
  fcvt.d.s  f9, f18
  fcvt.s.d  f8, f10
  fcvt.w.s  a5, f3, rtz
  fcvt.l.d  a5, f20, rtz
  feq.d     t1, f21, f0
  flt.s     s7, f2, f7
  fclass.d  s5, f5
  csrr  s9, mscratch
  csrw  mscratch, s3
  csrrw a0, mscratch, s10
  csrrs a1, mstatus, x0
  csrrc a0, mscratch, x0
  csrrwi s9, mscratch, 8
  fence
  fence.i
  c.addi a0, -27
  c.mv   a1, a2
  c.li   a3, 25
  c.add  a4, a5
  la    s0, tdat
  li    a1, 1185
  li    a5, 74
  add   s4, s2, s9
  sub   s4, s6, t6
  xor   a2, a5, a4
  or    a6, a2, s4
  and   s6, s5, a6
  addi  s3, t2, -1894
  andi  s3, a4, 719
  ori   a4, s11, 958
  xori  s9, s7, -1072
  slli  t2, t4, 59
  srli  s4, t5, 41
  srai  s4, t2, 36
  sllw  s3, s7, s5
  sraw  s11, a3, t1
  slt   t5, a3, t4
  sltu  t4, s6, t1
  sltiu a0, t0, 174
  lui   a2, 0x56d29
  auipc t3, 0x6a
  addw  a1, s2, s4
  subw  t0, s11, s4
  addiw t6, s7, 1381
  mul   t0, a7, a1
  mulh  t0, a4, s8
  mulhu s3, s4, t5
  mulw  s2, s2, s7
  div   t4, t0, s6
  divu  t1, a5, t3
  rem   s3, a7, t1
  remu  a4, a1, s5
  divw  t6, s10, t4
  remw  s10, a5, a0
  sd    a4, 0(s0)
  ld    s10, 0(s0)
  sw    t1, 0(s0)
  lw    s11, 0(s0)
  lwu   a6, 0(s0)
  lh    a3, 0(s0)
  lbu   s9, 0(s0)
  lr.d      t5, (s0)
  sc.d      s2, t3, (s0)
  amoadd.w  s6, s3, (s0)
  amoswap.d t3, a4, (s0)
  amoand.w  t3, s8, (s0)
  amoor.d   a6, t1, (s0)
  amoxor.w  a3, a5, (s0)
  amomax.d  t2, s2, (s0)
  amominu.w t4, s8, (s0)
  fmv.w.x   f5, a7
  fmv.d.x   f2, a1
  fadd.s    f1, f5, f9
  fsub.s    f20, f6, f4
  fmul.s    f4, f5, f9
  fdiv.s    f0, f21, f9
  fmin.s    f9, f10, f6
  fmax.s    f4, f18, f21
  fsgnj.s   f18, f1, f4
  fadd.d    f7, f3, f2
  fsub.d    f2, f7, f3
  fmul.d    f2, f0, f8
  fdiv.d    f18, f9, f5
  fsqrt.d   f21, f11
  fmadd.d   f4, f21, f9, f3
  fcvt.s.w  f7, s9
  fcvt.d.w  f3, s3
  fcvt.d.s  f18, f7
  fcvt.s.d  f19, f10
  fcvt.w.s  a4, f7, rtz
  fcvt.l.d  s11, f1, rtz
  feq.d     a4, f7, f0
  flt.s     a2, f18, f1
  fclass.d  s2, f20
  csrr  a1, mscratch
  csrw  mscratch, t5
  csrrw t2, mscratch, s10
  csrrs s2, mstatus, x0
  csrrc a6, mscratch, x0
  csrrwi t1, mscratch, 0
  fence
  fence.i
  c.addi a0, -31
  c.mv   a1, a2
  c.li   a3, -15
  c.add  a4, a5
  la    s0, tdat
  li    s6, 676
  li    t6, 1613
  add   a2, t1, s3
  sub   s6, t3, s5
  xor   s10, s7, t0
  or    s4, t1, s4
  and   t1, a5, s3
  addi  s9, t4, -1514
  andi  t4, t0, 1116
  ori   t2, t0, 807
  xori  t6, a2, -1579
  slli  t5, a5, 22
  srli  s8, t6, 0
  srai  t6, t6, 49
  sllw  t3, s5, s3
  sraw  a0, a6, s5
  slt   t6, s5, a0
  sltu  s8, t0, s2
  sltiu s10, a6, 901
  lui   t6, 0x56db6
  auipc a3, 0xf
  addw  a4, s4, s11
  subw  a1, t3, s2
  addiw t2, s11, -877
  mul   a4, a1, t6
  mulh  s4, a6, s4
  mulhu a1, a1, t5
  mulw  s2, s4, s8
  div   a3, s6, s2
  divu  s2, s2, a7
  rem   s4, t5, t3
  remu  t0, a7, a4
  divw  a0, t6, t5
  remw  a4, s6, a6
  sd    s11, 8(s0)
  ld    t5, 8(s0)
  sw    t1, 8(s0)
  lw    a1, 8(s0)
  lwu   t4, 8(s0)
  lh    a2, 8(s0)
  lbu   a3, 8(s0)
  lr.d      s8, (s0)
  sc.d      t5, t3, (s0)
  amoadd.w  a6, s11, (s0)
  amoswap.d t4, s7, (s0)
  amoand.w  s4, t5, (s0)
  amoor.d   a7, s3, (s0)
  amoxor.w  s7, s5, (s0)
  amomax.d  s11, s3, (s0)
  amominu.w s5, s7, (s0)
  fmv.w.x   f4, a7
  fmv.d.x   f2, s10
  fadd.s    f9, f8, f1
  fsub.s    f10, f20, f7
  fmul.s    f3, f19, f11
  fdiv.s    f21, f21, f10
  fmin.s    f7, f9, f7
  fmax.s    f6, f7, f2
  fsgnj.s   f7, f11, f8
  fadd.d    f5, f19, f0
  fsub.d    f2, f2, f10
  fmul.d    f2, f19, f4
  fdiv.d    f18, f7, f10
  fsqrt.d   f8, f19
  fmadd.d   f4, f9, f4, f3
  fcvt.s.w  f10, a1
  fcvt.d.w  f8, s9
  fcvt.d.s  f21, f19
  fcvt.s.d  f6, f21
  fcvt.w.s  s8, f9, rtz
  fcvt.l.d  t3, f10, rtz
  feq.d     s7, f11, f3
  flt.s     a2, f18, f5
  fclass.d  t3, f3
  csrr  t6, mscratch
  csrw  mscratch, a6
  csrrw s8, mscratch, a5
  csrrs s7, mstatus, x0
  csrrc t1, mscratch, x0
  csrrwi a7, mscratch, 26
  fence
  fence.i
  c.addi a0, -28
  c.mv   a1, a2
  c.li   a3, 22
  c.add  a4, a5
  la    s0, tdat
  li    t2, 1269
  li    t4, 91
  add   s6, a7, s8
  sub   s3, t4, s6
  xor   t0, a7, t0
  or    a7, a3, a4
  and   a5, a4, t5
  addi  s5, s9, -794
  andi  a1, a3, 1523
  ori   a3, s7, 1026
  xori  s3, s4, 156
  slli  s11, t0, 42
  srli  a7, t4, 17
  srai  a1, s11, 15
  sllw  t4, a6, s7
  sraw  a6, s4, s4
  slt   a1, s5, s9
  sltu  t2, a2, s11
  sltiu s5, a4, 936
  lui   a3, 0x8106f
  auipc a7, 0xb7
  addw  s4, t6, s11
  subw  s5, s7, s7
  addiw t1, s8, -1441
  mul   a0, s2, s6
  mulh  s2, a3, s3
  mulhu t0, t2, t4
  mulw  a2, t3, a6
  div   t6, a7, t3
  divu  s3, a2, s4
  rem   s3, t6, s6
  remu  a7, a4, t2
  divw  s5, s4, a6
  remw  t6, t2, a2
  sd    s2, 0(s0)
  ld    s3, 0(s0)
  sw    t0, 0(s0)
  lw    s10, 0(s0)
  lwu   a7, 0(s0)
  lh    a5, 0(s0)
  lbu   t1, 0(s0)
  lr.d      t5, (s0)
  sc.d      a6, s9, (s0)
  amoadd.w  a0, t6, (s0)
  amoswap.d s4, t6, (s0)
  amoand.w  a0, t1, (s0)
  amoor.d   s10, s6, (s0)
  amoxor.w  s3, a2, (s0)
  amomax.d  s9, a1, (s0)
  amominu.w a2, t1, (s0)
  fmv.w.x   f2, a1
  fmv.d.x   f5, s8
  fadd.s    f8, f3, f0
  fsub.s    f8, f5, f2
  fmul.s    f4, f19, f11
  fdiv.s    f3, f8, f0
  fmin.s    f9, f2, f5
  fmax.s    f2, f7, f1
  fsgnj.s   f8, f8, f10
  fadd.d    f19, f5, f11
  fsub.d    f7, f7, f2
  fmul.d    f4, f9, f11
  fdiv.d    f21, f18, f8
  fsqrt.d   f19, f11
  fmadd.d   f8, f9, f21, f21
  fcvt.s.w  f11, a3
  fcvt.d.w  f5, t1
  fcvt.d.s  f20, f8
  fcvt.s.d  f2, f20
  fcvt.w.s  s9, f3, rtz
  fcvt.l.d  s8, f4, rtz
  feq.d     s5, f18, f7
  flt.s     a3, f6, f7
  fclass.d  s2, f7
  csrr  t1, mscratch
  csrw  mscratch, a1
  csrrw a5, mscratch, a0
  csrrs s10, mstatus, x0
  csrrc t4, mscratch, x0
  csrrwi a3, mscratch, 17
  fence
  fence.i
  c.addi a0, -25
  c.mv   a1, a2
  c.li   a3, -14
  c.add  a4, a5
  la    s0, tdat
  li    a5, 774
  li    s3, -1206
  add   s6, a2, t6
  sub   s6, a1, a2
  xor   a6, s4, s10
  or    s5, t0, s11
  and   t4, s2, a4
  addi  t1, s11, -53
  andi  s8, a6, 2045
  ori   a2, s10, 2010
  xori  a7, t1, 1835
  slli  a3, s9, 60
  srli  t5, a7, 40
  srai  t0, t0, 50
  sllw  t3, a3, t3
  sraw  s5, s9, s10
  slt   s5, s3, a0
  sltu  t2, t3, t1
  sltiu a0, t4, 1253
  lui   t0, 0xe38ea
  auipc s7, 0x8c
  addw  s8, a0, s6
  subw  s5, s2, s10
  addiw s5, s4, -1474
  mul   a6, s8, s7
  mulh  a2, t0, a0
  mulhu t4, a6, t6
  mulw  t3, a7, a7
  div   s2, a5, s2
  divu  s10, s5, a0
  rem   a6, a2, t4
  remu  s3, a7, s4
  divw  a7, a2, s2
  remw  t0, t6, a3
  sd    t2, 8(s0)
  ld    s3, 8(s0)
  sw    s6, 8(s0)
  lw    a1, 8(s0)
  lwu   t0, 8(s0)
  lh    s5, 8(s0)
  lbu   s9, 8(s0)
  lr.d      s10, (s0)
  sc.d      a5, t6, (s0)
  amoadd.w  s2, a4, (s0)
  amoswap.d s6, s7, (s0)
  amoand.w  s5, s3, (s0)
  amoor.d   t2, t1, (s0)
  amoxor.w  a0, a4, (s0)
  amomax.d  t1, a4, (s0)
  amominu.w s6, a4, (s0)
  fmv.w.x   f18, a0
  fmv.d.x   f2, s11
  fadd.s    f4, f0, f6
  fsub.s    f18, f20, f19
  fmul.s    f2, f21, f6
  fdiv.s    f2, f3, f3
  fmin.s    f0, f0, f7
  fmax.s    f9, f8, f3
  fsgnj.s   f5, f8, f18
  fadd.d    f3, f5, f2
  fsub.d    f4, f1, f5
  fmul.d    f2, f0, f8
  fdiv.d    f8, f3, f10
  fsqrt.d   f11, f10
  fmadd.d   f3, f7, f8, f4
  fcvt.s.w  f10, a0
  fcvt.d.w  f0, t6
  fcvt.d.s  f1, f4
  fcvt.s.d  f0, f18
  fcvt.w.s  s8, f20, rtz
  fcvt.l.d  t3, f19, rtz
  feq.d     s4, f5, f7
  flt.s     a7, f7, f11
  fclass.d  s5, f2
  csrr  t4, mscratch
  csrw  mscratch, t1
  csrrw s5, mscratch, t1
  csrrs s8, mstatus, x0
  csrrc a0, mscratch, x0
  csrrwi s9, mscratch, 16
  fence
  fence.i
  c.addi a0, 27
  c.mv   a1, a2
  c.li   a3, -12
  c.add  a4, a5
  la    s0, tdat
  li    t0, 1612
  li    s3, 729
  add   a2, a1, s3
  sub   t5, s7, s9
  xor   t3, s3, a1
  or    s2, t5, t1
  and   t6, s3, s5
  addi  s2, a2, 291
  andi  t3, s6, 816
  ori   t6, s8, 1964
  xori  s8, t3, -607
  slli  t5, s3, 29
  srli  t0, a2, 25
  srai  a4, a7, 27
  sllw  s3, a7, t6
  sraw  s9, a3, t2
  slt   t4, a2, s9
  sltu  a1, s8, a7
  sltiu s3, s3, 1386
  lui   t3, 0x4674
  auipc s9, 0x7e
  addw  a5, s10, a6
  subw  a3, a5, s10
  addiw t1, s7, 709
  mul   t6, s8, s2
  mulh  a0, t6, a4
  mulhu s3, a3, a3
  mulw  a5, s9, s7
  div   a0, s10, s6
  divu  s2, a4, a7
  rem   t1, s3, s9
  remu  s7, a5, t1
  divw  s4, a1, s3
  remw  t3, t1, a5
  sd    t5, 0(s0)
  ld    s5, 0(s0)
  sw    s8, 0(s0)
  lw    a3, 0(s0)
  lwu   a1, 0(s0)
  lh    s10, 0(s0)
  lbu   s11, 0(s0)
  lr.d      a0, (s0)
  sc.d      a4, t2, (s0)
  amoadd.w  s7, a5, (s0)
  amoswap.d s5, s4, (s0)
  amoand.w  s6, t1, (s0)
  amoor.d   a3, a7, (s0)
  amoxor.w  t6, s4, (s0)
  amomax.d  s11, s3, (s0)
  amominu.w a3, s6, (s0)
  fmv.w.x   f6, t3
  fmv.d.x   f2, t5
  fadd.s    f3, f8, f9
  fsub.s    f18, f4, f5
  fmul.s    f7, f7, f2
  fdiv.s    f6, f8, f10
  fmin.s    f1, f19, f3
  fmax.s    f5, f0, f0
  fsgnj.s   f18, f6, f9
  fadd.d    f19, f18, f5
  fsub.d    f8, f10, f20
  fmul.d    f5, f2, f9
  fdiv.d    f9, f0, f9
  fsqrt.d   f5, f9
  fmadd.d   f0, f5, f19, f8
  fcvt.s.w  f10, a1
  fcvt.d.w  f1, t1
  fcvt.d.s  f18, f3
  fcvt.s.d  f18, f1
  fcvt.w.s  t2, f20, rtz
  fcvt.l.d  s10, f6, rtz
  feq.d     t4, f1, f0
  flt.s     a5, f8, f7
  fclass.d  s10, f3
  csrr  s4, mscratch
  csrw  mscratch, t1
  csrrw s11, mscratch, a6
  csrrs a6, mstatus, x0
  csrrc a3, mscratch, x0
  csrrwi a4, mscratch, 30
  fence
  fence.i
  c.addi a0, 31
  c.mv   a1, a2
  c.li   a3, 10
  c.add  a4, a5
  la    s0, tdat
  li    s7, 155
  li    a4, 1423
  add   s10, a4, t5
  sub   t5, s4, a6
  xor   a6, t0, s11
  or    s10, t0, t5
  and   s2, s4, a5
  addi  s7, a3, -2044
  andi  s4, a5, 765
  ori   s9, t5, 1695
  xori  a6, t5, 349
  slli  s9, t5, 47
  srli  s6, a7, 36
  srai  s9, a4, 43
  sllw  t6, t3, a7
  sraw  s2, a2, a1
  slt   a6, a2, a5
  sltu  s8, s7, s2
  sltiu a4, s3, 1298
  lui   t0, 0xc3c90
  auipc t6, 0xcd
  addw  s11, t0, t4
  subw  a1, t6, s8
  addiw s3, a7, 743
  mul   a5, a1, s11
  mulh  a2, s3, t3
  mulhu a5, t0, a2
  mulw  t0, s5, s4
  div   a1, t2, a0
  divu  t5, a7, s9
  rem   t1, s2, t3
  remu  s11, a5, a1
  divw  s9, a0, s4
  remw  s3, s3, t0
  sd    t4, 8(s0)
  ld    t5, 8(s0)
  sw    s8, 8(s0)
  lw    s2, 8(s0)
  lwu   s3, 8(s0)
  lh    s7, 8(s0)
  lbu   s3, 8(s0)
  lr.d      s11, (s0)
  sc.d      s2, s4, (s0)
  amoadd.w  s10, a3, (s0)
  amoswap.d a7, a2, (s0)
  amoand.w  a1, t3, (s0)
  amoor.d   t2, s7, (s0)
  amoxor.w  t2, s6, (s0)
  amomax.d  a2, t5, (s0)
  amominu.w s6, s9, (s0)
  fmv.w.x   f8, s9
  fmv.d.x   f10, t2
  fadd.s    f9, f2, f8
  fsub.s    f3, f4, f21
  fmul.s    f6, f21, f11
  fdiv.s    f1, f5, f11
  fmin.s    f18, f18, f11
  fmax.s    f5, f9, f3
  fsgnj.s   f11, f11, f18
  fadd.d    f0, f19, f7
  fsub.d    f6, f8, f6
  fmul.d    f2, f18, f10
  fdiv.d    f2, f4, f9
  fsqrt.d   f8, f20
  fmadd.d   f7, f19, f10, f2
  fcvt.s.w  f1, a6
  fcvt.d.w  f2, a3
  fcvt.d.s  f7, f20
  fcvt.s.d  f18, f8
  fcvt.w.s  s3, f7, rtz
  fcvt.l.d  t4, f9, rtz
  feq.d     t0, f6, f10
  flt.s     t2, f4, f18
  fclass.d  s2, f2
  csrr  a1, mscratch
  csrw  mscratch, s8
  csrrw a4, mscratch, s10
  csrrs t2, mstatus, x0
  csrrc s7, mscratch, x0
  csrrwi t1, mscratch, 30
  fence
  fence.i
  c.addi a0, -8
  c.mv   a1, a2
  c.li   a3, 18
  c.add  a4, a5
  la    s0, tdat
  li    s4, 204
  li    a4, -936
  add   s7, a0, s7
  sub   s6, a4, t3
  xor   t6, s11, t6
  or    a0, s2, a0
  and   s3, s3, t3
  addi  a3, s11, -1999
  andi  a7, t2, 858
  ori   t3, t0, 1456
  xori  a1, s10, 271
  slli  s6, a3, 40
  srli  s10, a7, 12
  srai  s5, s9, 29
  sllw  s9, a2, t2
  sraw  t2, a2, t6
  slt   t6, a7, a4
  sltu  s8, t5, a0
  sltiu a2, t2, 323
  lui   a7, 0x39690
  fcvt.q.d f2, f3
  auipc a4, 0x15
  addw  s3, s6, s7
  subw  a0, s2, s10
  addiw t3, a6, 395
  mul   s2, a4, a1
  mulh  s3, t1, t0
  mulhu a5, t2, a2
  mulw  s9, t3, s6
  div   s6, a1, s5
  divu  s5, t4, s2
  rem   t3, t2, t4
  remu  s9, t2, s10
  divw  a4, t6, t1
  remw  s11, t4, s10
  sd    a1, 0(s0)
  ld    s6, 0(s0)
  sw    a7, 0(s0)
  lw    a1, 0(s0)
  lwu   a4, 0(s0)
  lh    a7, 0(s0)
  lbu   t3, 0(s0)
  lr.d      t2, (s0)
  sc.d      s2, s2, (s0)
  amoadd.w  t2, s8, (s0)
  amoswap.d s2, s3, (s0)
  amoand.w  s7, t1, (s0)
  amoor.d   a6, t6, (s0)
  amoxor.w  s6, s8, (s0)
  amomax.d  t6, s9, (s0)
  amominu.w s8, s10, (s0)
  fmv.w.x   f20, s10
  fmv.d.x   f7, a1
  fadd.s    f9, f1, f7
  fsub.s    f0, f18, f11
  fmul.s    f21, f21, f21
  fdiv.s    f21, f18, f9
  fmin.s    f1, f6, f6
  fmax.s    f20, f6, f21
  fsgnj.s   f11, f20, f3
  fadd.d    f10, f21, f11
  fsub.d    f3, f1, f20
  fmul.d    f0, f11, f10
  fdiv.d    f7, f10, f2
  fsqrt.d   f10, f4
  fmadd.d   f0, f18, f8, f5
  fcvt.s.w  f10, s7
  fcvt.d.w  f0, t4
  fcvt.d.s  f1, f2
  fcvt.s.d  f7, f10
  fcvt.w.s  t2, f6, rtz
  fcvt.l.d  a5, f6, rtz
  feq.d     s6, f0, f1
  flt.s     a5, f8, f0
  fclass.d  s2, f4
  csrr  a4, mscratch
  csrw  mscratch, s11
  csrrw t2, mscratch, t1
  csrrs t1, mstatus, x0
  csrrc a0, mscratch, x0
  csrrwi s5, mscratch, 25
  fence
  fence.i
  c.addi a0, -5
  c.mv   a1, a2
  c.li   a3, 16
  c.add  a4, a5
  la    s0, tdat
  li    s3, 245
  li    t2, -1132
  add   s3, a0, a4
  sub   s6, t0, s5
  xor   a5, s11, s3
  or    a2, s6, a6
  and   s5, a5, t1
  addi  s4, s7, 1482
  andi  t6, t3, 558
  ori   t6, t5, 1913
  xori  t1, t3, 129
  slli  a0, s2, 58
  srli  s11, s8, 11
  srai  s7, a2, 45
  sllw  t4, a6, a1
  sraw  t1, a6, t0
  slt   s2, t3, s10
  sltu  s9, t4, t1
  sltiu a2, a2, 757
  lui   t0, 0xef659
  auipc a7, 0xfc
  addw  a0, s9, a7
  subw  s3, a4, t0
  addiw t1, s7, -1861
  mul   t6, t5, t5
  mulh  s11, t1, a0
  mulhu a7, a0, a4
  mulw  a2, s2, s2
  div   a1, t3, t6
  divu  a3, t3, a5
  rem   s8, t3, a1
  remu  s11, a5, s10
  divw  t6, a5, s8
  remw  s3, s2, a4
  sd    a0, 8(s0)
  ld    s5, 8(s0)
  sw    s7, 8(s0)
  lw    a5, 8(s0)
  lwu   a2, 8(s0)
  lh    t3, 8(s0)
  lbu   t6, 8(s0)
  lr.d      s2, (s0)
  sc.d      s3, s10, (s0)
  amoadd.w  s6, t1, (s0)
  amoswap.d s10, s2, (s0)
  amoand.w  t5, s10, (s0)
  amoor.d   s7, t2, (s0)
  amoxor.w  s2, a1, (s0)
  amomax.d  t1, a1, (s0)
  amominu.w s8, a2, (s0)
  fmv.w.x   f7, a6
  fmv.d.x   f7, a2
  fadd.s    f5, f18, f8
  fsub.s    f8, f4, f1
  fmul.s    f7, f10, f5
  fdiv.s    f21, f7, f6
  fmin.s    f21, f1, f19
  fmax.s    f1, f19, f1
  fsgnj.s   f11, f6, f2
  fadd.d    f0, f20, f0
  fsub.d    f1, f5, f20
  fmul.d    f3, f19, f9
  fdiv.d    f5, f8, f3
  fsqrt.d   f21, f8
  fmadd.d   f7, f1, f8, f11
  fcvt.s.w  f4, t1
  fcvt.d.w  f19, s3
  fcvt.d.s  f5, f4
  fcvt.s.d  f5, f4
  fcvt.w.s  s7, f2, rtz
  fcvt.l.d  a7, f1, rtz
  feq.d     s9, f2, f4
  flt.s     t1, f18, f7
  fclass.d  a4, f6
  csrr  a4, mscratch
  csrw  mscratch, t2
  csrrw s3, mscratch, a4
  csrrs s2, mstatus, x0
  csrrc t5, mscratch, x0
  csrrwi a2, mscratch, 8
  fence
  fence.i
  c.addi a0, -7
  c.mv   a1, a2
  c.li   a3, 5
  c.add  a4, a5
  la    s0, tdat
  li    a6, 138
  li    a0, 441
  add   s8, s3, t0
  sub   a3, t0, t3
  xor   a4, s4, t3
  or    s3, a5, s3
  and   t0, a2, a7
  addi  s2, s4, -1910
  andi  a1, s11, 1625
  ori   a7, t4, 1422
  xori  s3, a7, -933
  slli  s10, s5, 34
  srli  a2, a0, 2
  srai  s7, t6, 1
  sllw  a1, t3, t4
  sraw  s4, a2, a6
  slt   a4, s5, s3
  sltu  s10, t4, t2
  sltiu t6, t6, 825
  lui   a6, 0xdf63a
  auipc s4, 0x7d
  addw  s10, s6, s8
  subw  a6, a3, s11
  addiw a2, a4, -1421
  mul   s10, s5, s2
  mulh  a6, s6, t2
  mulhu t4, s4, s5
  mulw  s6, t0, s3
  div   s10, s3, a1
  divu  s7, a5, s5
  rem   s2, a3, a6
  remu  t3, a2, a6
  divw  a4, a7, t3
  remw  t6, s5, t4
  sd    t1, 0(s0)
  ld    t3, 0(s0)
  sw    s6, 0(s0)
  lw    s7, 0(s0)
  lwu   t4, 0(s0)
  lh    s7, 0(s0)
  lbu   a4, 0(s0)
  lr.d      s6, (s0)
  sc.d      a2, t4, (s0)
  amoadd.w  a3, s7, (s0)
  amoswap.d t2, s2, (s0)
  amoand.w  a2, t5, (s0)
  amoor.d   a0, s11, (s0)
  amoxor.w  a7, s2, (s0)
  amomax.d  a5, t3, (s0)
  amominu.w s7, a5, (s0)
  fmv.w.x   f10, s9
  fmv.d.x   f8, t2
  fadd.s    f18, f9, f7
  fsub.s    f8, f6, f10
  fmul.s    f20, f3, f18
  fdiv.s    f8, f9, f4
  fmin.s    f19, f21, f10
  fmax.s    f2, f7, f7
  fsgnj.s   f11, f6, f10
  fadd.d    f7, f21, f5
  fsub.d    f2, f9, f11
  fmul.d    f19, f21, f18
  fdiv.d    f5, f20, f9
  fsqrt.d   f7, f8
  fmadd.d   f20, f20, f1, f20
  fcvt.s.w  f11, s5
  fcvt.d.w  f11, s4
  fcvt.d.s  f5, f10
  fcvt.s.d  f1, f7
  fcvt.w.s  t2, f3, rtz
  fcvt.l.d  s3, f19, rtz
  feq.d     a4, f18, f8
  flt.s     t4, f0, f3
  fclass.d  t5, f8
  csrr  s5, mscratch
  csrw  mscratch, s2
  csrrw a3, mscratch, s2
  csrrs t3, mstatus, x0
  csrrc s8, mscratch, x0
  csrrwi t3, mscratch, 28
  fence
  fence.i
  c.addi a0, -30
  c.mv   a1, a2
  c.li   a3, 12
  c.add  a4, a5
  la    s0, tdat
  li    a6, 997
  li    s5, 991
  add   a3, a0, t1
  sub   a1, t3, s2
  xor   s5, s3, a6
  or    t1, a1, s9
  and   a2, s6, a7
  addi  s9, a5, 1065
  andi  a6, s6, 1543
  ori   a2, a4, 404
  xori  a2, t0, -1786
  slli  t2, a5, 50
  srli  t2, t5, 51
  srai  t3, t3, 37
  sllw  s11, a5, s9
  sraw  a1, t6, s11
  slt   t6, t6, s9
  sltu  a5, t1, s6
  sltiu a7, t4, 489
  lui   a5, 0x85f69
  auipc s8, 0xa3
  addw  s6, s7, a3
  subw  s11, s6, s3
  addiw a1, s5, -1382
  mul   a3, a3, t6
  mulh  a0, t6, s9
  mulhu t4, t2, s4
  mulw  t3, t5, s4
  div   a4, a7, s11
  divu  t4, s5, s5
  rem   a7, t2, t0
  remu  s10, s10, s11
  divw  a4, s9, t6
  remw  t0, s7, s6
  sd    s2, 8(s0)
  ld    a0, 8(s0)
  sw    a6, 8(s0)
  lw    t4, 8(s0)
  lwu   s7, 8(s0)
  lh    a6, 8(s0)
  lbu   s11, 8(s0)
  lr.d      t5, (s0)
  sc.d      t6, a1, (s0)
  amoadd.w  a1, s9, (s0)
  amoswap.d a7, s5, (s0)
  amoand.w  t3, a2, (s0)
  amoor.d   s2, s6, (s0)
  amoxor.w  s10, s8, (s0)
  amomax.d  a5, s6, (s0)
  amominu.w s4, a1, (s0)
  fmv.w.x   f20, s11
  fmv.d.x   f9, t0
  fadd.s    f1, f1, f6
  fsub.s    f5, f8, f7
  fmul.s    f1, f18, f4
  fdiv.s    f5, f5, f3
  fmin.s    f10, f20, f19
  fmax.s    f18, f18, f7
  fsgnj.s   f0, f19, f21
  fadd.d    f10, f8, f4
  fsub.d    f18, f18, f8
  fmul.d    f10, f0, f2
  fdiv.d    f6, f3, f19
  fsqrt.d   f4, f5
  fmadd.d   f20, f7, f5, f8
  fcvt.s.w  f19, a2
  fcvt.d.w  f3, a7
  fcvt.d.s  f21, f0
  fcvt.s.d  f21, f18
  fcvt.w.s  s4, f21, rtz
  fcvt.l.d  s7, f3, rtz
  feq.d     t2, f7, f8
  flt.s     s9, f1, f20
  fclass.d  a4, f21
  csrr  t5, mscratch
  csrw  mscratch, a7
  csrrw s8, mscratch, a0
  csrrs s9, mstatus, x0
  csrrc t0, mscratch, x0
  csrrwi s4, mscratch, 12
  fence
  fence.i
  c.addi a0, -25
  c.mv   a1, a2
  c.li   a3, -2
  c.add  a4, a5
  la    s0, tdat
  li    t6, 269
  li    a6, 767
  add   t4, t4, t0
  sub   s11, a6, t1
  xor   a7, a3, a1
  or    a0, a4, a7
  and   t2, a3, a5
  addi  s4, t2, 1233
  andi  t5, s7, 1463
  ori   s9, a4, 1846
  xori  a7, a4, 1905
  slli  a6, t2, 63
  srli  a5, s5, 36
  srai  t1, t3, 24
  sllw  s2, s9, a2
  sraw  t2, s11, a0
  slt   t3, s8, s11
  sltu  t3, s5, t0
  sltiu s8, s11, 933
  lui   a3, 0x3b4b6
  auipc s6, 0x4b
  addw  a0, a0, s10
  subw  s3, a2, s4
  addiw s10, t2, -765
  mul   t1, a5, a0
  mulh  t4, s8, s6
  mulhu t0, a7, s8
  mulw  s8, a2, a7
  div   t1, t6, t3
  divu  s6, t0, s8
  rem   a5, a2, a4
  remu  t4, a2, s9
  divw  t4, a6, s8
  remw  t4, t1, s7
  sd    s5, 8(s0)
  ld    s7, 8(s0)
  sw    s9, 8(s0)
  lw    s6, 8(s0)
  lwu   s4, 8(s0)
  lh    s9, 8(s0)
  lbu   s8, 8(s0)
  lr.d      a6, (s0)
  sc.d      a3, s11, (s0)
  amoadd.w  s3, t6, (s0)
  amoswap.d t1, a0, (s0)
  amoand.w  s3, s3, (s0)
  amoor.d   a5, t1, (s0)
  amoxor.w  a2, s5, (s0)
  amomax.d  s6, a3, (s0)
  amominu.w a6, t6, (s0)
  fmv.w.x   f9, a5
  fmv.d.x   f10, a0
  fadd.s    f4, f2, f8
  fsub.s    f0, f11, f6
  fmul.s    f6, f10, f2
  fdiv.s    f9, f5, f6
  fmin.s    f20, f8, f1
  fmax.s    f20, f8, f6
  fsgnj.s   f5, f9, f1
  fadd.d    f19, f20, f21
  fsub.d    f6, f11, f20
  fmul.d    f2, f6, f7
  fdiv.d    f19, f5, f7
  fsqrt.d   f8, f20
  fmadd.d   f11, f10, f7, f11
  fcvt.s.w  f9, s9
  fcvt.d.w  f19, a1
  fcvt.d.s  f5, f9
  fcvt.s.d  f5, f11
  fcvt.w.s  s6, f2, rtz
  fcvt.l.d  t2, f8, rtz
  feq.d     s4, f19, f18
  flt.s     t3, f20, f18
  fclass.d  a3, f10
  csrr  t2, mscratch
  csrw  mscratch, s4
  csrrw t1, mscratch, t4
  csrrs a5, mstatus, x0
  csrrc s8, mscratch, x0
  csrrwi a7, mscratch, 10
  fence
  fence.i
  c.addi a0, 1
  c.mv   a1, a2
  c.li   a3, 1
  c.add  a4, a5
  la    s0, tdat
  li    t0, 1175
  li    a3, 76
  add   t5, a5, s2
  sub   a3, s5, a2
  xor   s10, t3, a1
  or    a3, a0, a3
  and   t5, s3, s6
  addi  s6, a4, 1161
  andi  s3, s7, 561
  ori   t5, a7, 28
  xori  t6, t3, -512
  slli  t6, t2, 63
  srli  t3, a1, 26
  srai  s4, a0, 41
  sllw  s4, s3, t5
  sraw  t3, s4, s11
  slt   t3, t6, a2
  sltu  s4, t4, t1
  sltiu s7, t4, 760
  lui   a7, 0x5e64f
  auipc t0, 0xf0
  addw  t4, s2, t2
  subw  s11, a5, t6
  addiw t1, t2, 1635
  mul   s8, a7, a1
  mulh  t3, t1, t3
  mulhu t1, t1, s5
  mulw  s7, t2, s3
  div   a7, a2, s5
  divu  a7, t5, a2
  rem   a5, s3, a0
  remu  t6, a3, a7
  divw  s3, a7, a3
  remw  a7, a2, a5
  sd    t1, 0(s0)
  ld    s8, 0(s0)
  sw    s5, 0(s0)
  lw    a0, 0(s0)
  lwu   t5, 0(s0)
  lh    s3, 0(s0)
  lbu   a6, 0(s0)
  lr.d      a1, (s0)
  sc.d      s7, t2, (s0)
  amoadd.w  s2, a5, (s0)
  amoswap.d a6, a7, (s0)
  amoand.w  a6, s10, (s0)
  amoor.d   a4, s11, (s0)
  amoxor.w  s3, s3, (s0)
  amomax.d  a5, a1, (s0)
  amominu.w s8, a5, (s0)
  fmv.w.x   f8, a6
  fmv.d.x   f6, s5
  fadd.s    f0, f9, f1
  fsub.s    f0, f3, f9
  fmul.s    f9, f9, f0
  fdiv.s    f8, f21, f0
  fmin.s    f4, f21, f11
  fmax.s    f9, f9, f21
  fsgnj.s   f19, f11, f1
  fadd.d    f2, f5, f3
  fsub.d    f18, f6, f11
  fmul.d    f11, f9, f10
  fdiv.d    f10, f9, f10
  fsqrt.d   f0, f3
  fmadd.d   f20, f19, f0, f10
  fcvt.s.w  f2, a7
  fcvt.d.w  f8, s9
  fcvt.d.s  f0, f0
  fcvt.s.d  f3, f5
  fcvt.w.s  t0, f5, rtz
  fcvt.l.d  t6, f5, rtz
  feq.d     s7, f19, f10
  flt.s     t0, f5, f5
  fclass.d  a5, f3
  csrr  s6, mscratch
  csrw  mscratch, t5
  csrrw a5, mscratch, s11
  csrrs t2, mstatus, x0
  csrrc s10, mscratch, x0
  csrrwi t3, mscratch, 25
  fence
  fence.i
  c.addi a0, -32
  c.mv   a1, a2
  c.li   a3, 11
  c.add  a4, a5
  la    s0, tdat
  li    s3, 1650
  li    s7, 875
  add   a2, a3, s5
  sub   t4, s11, t4
  xor   t6, s3, t5
  or    s7, a6, s9
  and   s2, s10, t2
  addi  t4, s5, 793
  andi  a1, s9, 1482
  ori   s11, a7, 4
  xori  a0, s4, -1091
  slli  t3, a4, 40
  srli  s3, a1, 29
  srai  a7, a0, 23
  sllw  s7, a6, s5
  sraw  s4, a4, s5
  slt   s10, s8, t1
  sltu  t6, s4, s3
  sltiu t3, t4, 1872
  lui   s11, 0xadbc0
  auipc a2, 0xaa
  addw  s9, s6, t3
  subw  s2, a3, a2
  addiw s2, s11, 1763
  mul   s6, s3, a6
  mulh  s8, t2, s9
  mulhu t1, s7, s3
  mulw  t4, s2, s9
  div   t6, s4, s8
  divu  s8, t2, t6
  rem   a5, t6, a3
  remu  s3, a6, s4
  divw  s3, a0, a5
  remw  a7, s8, s8
  sd    s8, 0(s0)
  ld    a2, 0(s0)
  sw    s5, 0(s0)
  lw    s5, 0(s0)
  lwu   a5, 0(s0)
  lh    s7, 0(s0)
  lbu   a4, 0(s0)
  lr.d      a2, (s0)
  sc.d      a6, s8, (s0)
  amoadd.w  s7, s8, (s0)
  amoswap.d s4, t4, (s0)
  amoand.w  s11, t1, (s0)
  amoor.d   t2, t4, (s0)
  amoxor.w  a5, t0, (s0)
  amomax.d  a1, a5, (s0)
  amominu.w s5, t5, (s0)
  fmv.w.x   f11, a0
  fmv.d.x   f10, a3
  fadd.s    f4, f1, f7
  fsub.s    f21, f5, f0
  fmul.s    f1, f5, f7
  fdiv.s    f10, f1, f3
  fmin.s    f2, f11, f0
  fmax.s    f4, f1, f7
  fsgnj.s   f1, f0, f19
  fadd.d    f5, f19, f21
  fsub.d    f4, f1, f8
  fmul.d    f2, f3, f21
  fdiv.d    f20, f20, f1
  fsqrt.d   f7, f0
  fmadd.d   f5, f4, f0, f5
  fcvt.s.w  f19, s2
  fcvt.d.w  f19, s6
  fcvt.d.s  f18, f0
  fcvt.s.d  f18, f1
  fcvt.w.s  s11, f6, rtz
  fcvt.l.d  a2, f6, rtz
  feq.d     s9, f7, f7
  flt.s     a0, f19, f20
  fclass.d  a1, f10
  csrr  a1, mscratch
  csrw  mscratch, s6
  csrrw t0, mscratch, a5
  csrrs t4, mstatus, x0
  csrrc s8, mscratch, x0
  csrrwi s9, mscratch, 3
  fence
  fence.i
  c.addi a0, 22
  c.mv   a1, a2
  c.li   a3, 23
  c.add  a4, a5
  la    s0, tdat
  li    s3, 206
  li    s5, -1033
  add   s3, a7, a6
  sub   s3, a5, a3
  xor   a3, t2, t3
  or    t0, s10, t4
  and   a2, t6, t4
  addi  s6, t5, -1298
  andi  a0, a3, 1412
  ori   s11, s10, 550
  xori  t6, t6, 338
  slli  a6, t3, 6
  srli  t4, s6, 30
  srai  s6, s3, 15
  sllw  a7, s8, s6
  sraw  s4, a2, a0
  slt   a3, t6, t1
  sltu  a7, s11, s6
  sltiu s9, t4, 396
  lui   a1, 0xd1aca
  auipc s7, 0x56
  addw  s3, a5, s5
  subw  a7, s6, s2
  addiw a6, t0, 1712
  mul   a7, a6, s9
  mulh  a6, s3, a4
  mulhu a5, s8, t2
  mulw  t5, s9, s4
  div   a3, s8, a5
  divu  a5, t4, s7
  rem   s2, a3, s9
  remu  t1, a5, s5
  divw  s11, a4, t4
  remw  s10, s5, t5
  sd    a5, 0(s0)
  ld    t2, 0(s0)
  sw    s11, 0(s0)
  lw    s9, 0(s0)
  lwu   t3, 0(s0)
  lh    t1, 0(s0)
  lbu   t6, 0(s0)
  lr.d      s8, (s0)
  sc.d      a4, t4, (s0)
  amoadd.w  s7, s4, (s0)
  amoswap.d s3, a6, (s0)
  amoand.w  a5, a4, (s0)
  amoor.d   a5, a0, (s0)
  amoxor.w  t0, t0, (s0)
  amomax.d  s7, s8, (s0)
  amominu.w t4, a0, (s0)
  fmv.w.x   f7, s11
  fmv.d.x   f5, s3
  fadd.s    f18, f3, f21
  fsub.s    f18, f9, f3
  fmul.s    f18, f2, f0
  fdiv.s    f18, f21, f6
  fmin.s    f1, f2, f21
  fmax.s    f2, f19, f1
  fsgnj.s   f4, f8, f18
  fadd.d    f11, f3, f10
  fsub.d    f1, f7, f19
  fmul.d    f2, f10, f8
  fdiv.d    f6, f11, f4
  fsqrt.d   f11, f10
  fmadd.d   f3, f2, f2, f6
  fcvt.s.w  f21, s4
  fcvt.d.w  f2, a7
  fcvt.d.s  f2, f11
  fcvt.s.d  f20, f20
  fcvt.w.s  s10, f9, rtz
  fcvt.l.d  a4, f5, rtz
  feq.d     t2, f3, f5
  flt.s     a4, f11, f2
  fclass.d  t1, f9
  csrr  t6, mscratch
  csrw  mscratch, s2
  csrrw s9, mscratch, s10
  csrrs a1, mstatus, x0
  csrrc t3, mscratch, x0
  csrrwi t5, mscratch, 21
  fence
  fence.i
  c.addi a0, -14
  c.mv   a1, a2
  c.li   a3, -23
  c.add  a4, a5
  la    s0, tdat
  li    a3, 1081
  li    s4, -92
  add   t3, s9, t6
  sub   t2, s3, a6
  xor   s5, s2, s9
  or    t4, t5, t4
  and   a6, a1, t3
  addi  s8, a0, 1683
  andi  s6, t6, 1348
  ori   t6, t0, 761
  xori  s4, s3, -1305
  slli  t3, a3, 50
  srli  a3, s4, 3
  srai  t4, t2, 31
  sllw  s8, t6, a3
  sraw  s5, s8, t4
  slt   a7, t4, t1
  sltu  s3, s2, t5
  sltiu s9, t3, 1167
  lui   t2, 0xb821a
  auipc a4, 0x84
  addw  a7, a2, t4
  subw  a3, t3, a1
  addiw a3, a4, 1616
  mul   t0, s6, a4
  mulh  s7, s3, s7
  mulhu t6, s5, a3
  mulw  s10, s10, t3
  div   t2, s11, t5
  divu  s6, a0, a2
  rem   t3, s2, a4
  remu  a3, t0, t4
  divw  t2, s4, t5
  remw  s3, a6, a7
  sd    t1, 0(s0)
  ld    s4, 0(s0)
  sw    a1, 0(s0)
  lw    t4, 0(s0)
  lwu   s10, 0(s0)
  lh    s7, 0(s0)
  lbu   t1, 0(s0)
  lr.d      s7, (s0)
  sc.d      s2, s3, (s0)
  amoadd.w  s5, t0, (s0)
  amoswap.d a2, t4, (s0)
  amoand.w  s8, a2, (s0)
  amoor.d   s2, s10, (s0)
  amoxor.w  a2, a2, (s0)
  amomax.d  t6, t0, (s0)
  amominu.w a5, a7, (s0)
  fmv.w.x   f9, a3
  fmv.d.x   f4, t4
  fadd.s    f7, f0, f9
  fsub.s    f9, f8, f20
  fmul.s    f0, f3, f2
  fdiv.s    f9, f10, f19
  fmin.s    f7, f10, f4
  fmax.s    f10, f19, f10
  fsgnj.s   f21, f5, f20
  fadd.d    f0, f3, f5
  fsub.d    f10, f20, f1
  fmul.d    f3, f4, f9
  fdiv.d    f8, f9, f8
  fsqrt.d   f19, f6
  fmadd.d   f18, f8, f6, f0
  fcvt.s.w  f10, s2
  fcvt.d.w  f9, a0
  fcvt.d.s  f0, f0
  fcvt.s.d  f7, f18
  fcvt.w.s  t5, f4, rtz
  fcvt.l.d  a0, f9, rtz
  feq.d     s6, f20, f7
  flt.s     a4, f7, f2
  fclass.d  s7, f0
  csrr  t4, mscratch
  csrw  mscratch, s11
  csrrw a4, mscratch, t4
  csrrs a3, mstatus, x0
  csrrc s10, mscratch, x0
  csrrwi s4, mscratch, 14
  fence
  fence.i
  c.addi a0, 4
  c.mv   a1, a2
  c.li   a3, 27
  c.add  a4, a5
  la    s0, tdat
  li    a6, 383
  li    t2, 426
  add   s10, s6, t1
  sub   s9, s11, s11
  xor   a0, s5, a6
  or    a3, t4, t1
  and   s6, a0, s6
  addi  s6, t3, 1477
  andi  t0, s6, 822
  ori   a2, t0, 949
  xori  s6, s9, -1405
  slli  a2, a5, 35
  srli  s3, a0, 25
  srai  a2, t2, 27
  sllw  t0, a1, s9
  sraw  a2, t6, t1
  slt   a1, t0, t6
  sltu  a3, t5, t6
  sltiu s10, a2, 1840
  lui   t0, 0x29c89
  auipc a2, 0xdf
  addw  a0, s10, a0
  subw  a3, t4, s5
  addiw a4, a7, -332
  mul   s11, s6, a0
  mulh  a0, s3, t2
  mulhu a6, s7, s7
  mulw  t5, a0, a5
  div   a3, t1, a5
  divu  a5, t1, t3
  rem   a3, t0, t0
  remu  s7, a1, t4
  divw  t4, s5, s2
  remw  a7, a2, a0
  sd    s6, 8(s0)
  ld    s7, 8(s0)
  sw    s9, 8(s0)
  lw    a1, 8(s0)
  lwu   s11, 8(s0)
  lh    s8, 8(s0)
  lbu   s8, 8(s0)
  lr.d      t6, (s0)
  sc.d      s2, a4, (s0)
  amoadd.w  s9, t0, (s0)
  amoswap.d t5, a1, (s0)
  amoand.w  t3, a6, (s0)
  amoor.d   a0, s2, (s0)
  amoxor.w  t4, a6, (s0)
  amomax.d  s6, s5, (s0)
  amominu.w t4, a1, (s0)
  fmv.w.x   f3, t3
  fmv.d.x   f5, s11
  fadd.s    f5, f20, f2
  fsub.s    f4, f10, f4
  fmul.s    f10, f5, f11
  fdiv.s    f5, f1, f1
  fmin.s    f7, f19, f3
  fmax.s    f2, f19, f6
  fsgnj.s   f21, f5, f0
  fadd.d    f2, f21, f10
  fsub.d    f20, f1, f21
  fmul.d    f8, f21, f19
  fdiv.d    f2, f20, f1
  fsqrt.d   f19, f5
  fmadd.d   f8, f3, f10, f11
  fcvt.s.w  f8, a1
  fcvt.d.w  f4, a6
  fcvt.d.s  f4, f4
  fcvt.s.d  f19, f10
  fcvt.w.s  t5, f3, rtz
  fcvt.l.d  a7, f10, rtz
  feq.d     s6, f11, f19
  flt.s     s10, f19, f3
  fclass.d  s6, f2
  csrr  s3, mscratch
  csrw  mscratch, a2
  csrrw t6, mscratch, t6
  csrrs a1, mstatus, x0
  csrrc a0, mscratch, x0
  csrrwi s2, mscratch, 29
  fence
  fence.i
  c.addi a0, 5
  c.mv   a1, a2
  c.li   a3, -17
  c.add  a4, a5
  la    s0, tdat
  li    s2, 136
  li    s4, 437
  add   a3, s4, s3
  sub   a0, a7, s9
  xor   t1, t1, s2
  or    s3, s5, t5
  and   t2, s9, s5
  addi  t3, a6, 1763
  andi  a5, t2, 2036
  ori   s5, s11, 875
  xori  t6, t1, 1838
  slli  s6, a7, 36
  srli  t1, s7, 45
  srai  a2, t4, 43
  sllw  t6, s2, s3
  sraw  t4, s6, a2
  slt   t3, s8, t0
  sltu  a6, s10, t2
  sltiu s3, t6, 1942
  lui   s3, 0x33e85
  auipc s11, 0x97
  addw  s2, a4, a3
  subw  s2, s8, a0
  addiw s2, s11, -46
  mul   t3, t3, a4
  mulh  s3, t2, t0
  mulhu s4, a6, s8
  mulw  s3, s9, s5
  div   t4, t0, s9
  divu  a2, s3, s3
  rem   s9, a3, s11
  remu  t0, s5, s3
  divw  t5, a4, s11
  remw  s11, a2, t3
  sd    t3, 0(s0)
  ld    s11, 0(s0)
  sw    s6, 0(s0)
  lw    a7, 0(s0)
  lwu   t2, 0(s0)
  lh    s8, 0(s0)
  lbu   t0, 0(s0)
  lr.d      a0, (s0)
  sc.d      s6, a0, (s0)
  amoadd.w  a6, t0, (s0)
  amoswap.d a2, t1, (s0)
  amoand.w  t1, s3, (s0)
  amoor.d   s9, t2, (s0)
  amoxor.w  s8, a4, (s0)
  amomax.d  s9, s7, (s0)
  amominu.w t2, s2, (s0)
  fmv.w.x   f10, a0
  fmv.d.x   f11, t5
  fadd.s    f10, f20, f5
  fsub.s    f5, f21, f19
  fmul.s    f10, f10, f5
  fdiv.s    f4, f7, f3
  fmin.s    f5, f4, f9
  fmax.s    f7, f2, f11
  fsgnj.s   f3, f3, f21
  fadd.d    f9, f6, f5
  fsub.d    f5, f11, f21
  fmul.d    f11, f0, f3
  fdiv.d    f2, f3, f20
  fsqrt.d   f2, f19
  fmadd.d   f20, f4, f19, f10
  fcvt.s.w  f5, t2
  fcvt.d.w  f5, a7
  fcvt.d.s  f6, f6
  fcvt.s.d  f19, f8
  fcvt.w.s  a6, f3, rtz
  fcvt.l.d  s5, f2, rtz
  feq.d     a3, f2, f0
  flt.s     a2, f21, f6
  fclass.d  s10, f20
  csrr  s5, mscratch
  csrw  mscratch, s10
  csrrw a7, mscratch, a2
  csrrs t2, mstatus, x0
  csrrc s11, mscratch, x0
  csrrwi s5, mscratch, 3
  fence
  fence.i
  c.addi a0, 10
  c.mv   a1, a2
  c.li   a3, 8
  c.add  a4, a5
  la    s0, tdat
  li    s11, 1903
  li    a5, 1217
  add   a1, s2, t4
  sub   s2, s11, s2
  xor   a6, s2, s5
  or    s2, s5, s4
  and   s11, s4, t2
  addi  s2, t4, 1226
  andi  a6, s5, 1026
  ori   t4, a0, 285
  xori  t2, a1, 1664
  slli  a5, s3, 58
  srli  a6, a0, 32
  srai  s7, s2, 28
  sllw  a2, t0, s11
  sraw  t2, s8, a3
  slt   t3, s7, s3
  sltu  t3, s7, s7
  sltiu t3, s3, 1895
  lui   s9, 0xb90a3
  auipc t4, 0x38
  addw  a2, t3, a4
  subw  t1, s2, a5
  addiw s3, s6, -1094
  mul   s5, a0, a5
  mulh  s6, s3, a3
  mulhu s9, s7, a1
  mulw  t3, s4, t0
  div   a4, s9, a7
  divu  t0, s9, s7
  rem   s10, a2, a1
  remu  s8, t3, s2
  divw  t5, t3, s4
  remw  a7, s6, s5
  sd    t0, 0(s0)
  ld    t0, 0(s0)
  sw    a3, 0(s0)
  lw    s3, 0(s0)
  lwu   s6, 0(s0)
  lh    s4, 0(s0)
  lbu   a2, 0(s0)
  lr.d      a1, (s0)
  sc.d      a7, a1, (s0)
  amoadd.w  a2, s11, (s0)
  amoswap.d s10, a6, (s0)
  amoand.w  a3, t1, (s0)
  amoor.d   s11, t3, (s0)
  amoxor.w  s4, s10, (s0)
  amomax.d  s9, s10, (s0)
  amominu.w t6, a4, (s0)
  fmv.w.x   f4, a6
  fmv.d.x   f4, a5
  fadd.s    f10, f7, f6
  fsub.s    f2, f8, f11
  fmul.s    f19, f1, f6
  fdiv.s    f9, f18, f11
  fmin.s    f9, f3, f8
  fmax.s    f11, f21, f7
  fsgnj.s   f1, f8, f5
  fadd.d    f8, f7, f5
  fsub.d    f3, f5, f7
  fmul.d    f8, f11, f8
  fdiv.d    f0, f5, f2
  fsqrt.d   f1, f9
  fmadd.d   f21, f2, f5, f21
  fcvt.s.w  f2, s5
  fcvt.d.w  f20, a5
  fcvt.d.s  f19, f10
  fcvt.s.d  f10, f0
  fcvt.w.s  a4, f11, rtz
  fcvt.l.d  t6, f2, rtz
  feq.d     a1, f9, f9
  flt.s     s10, f6, f5
  fclass.d  t6, f1
  csrr  s9, mscratch
  csrw  mscratch, t1
  csrrw s7, mscratch, a0
  csrrs t6, mstatus, x0
  csrrc a4, mscratch, x0
  csrrwi t3, mscratch, 18
  fence
  fence.i
  c.addi a0, -17
  c.mv   a1, a2
  c.li   a3, -5
  c.add  a4, a5
  la    s0, tdat
  li    s10, 44
  li    s6, -629
  add   a1, s6, s7
  sub   a6, t5, t1
  xor   a4, a2, s10
  or    s10, s2, s7
  and   s7, s10, a4
  addi  a2, s7, 580
  andi  t6, t0, 1683
  ori   s2, s5, 744
  xori  t3, s11, -775
  slli  t2, t4, 13
  srli  a2, s6, 36
  srai  a0, t6, 36
  sllw  t6, a1, a3
  sraw  a0, a0, a4
  slt   a1, s7, t2
  sltu  s7, s10, s5
  sltiu t1, s10, 1173
  lui   a0, 0x2c405
  auipc s6, 0x90
  addw  a0, t0, a3
  subw  a0, a7, s3
  addiw s8, a6, 1554
  mul   s6, t4, a7
  mulh  s11, s6, s2
  mulhu s6, a6, t0
  mulw  t2, a7, t6
  div   t1, a0, s9
  divu  t6, a5, a6
  rem   s3, s6, a0
  remu  s8, a0, a3
  divw  t6, s3, t0
  remw  a4, t6, s8
  sd    s4, 8(s0)
  ld    a4, 8(s0)
  sw    s4, 8(s0)
  lw    s9, 8(s0)
  lwu   t0, 8(s0)
  lh    s3, 8(s0)
  lbu   s3, 8(s0)
  lr.d      a3, (s0)
  sc.d      s9, s6, (s0)
  amoadd.w  s4, s8, (s0)
  amoswap.d t6, s7, (s0)
  amoand.w  s3, t0, (s0)
  amoor.d   t6, t4, (s0)
  amoxor.w  s2, s4, (s0)
  amomax.d  a2, s5, (s0)
  amominu.w a0, a1, (s0)
  fmv.w.x   f11, t3
  fmv.d.x   f0, a7
  fadd.s    f6, f1, f20
  fsub.s    f8, f9, f9
  fmul.s    f3, f19, f20
  fdiv.s    f19, f5, f6
  fmin.s    f2, f0, f18
  fmax.s    f21, f1, f20
  fsgnj.s   f5, f1, f5
  fadd.d    f21, f5, f11
  fsub.d    f19, f20, f0
  fmul.d    f10, f11, f5
  fdiv.d    f5, f6, f10
  fsqrt.d   f3, f10
  fmadd.d   f7, f1, f1, f8
  fcvt.s.w  f7, t2
  fcvt.d.w  f4, t3
  fcvt.d.s  f1, f2
  fcvt.s.d  f18, f8
  fcvt.w.s  t5, f6, rtz
  fcvt.l.d  a2, f19, rtz
  feq.d     a7, f2, f6
  flt.s     t4, f11, f20
  fclass.d  t2, f9
  csrr  a3, mscratch
  csrw  mscratch, s5
  csrrw s3, mscratch, a3
  csrrs a0, mstatus, x0
  csrrc t5, mscratch, x0
  csrrwi s9, mscratch, 8
  fence
  fence.i
  c.addi a0, -8
  c.mv   a1, a2
  c.li   a3, 5
  c.add  a4, a5
  la    s0, tdat
  li    s7, 1684
  li    t3, -1230
  add   a4, a0, s9
  sub   s6, a6, s6
  xor   t1, t6, t2
  or    s3, t2, t6
  and   s6, s2, t1
  addi  s5, t3, -846
  andi  s4, a5, 474
  ori   t1, a0, 1511
  xori  t3, a1, -1431
  slli  a6, s4, 42
  srli  s7, a5, 52
  srai  s9, t2, 37
  sllw  a1, t4, s3
  sraw  a4, t4, s4
  slt   s2, t5, t4
  sltu  s10, a3, s2
  sltiu s3, t5, 531
  lui   a5, 0x1b111
  auipc s4, 0x42
  addw  s10, s5, s6
  subw  s3, t3, a5
  addiw s9, t6, 1745
  mul   s6, s7, a0
  mulh  s11, s6, s5
  mulhu s10, t6, s11
  mulw  t2, a0, s8
  div   t1, a5, t5
  divu  a4, a7, a0
  rem   t6, a5, a0
  remu  s4, a1, a6
  divw  s9, a2, s5
  remw  s9, s5, s3
  sd    s6, 0(s0)
  ld    t0, 0(s0)
  sw    a0, 0(s0)
  lw    s9, 0(s0)
  lwu   a3, 0(s0)
  lh    a6, 0(s0)
  lbu   t4, 0(s0)
  lr.d      s2, (s0)
  sc.d      a7, t4, (s0)
  amoadd.w  s8, a0, (s0)
  amoswap.d s11, a7, (s0)
  amoand.w  a2, a6, (s0)
  amoor.d   a7, t2, (s0)
  amoxor.w  s3, t1, (s0)
  amomax.d  a3, s9, (s0)
  amominu.w t0, a3, (s0)
  fmv.w.x   f10, t5
  fmv.d.x   f3, a7
  fadd.s    f20, f10, f3
  fsub.s    f21, f6, f5
  fmul.s    f8, f11, f18
  fdiv.s    f19, f8, f9
  fmin.s    f21, f4, f8
  fmax.s    f20, f3, f19
  fsgnj.s   f21, f19, f10
  fadd.d    f19, f20, f19
  fsub.d    f11, f20, f5
  fmul.d    f18, f11, f7
  fdiv.d    f4, f21, f20
  fsqrt.d   f10, f7
  fmadd.d   f5, f3, f7, f0
  fcvt.s.w  f8, s9
  fcvt.d.w  f10, a2
  fcvt.d.s  f10, f7
  fcvt.s.d  f11, f8
  fcvt.w.s  s5, f5, rtz
  fcvt.l.d  a6, f5, rtz
  feq.d     t4, f21, f3
  flt.s     s7, f3, f7
  fclass.d  a1, f7
  csrr  t6, mscratch
  csrw  mscratch, a4
  csrrw a0, mscratch, s5
  csrrs t6, mstatus, x0
  csrrc s6, mscratch, x0
  csrrwi t4, mscratch, 20
  fence
  fence.i
  c.addi a0, 5
  c.mv   a1, a2
  c.li   a3, -29
  c.add  a4, a5
  la    s0, tdat
  li    t5, 935
  li    s9, -442
  add   t0, t6, s3
  sub   t2, a6, s11
  xor   s7, s9, s8
  or    a4, s2, s3
  and   t5, s8, t4
  addi  s9, t6, -1738
  andi  t3, s10, 1917
  ori   t5, s3, 1097
  xori  a0, s11, -1524
  slli  s6, t1, 53
  srli  t6, t6, 59
  srai  a4, s7, 18
  sllw  s10, a6, a2
  sraw  t2, a7, t5
  slt   a2, a3, a6
  sltu  a1, t2, a1
  sltiu t5, t1, 869
  lui   a6, 0x5507f
  auipc t1, 0xc
  addw  a4, a6, s7
  subw  a7, t5, a4
  addiw s10, a5, -1528
  mul   s3, s10, a2
  mulh  t6, s5, s4
  mulhu s5, t3, t4
  mulw  a3, a7, s3
  div   s8, t4, s10
  divu  s3, a4, a4
  rem   a1, t3, s2
  remu  t3, s4, s2
  divw  s5, t5, a5
  remw  a4, t6, s8
  sd    s9, 8(s0)
  ld    s10, 8(s0)
  sw    a6, 8(s0)
  lw    t4, 8(s0)
  lwu   s2, 8(s0)
  lh    a3, 8(s0)
  lbu   s4, 8(s0)
  lr.d      s4, (s0)
  sc.d      t5, a4, (s0)
  amoadd.w  t4, t1, (s0)
  amoswap.d s9, s4, (s0)
  amoand.w  s3, s8, (s0)
  amoor.d   a1, a0, (s0)
  amoxor.w  s11, a1, (s0)
  amomax.d  s4, a7, (s0)
  amominu.w s11, a5, (s0)
  fmv.w.x   f20, s2
  fmv.d.x   f5, a5
  fadd.s    f6, f4, f20
  fsub.s    f6, f20, f20
  fmul.s    f8, f21, f11
  fdiv.s    f1, f10, f7
  fmin.s    f0, f0, f4
  fmax.s    f19, f0, f4
  fsgnj.s   f6, f2, f21
  fadd.d    f10, f8, f11
  fsub.d    f18, f1, f10
  fmul.d    f0, f3, f11
  fdiv.d    f1, f4, f19
  fsqrt.d   f20, f1
  fmadd.d   f8, f3, f11, f0
  fcvt.s.w  f1, a7
  fcvt.d.w  f3, s8
  fcvt.d.s  f9, f0
  fcvt.s.d  f2, f11
  fcvt.w.s  s5, f11, rtz
  fcvt.l.d  s9, f7, rtz
  feq.d     a6, f1, f4
  flt.s     a2, f21, f0
  fclass.d  t3, f9
  csrr  t6, mscratch
  csrw  mscratch, t0
  csrrw a5, mscratch, a5
  csrrs s6, mstatus, x0
  csrrc s9, mscratch, x0
  csrrwi a2, mscratch, 12
  fence
  fence.i
  c.addi a0, -10
  c.mv   a1, a2
  c.li   a3, 19
  c.add  a4, a5
  la    s0, tdat
  li    t0, 1638
  li    a7, 1925
  add   s3, t6, s10
  sub   a6, a4, s11
  xor   a0, t6, s7
  or    s7, s2, t3
  and   s10, a7, a4
  addi  s5, s3, 1186
  andi  s6, s3, 455
  ori   a4, s2, 1695
  xori  s11, s10, -1762
  slli  s7, s10, 26
  srli  a1, s5, 16
  srai  a4, s6, 38
  sllw  s7, s2, t2
  sraw  s7, t1, t0
  slt   a6, t3, s9
  sltu  t3, a4, a3
  sltiu s7, s10, 1584
  lui   s10, 0xbc0ae
  auipc a5, 0xaa
  addw  t3, a6, a0
  subw  s11, s9, t6
  addiw t6, a7, 58
  mul   s9, a3, t6
  mulh  a5, s7, s8
  mulhu s6, t6, a0
  mulw  s2, a3, a1
  div   a6, t0, s2
  divu  s10, s7, a4
  rem   a5, s10, a3
  remu  t5, a2, s7
  divw  t2, s9, s8
  remw  a4, a2, a0
  sd    a1, 0(s0)
  ld    t6, 0(s0)
  sw    s4, 0(s0)
  lw    t3, 0(s0)
  lwu   a3, 0(s0)
  lh    a0, 0(s0)
  lbu   t2, 0(s0)
  lr.d      a6, (s0)
  sc.d      s6, t4, (s0)
  amoadd.w  s11, s3, (s0)
  amoswap.d a2, a7, (s0)
  amoand.w  s10, t2, (s0)
  amoor.d   a4, t3, (s0)
  amoxor.w  a3, a2, (s0)
  amomax.d  s5, a0, (s0)
  amominu.w s6, t5, (s0)
  fmv.w.x   f11, t1
  fmv.d.x   f3, a7
  fadd.s    f5, f3, f10
  fsub.s    f9, f10, f10
  fmul.s    f21, f4, f5
  fdiv.s    f5, f4, f1
  fmin.s    f8, f1, f19
  fmax.s    f1, f19, f7
  fsgnj.s   f19, f21, f11
  fadd.d    f2, f5, f4
  fsub.d    f11, f2, f3
  fmul.d    f11, f1, f21
  fdiv.d    f0, f10, f2
  fsqrt.d   f7, f21
  fmadd.d   f7, f20, f10, f0
  fcvt.s.w  f1, t0
  fcvt.d.w  f1, s11
  fcvt.d.s  f3, f4
  fcvt.s.d  f6, f7
  fcvt.w.s  s10, f2, rtz
  fcvt.l.d  t0, f5, rtz
  feq.d     t6, f21, f18
  flt.s     s9, f19, f5
  fclass.d  s9, f2
  csrr  s4, mscratch
  csrw  mscratch, t1
  csrrw a4, mscratch, t0
  csrrs a2, mstatus, x0
  csrrc a1, mscratch, x0
  csrrwi a3, mscratch, 23
  fence
  fence.i
  c.addi a0, -22
  c.mv   a1, a2
  c.li   a3, 30
  c.add  a4, a5
  la    s0, tdat
  li    a7, 1056
  li    t3, -1298
  add   s10, a3, a1
  sub   a1, s2, s4
  xor   a3, s11, t3
  or    s6, s2, s6
  and   t4, a4, a5
  addi  t3, s11, -549
  andi  a3, s7, 1067
  ori   s10, s7, 1485
  xori  a1, a6, -244
  slli  s5, t2, 1
  srli  t5, a2, 35
  srai  a6, s3, 14
  sllw  a4, t1, a3
  sraw  t3, s5, s6
  slt   s2, s3, a4
  sltu  s4, t3, t3
  sltiu a1, t3, 1103
  lui   s5, 0x2f1b6
  auipc a7, 0xf6
  addw  s9, t1, s8
  subw  s5, s8, s4
  addiw t6, s6, 711
  mul   a3, a3, s2
  mulh  t5, s9, s11
  mulhu t2, a6, s4
  mulw  t2, a0, s10
  div   s2, t5, a0
  divu  t0, s7, t6
  rem   t1, a4, t2
  remu  t4, s4, t6
  divw  s5, t2, s3
  remw  a7, s6, a2
  sd    s8, 0(s0)
  ld    t0, 0(s0)
  sw    s4, 0(s0)
  lw    a3, 0(s0)
  lwu   s3, 0(s0)
  lh    a0, 0(s0)
  lbu   a1, 0(s0)
  lr.d      s4, (s0)
  sc.d      a3, s7, (s0)
  amoadd.w  s11, s9, (s0)
  amoswap.d s8, s11, (s0)
  amoand.w  s6, a3, (s0)
  amoor.d   a2, a2, (s0)
  amoxor.w  t5, s4, (s0)
  amomax.d  a2, s6, (s0)
  amominu.w t1, s11, (s0)
  fmv.w.x   f7, s11
  fmv.d.x   f2, a7
  fadd.s    f4, f0, f9
  fsub.s    f3, f6, f21
  fmul.s    f0, f0, f19
  fdiv.s    f7, f8, f11
  fmin.s    f11, f5, f7
  fmax.s    f3, f9, f18
  fsgnj.s   f9, f0, f2
  fadd.d    f10, f11, f7
  fsub.d    f0, f2, f18
  fmul.d    f9, f18, f5
  fdiv.d    f11, f7, f6
  fsqrt.d   f6, f10
  fmadd.d   f19, f7, f21, f11
  fcvt.s.w  f11, t0
  fcvt.d.w  f1, a5
  fcvt.d.s  f7, f10
  fcvt.s.d  f21, f7
  fcvt.w.s  a4, f1, rtz
  fcvt.l.d  s7, f21, rtz
  feq.d     s5, f0, f21
  flt.s     s11, f20, f2
  fclass.d  t1, f10
  csrr  a4, mscratch
  csrw  mscratch, s5
  csrrw s10, mscratch, s3
  csrrs s4, mstatus, x0
  csrrc a7, mscratch, x0
  csrrwi s8, mscratch, 23
  fence
  fence.i
  c.addi a0, -4
  c.mv   a1, a2
  c.li   a3, -3
  c.add  a4, a5
  la    s0, tdat
  li    t0, 1120
  li    s10, -1974
  add   a1, s7, s2
  sub   t0, s7, a1
  xor   t1, a3, t5
  or    t2, t4, s2
  and   s10, t3, a1
  addi  s6, t6, -754
  andi  s6, s2, 1020
  ori   a4, s2, 1075
  xori  s4, t1, 681
  slli  a7, t3, 24
  srli  a5, s7, 5
  srai  a6, a0, 37
  sllw  s7, a1, t1
  sraw  a1, s11, s10
  slt   t5, s10, a3
  sltu  a6, a5, a7
  sltiu s5, t6, 600
  lui   s8, 0x5ecf1
  auipc t1, 0x6b
  addw  a0, s2, t1
  subw  t3, s8, a1
  addiw a5, s10, -138
  mul   a0, s8, s3
  mulh  t5, t5, s11
  mulhu t6, s2, a6
  mulw  s7, a1, a7
  div   a6, t2, t6
  divu  a0, a2, s8
  rem   a6, t0, t1
  remu  s6, a6, t1
  divw  s2, t6, t5
  remw  s8, s4, t5
  sd    a2, 0(s0)
  ld    t4, 0(s0)
  sw    t0, 0(s0)
  lw    s7, 0(s0)
  lwu   a6, 0(s0)
  lh    t5, 0(s0)
  lbu   s3, 0(s0)
  lr.d      s7, (s0)
  sc.d      t1, s11, (s0)
  amoadd.w  a4, a3, (s0)
  amoswap.d a3, a6, (s0)
  amoand.w  s8, s6, (s0)
  amoor.d   t3, a0, (s0)
  amoxor.w  t2, a2, (s0)
  amomax.d  s2, a2, (s0)
  amominu.w a2, s8, (s0)
  fmv.w.x   f5, t0
  fmv.d.x   f11, t6
  fadd.s    f8, f10, f18
  fsub.s    f18, f2, f19
  fmul.s    f19, f10, f1
  fdiv.s    f4, f18, f18
  fmin.s    f0, f9, f9
  fmax.s    f4, f19, f18
  fsgnj.s   f5, f4, f9
  fadd.d    f18, f11, f1
  fsub.d    f20, f19, f2
  fmul.d    f2, f11, f4
  fdiv.d    f3, f8, f19
  fsqrt.d   f1, f9
  fmadd.d   f11, f1, f8, f5
  fcvt.s.w  f11, t5
  fcvt.d.w  f11, t0
  fcvt.d.s  f11, f10
  fcvt.s.d  f6, f4
  fcvt.w.s  a3, f18, rtz
  fcvt.l.d  a3, f9, rtz
  feq.d     s6, f2, f0
  flt.s     s7, f4, f2
  fclass.d  t6, f21
  csrr  a2, mscratch
  csrw  mscratch, t1
  csrrw a1, mscratch, s9
  csrrs a0, mstatus, x0
  csrrc s4, mscratch, x0
  csrrwi a3, mscratch, 25
  fence
  fence.i
  c.addi a0, 30
  c.mv   a1, a2
  c.li   a3, -9
  c.add  a4, a5
  la    s0, tdat
  li    t1, 1844
  li    a5, 193
  add   a4, s2, t1
  sub   t4, a5, t3
  xor   a1, t3, t1
  or    s4, s11, a4
  and   s3, a5, t4
  addi  s9, t4, -1499
  andi  s10, t6, 777
  ori   a1, a0, 1473
  xori  s9, t2, 1284
  slli  a1, a6, 0
  srli  a2, s10, 10
  srai  a6, a4, 35
  sllw  t2, t5, s8
  sraw  s6, s9, t2
  slt   s3, s9, s6
  sltu  t6, t4, s10
  sltiu s4, s5, 1088
  lui   a5, 0x74725
  auipc a1, 0xb8
  addw  s3, t0, a2
  subw  a3, a7, t5
  addiw s6, s3, -396
  mul   t5, a6, a4
  mulh  a1, s5, s11
  mulhu a1, t1, a6
  mulw  a1, s5, s5
  div   t6, t4, a1
  divu  a0, a5, s11
  rem   s9, s4, s7
  remu  t4, t4, s11
  divw  t4, a3, s4
  remw  a6, t1, a4
  sd    t4, 0(s0)
  ld    a4, 0(s0)
  sw    s5, 0(s0)
  lw    t6, 0(s0)
  lwu   t0, 0(s0)
  lh    s6, 0(s0)
  lbu   t0, 0(s0)
  lr.d      t1, (s0)
  sc.d      t1, s8, (s0)
  amoadd.w  t5, a4, (s0)
  amoswap.d a0, a0, (s0)
  amoand.w  s7, t4, (s0)
  amoor.d   s9, a7, (s0)
  amoxor.w  s4, s5, (s0)
  amomax.d  t4, s3, (s0)
  amominu.w a5, t2, (s0)
  fmv.w.x   f9, t5
  fmv.d.x   f18, s11
  fadd.s    f18, f5, f19
  fsub.s    f20, f5, f5
  fmul.s    f3, f5, f21
  fdiv.s    f6, f10, f8
  fmin.s    f20, f3, f3
  fmax.s    f10, f8, f5
  fsgnj.s   f0, f18, f9
  fadd.d    f2, f11, f18
  fsub.d    f1, f21, f11
  fmul.d    f21, f3, f4
  fdiv.d    f0, f5, f11
  fsqrt.d   f2, f18
  fmadd.d   f5, f10, f21, f4
  fcvt.s.w  f7, s11
  fcvt.d.w  f11, t0
  fcvt.d.s  f11, f9
  fcvt.s.d  f3, f1
  fcvt.w.s  a6, f10, rtz
  fcvt.l.d  t6, f2, rtz
  feq.d     t5, f19, f9
  flt.s     a7, f6, f5
  fclass.d  a5, f21
  csrr  s8, mscratch
  csrw  mscratch, t2
  csrrw t1, mscratch, s11
  csrrs s10, mstatus, x0
  csrrc t2, mscratch, x0
  csrrwi t0, mscratch, 23
  fence
  fence.i
  c.addi a0, 16
  c.mv   a1, a2
  c.li   a3, -17
  c.add  a4, a5
  la    s0, tdat
  li    t1, 1434
  li    s3, -440
  add   a5, a6, s2
  sub   t0, t4, s3
  xor   s3, a7, s8
  or    a1, t1, s10
  and   s10, s11, t1
  addi  t3, s9, -599
  andi  a7, a4, 850
  ori   s10, t3, 442
  xori  t3, t5, 851
  slli  s3, a6, 58
  srli  s6, t0, 14
  srai  a1, s2, 60
  sllw  s11, s7, t2
  sraw  a3, a6, s2
  slt   s6, s7, a7
  sltu  s8, s6, s6
  sltiu a6, a5, 317
  lui   s2, 0x6a09a
  auipc s8, 0xf
  addw  s4, a1, a0
  subw  s5, s10, a7
  addiw a5, s4, -1008
  mul   t3, t3, s3
  mulh  t1, t1, t0
  mulhu t5, a4, t3
  mulw  s4, s11, t0
  div   s2, a1, t2
  divu  s9, s8, a5
  rem   t6, s8, s2
  remu  t4, s11, t1
  divw  t4, a6, t5
  remw  a3, t1, a1
  sd    t6, 8(s0)
  ld    t3, 8(s0)
  sw    t6, 8(s0)
  lw    a0, 8(s0)
  lwu   s9, 8(s0)
  lh    t0, 8(s0)
  lbu   a6, 8(s0)
  lr.d      t5, (s0)
  sc.d      t1, a5, (s0)
  amoadd.w  t4, t2, (s0)
  amoswap.d a7, s4, (s0)
  amoand.w  t5, t3, (s0)
  amoor.d   a7, t1, (s0)
  amoxor.w  s3, s10, (s0)
  amomax.d  a2, t4, (s0)
  amominu.w s11, a7, (s0)
  fmv.w.x   f20, t1
  fmv.d.x   f10, s2
  fadd.s    f6, f10, f3
  fsub.s    f7, f8, f19
  fmul.s    f7, f20, f9
  fdiv.s    f2, f2, f21
  fmin.s    f10, f2, f9
  fmax.s    f2, f3, f4
  fsgnj.s   f18, f11, f20
  fadd.d    f2, f19, f21
  fsub.d    f1, f0, f5
  fmul.d    f10, f8, f11
  fdiv.d    f4, f21, f3
  fsqrt.d   f11, f0
  fmadd.d   f1, f7, f5, f18
  fcvt.s.w  f9, t5
  fcvt.d.w  f20, a6
  fcvt.d.s  f6, f11
  fcvt.s.d  f5, f1
  fcvt.w.s  s5, f18, rtz
  fcvt.l.d  s10, f10, rtz
  feq.d     a0, f6, f3
  flt.s     a0, f19, f18
  fclass.d  a7, f4
  csrr  a3, mscratch
  csrw  mscratch, s6
  csrrw s9, mscratch, s11
  csrrs a5, mstatus, x0
  csrrc s6, mscratch, x0
  csrrwi a3, mscratch, 6
  fence
  fence.i
  c.addi a0, 6
  c.mv   a1, a2
  c.li   a3, -20
  c.add  a4, a5
  la    s0, tdat
  li    t0, 1016
  li    s4, -1800
  add   a7, a7, a7
  sub   s11, s2, a6
  xor   s8, t2, s2
  or    s6, t6, a7
  and   s2, a2, t5
  addi  t3, s4, -1089
  andi  a2, s4, 1106
  ori   t3, s9, 1953
  xori  a7, s6, -1885
  slli  a1, a2, 37
  srli  t6, t0, 47
  srai  t2, a4, 28
  sllw  s11, s9, t0
  sraw  t4, s5, a2
  slt   a5, s3, t6
  sltu  s10, t0, t3
  sltiu a1, s6, 931
  lui   a6, 0x7f9f1
  auipc s11, 0xa0
  addw  a3, t3, s6
  subw  s10, s4, t0
  addiw s8, t6, -1300
  mul   s8, s11, t1
  mulh  t5, s2, a3
  mulhu s5, s5, a2
  mulw  s3, a5, s2
  div   s2, a6, a5
  divu  s6, s7, s6
  rem   s8, s4, t0
  remu  s8, a0, s11
  divw  s6, t6, s9
  remw  s5, a5, s9
  sd    t0, 0(s0)
  ld    a2, 0(s0)
  sw    t4, 0(s0)
  lw    a3, 0(s0)
  lwu   a5, 0(s0)
  lh    s6, 0(s0)
  lbu   a7, 0(s0)
  lr.d      s8, (s0)
  sc.d      a5, a3, (s0)
  amoadd.w  t2, s2, (s0)
  amoswap.d a7, a0, (s0)
  amoand.w  s11, t6, (s0)
  amoor.d   s8, t2, (s0)
  amoxor.w  s10, s10, (s0)
  amomax.d  a0, s6, (s0)
  amominu.w s3, s9, (s0)
  fmv.w.x   f6, s5
  fmv.d.x   f21, t5
  fadd.s    f11, f21, f7
  fsub.s    f20, f20, f10
  fmul.s    f4, f9, f21
  fdiv.s    f2, f9, f3
  fmin.s    f21, f2, f0
  fmax.s    f2, f2, f2
  fsgnj.s   f20, f9, f7
  fadd.d    f21, f4, f8
  fsub.d    f19, f19, f7
  fmul.d    f18, f4, f5
  fdiv.d    f2, f1, f21
  fsqrt.d   f3, f3
  fmadd.d   f7, f10, f19, f7
  fcvt.s.w  f2, t2
  fcvt.d.w  f8, a6
  fcvt.d.s  f0, f9
  fcvt.s.d  f8, f1
  fcvt.w.s  t1, f5, rtz
  fcvt.l.d  t0, f4, rtz
  feq.d     a5, f11, f18
  flt.s     s4, f2, f9
  fclass.d  t6, f8
  csrr  s3, mscratch
  csrw  mscratch, s9
  csrrw t6, mscratch, a3
  csrrs s10, mstatus, x0
  csrrc t4, mscratch, x0
  csrrwi t5, mscratch, 11
  fence
  fence.i
  c.addi a0, 25
  c.mv   a1, a2
  c.li   a3, -28
  c.add  a4, a5
  la    s0, tdat
  li    s4, 1962
  li    a0, -1933
  add   t1, s7, s11
  sub   t0, a6, s3
  xor   s7, t4, t1
  or    t5, t6, t0
  and   t4, t3, t2
  addi  t3, s10, 60
  andi  s2, a1, 618
  ori   s8, t6, 1663
  xori  a2, a6, 26
  slli  s9, t5, 47
  srli  a3, a1, 37
  srai  a2, a0, 15
  sllw  s6, a7, t4
  sraw  t5, s8, a0
  slt   s2, a2, a5
  sltu  a4, a7, t3
  sltiu s10, t0, 313
  lui   a3, 0x3fa27
  auipc s8, 0xaf
  addw  a0, s10, s3
  subw  s2, t6, s6
  addiw s6, t3, -1380
  mul   s6, s3, s7
  mulh  s2, a6, a1
  mulhu a0, a6, s7
  mulw  s8, s4, a5
  div   a0, s11, t5
  divu  t3, s9, s7
  rem   s2, t2, s8
  remu  a1, s6, s9
  divw  a6, s7, t0
  remw  t4, s10, a4
  sd    a0, 0(s0)
  ld    s10, 0(s0)
  sw    s3, 0(s0)
  lw    a7, 0(s0)
  lwu   s6, 0(s0)
  lh    s11, 0(s0)
  lbu   s4, 0(s0)
  lr.d      a1, (s0)
  sc.d      s9, s8, (s0)
  amoadd.w  s2, s11, (s0)
  amoswap.d s11, a6, (s0)
  amoand.w  t4, s10, (s0)
  amoor.d   t2, a5, (s0)
  amoxor.w  t6, a6, (s0)
  amomax.d  t1, a2, (s0)
  amominu.w a2, a4, (s0)
  fmv.w.x   f4, t5
  fmv.d.x   f9, s5
  fadd.s    f18, f6, f6
  fsub.s    f2, f8, f5
  fmul.s    f11, f2, f9
  fdiv.s    f9, f1, f20
  fmin.s    f11, f3, f10
  fmax.s    f9, f1, f20
  fsgnj.s   f4, f4, f21
  fadd.d    f19, f9, f10
  fsub.d    f2, f5, f4
  fmul.d    f18, f11, f1
  fdiv.d    f1, f1, f1
  fsqrt.d   f20, f0
  fmadd.d   f5, f2, f20, f2
  fcvt.s.w  f8, s6
  fcvt.d.w  f1, s2
  fcvt.d.s  f6, f18
  fcvt.s.d  f5, f8
  fcvt.w.s  s7, f8, rtz
  fcvt.l.d  s11, f20, rtz
  feq.d     s4, f20, f5
  flt.s     t0, f2, f7
  fclass.d  a5, f2
  csrr  a5, mscratch
  csrw  mscratch, t3
  csrrw t2, mscratch, a5
  csrrs s4, mstatus, x0
  csrrc t1, mscratch, x0
  csrrwi s5, mscratch, 3
  fence
  fence.i
  c.addi a0, -9
  c.mv   a1, a2
  c.li   a3, 31
  c.add  a4, a5
  la    s0, tdat
  li    t5, 167
  li    t4, -1678
  add   a3, t2, s3
  sub   t4, t0, a5
  xor   t4, t1, s2
  or    a2, s3, s4
  and   s2, t3, s5
  addi  t2, t2, 121
  andi  a4, t1, 282
  ori   t0, a0, 1435
  xori  s11, s5, 1778
  slli  s5, a3, 34
  srli  s7, s5, 32
  srai  s6, t3, 46
  sllw  s10, a0, s4
  sraw  a1, s8, t3
  slt   a0, a6, a0
  sltu  t5, s10, s9
  sltiu s10, a4, 1543
  lui   t0, 0x98ea4
  auipc t3, 0x6d
  addw  t5, s7, t2
  subw  a1, a0, a5
  addiw t5, t6, 1053
  mul   t2, s9, a4
  mulh  s2, a5, t2
  mulhu s5, s9, s9
  mulw  s8, t2, t6
  div   a7, s2, s8
  divu  s2, a4, s6
  rem   s4, t0, s5
  remu  t6, s9, a3
  divw  t1, a4, s3
  remw  t4, t5, a7
  sd    s11, 0(s0)
  ld    s5, 0(s0)
  sw    a4, 0(s0)
  lw    s10, 0(s0)
  lwu   a5, 0(s0)
  lh    a4, 0(s0)
  lbu   s6, 0(s0)
  lr.d      s7, (s0)
  sc.d      t0, t1, (s0)
  amoadd.w  a6, t1, (s0)
  amoswap.d a3, t5, (s0)
  amoand.w  a3, a2, (s0)
  amoor.d   t1, a3, (s0)
  amoxor.w  s4, t1, (s0)
  amomax.d  a6, s8, (s0)
  amominu.w s2, t3, (s0)
  fmv.w.x   f3, a7
  fmv.d.x   f3, s11
  fadd.s    f7, f4, f9
  fsub.s    f10, f6, f0
  fmul.s    f9, f2, f4
  fdiv.s    f2, f5, f19
  fmin.s    f20, f20, f2
  fmax.s    f4, f9, f10
  fsgnj.s   f10, f2, f19
  fadd.d    f8, f6, f7
  fsub.d    f4, f20, f9
  fmul.d    f10, f8, f19
  fdiv.d    f9, f2, f20
  fsqrt.d   f0, f5
  fmadd.d   f10, f0, f5, f21
  fcvt.s.w  f20, t3
  fcvt.d.w  f8, s9
  fcvt.d.s  f6, f3
  fcvt.s.d  f21, f2
  fcvt.w.s  s4, f19, rtz
  fcvt.l.d  s9, f19, rtz
  feq.d     a7, f8, f0
  flt.s     s4, f9, f9
  fclass.d  s2, f18
  csrr  t4, mscratch
  csrw  mscratch, a3
  csrrw s6, mscratch, t6
  csrrs s2, mstatus, x0
  csrrc s8, mscratch, x0
  csrrwi t6, mscratch, 19
  fence
  fence.i
  c.addi a0, 6
  c.mv   a1, a2
  c.li   a3, 28
  c.add  a4, a5
  la    s0, tdat
  li    s10, 1149
  li    s8, -1829
  add   t2, a5, a2
  sub   t0, a6, a1
  xor   t6, s4, a7
  or    t3, a0, s2
  and   a3, a2, t3
  addi  t5, s4, 1373
  andi  a1, s2, 1238
  ori   t1, t3, 739
  xori  s6, a0, -2022
  slli  s9, a1, 10
  srli  t4, s5, 48
  srai  s10, a2, 23
  sllw  t3, t3, s8
  sraw  t1, t3, s10
  slt   s9, t3, s5
  sltu  s2, a3, a0
  sltiu a7, t2, 675
  lui   a6, 0x359df
  auipc a4, 0x6a
  addw  a3, t2, t5
  subw  s4, s5, t6
  addiw a7, t6, -1056
  mul   t0, a2, s4
  mulh  a3, a3, a0
  mulhu s9, a3, t6
  mulw  s4, s8, s6
  div   a1, t4, s11
  divu  s9, s10, s2
  rem   t3, a7, t3
  remu  t6, s8, s8
  divw  s2, t4, t6
  remw  a2, t2, a0
  sd    a7, 8(s0)
  ld    s4, 8(s0)
  sw    s8, 8(s0)
  lw    a5, 8(s0)
  lwu   s2, 8(s0)
  lh    t0, 8(s0)
  lbu   s7, 8(s0)
  lr.d      t0, (s0)
  sc.d      s5, t2, (s0)
  amoadd.w  t3, a7, (s0)
  amoswap.d t2, a7, (s0)
  amoand.w  a3, a2, (s0)
  amoor.d   a6, s3, (s0)
  amoxor.w  t0, t4, (s0)
  amomax.d  s10, a3, (s0)
  amominu.w s8, t3, (s0)
  fmv.w.x   f20, a0
  fmv.d.x   f2, a0
  fadd.s    f20, f7, f4
  fsub.s    f5, f10, f18
  fmul.s    f18, f11, f9
  fdiv.s    f19, f20, f19
  fmin.s    f9, f7, f6
  fmax.s    f20, f21, f21
  fsgnj.s   f1, f11, f1
  fadd.d    f4, f7, f10
  fsub.d    f20, f6, f21
  fmul.d    f9, f7, f19
  fdiv.d    f11, f19, f6
  fsqrt.d   f6, f0
  fmadd.d   f9, f6, f5, f2
  fcvt.s.w  f7, a6
  fcvt.d.w  f5, t6
  fcvt.d.s  f18, f20
  fcvt.s.d  f0, f19
  fcvt.w.s  a1, f11, rtz
  fcvt.l.d  a7, f11, rtz
  feq.d     t5, f1, f4
  flt.s     s9, f6, f8
  fclass.d  t1, f19
  csrr  s11, mscratch
  csrw  mscratch, a4
  csrrw t1, mscratch, a4
  csrrs a2, mstatus, x0
  csrrc s4, mscratch, x0
  csrrwi a6, mscratch, 4
  fence
  fence.i
  c.addi a0, -23
  c.mv   a1, a2
  c.li   a3, 21
  c.add  a4, a5
  la    s0, tdat
  li    a3, 1660
  li    a2, -1911
  add   t4, s2, a4
  sub   s7, a6, s2
  xor   s7, t2, s4
  or    t2, s6, t0
  and   a2, a7, a6
  addi  a1, s5, -719
  andi  a0, s3, 1634
  ori   s6, s10, 1303
  xori  s2, s7, 50
  slli  s5, t1, 4
  srli  s10, t1, 58
  srai  s3, s2, 53
  sllw  t5, t3, a1
  sraw  a5, s6, t6
  slt   a3, s5, a3
  sltu  s6, s11, a2
  sltiu s6, s7, 100
  lui   s8, 0x84133
  auipc s2, 0xf5
  addw  t0, s5, s10
  subw  s5, s2, s3
  addiw s7, a5, 1166
  mul   s9, s11, a1
  mulh  s6, s2, s3
  mulhu a1, s4, s2
  mulw  t3, a6, a3
  div   s9, t5, a0
  divu  s11, a5, s6
  rem   s3, a7, t6
  remu  t1, s3, s3
  divw  a2, s7, s7
  remw  t1, s11, s8
  sd    s2, 8(s0)
  ld    t0, 8(s0)
  sw    t0, 8(s0)
  lw    t0, 8(s0)
  lwu   t3, 8(s0)
  lh    a6, 8(s0)
  lbu   a4, 8(s0)
  lr.d      a7, (s0)
  sc.d      s9, t3, (s0)
  amoadd.w  a5, a1, (s0)
  amoswap.d a0, t2, (s0)
  amoand.w  t2, t2, (s0)
  amoor.d   t6, s5, (s0)
  amoxor.w  a6, t5, (s0)
  amomax.d  s9, t5, (s0)
  amominu.w a6, s11, (s0)
  fmv.w.x   f11, t5
  fmv.d.x   f21, s7
  fadd.s    f21, f8, f4
  fsub.s    f20, f4, f6
  fmul.s    f20, f4, f2
  fdiv.s    f2, f19, f20
  fmin.s    f0, f1, f7
  fmax.s    f3, f18, f20
  fsgnj.s   f20, f0, f5
  fadd.d    f1, f4, f21
  fsub.d    f21, f2, f18
  fmul.d    f18, f8, f6
  fdiv.d    f5, f5, f19
  fsqrt.d   f5, f4
  fmadd.d   f18, f7, f3, f1
  fcvt.s.w  f0, t6
  fcvt.d.w  f21, t4
  fcvt.d.s  f10, f2
  fcvt.s.d  f6, f4
  fcvt.w.s  a0, f19, rtz
  fcvt.l.d  a6, f19, rtz
  feq.d     t6, f7, f3
  flt.s     s2, f6, f9
  fclass.d  a5, f8
  csrr  a2, mscratch
  csrw  mscratch, t5
  csrrw s4, mscratch, s6
  csrrs s5, mstatus, x0
  csrrc s7, mscratch, x0
  csrrwi a0, mscratch, 25
  fence
  fence.i
  c.addi a0, -25
  c.mv   a1, a2
  c.li   a3, -24
  c.add  a4, a5
  la    s0, tdat
  li    t4, 192
  li    s4, 604
  add   s11, s11, a6
  sub   s6, t5, t6
  xor   t5, s6, a4
  or    t5, s3, a1
  and   a4, s4, a2
  addi  a5, a5, -403
  andi  a0, s8, 1587
  ori   s4, s3, 393
  xori  s11, t3, 1723
  slli  s11, s10, 2
  srli  a2, t4, 55
  srai  s9, a2, 46
  sllw  a1, t6, a0
  sraw  a7, s11, s6
  slt   t3, s3, s10
  sltu  a5, s7, t1
  sltiu s4, a5, 1401
  lui   a4, 0xa690d
  auipc a4, 0xfd
  addw  s4, a4, s7
  subw  a4, s6, s8
  addiw s9, s4, -1561
  mul   s9, t5, t4
  mulh  t4, s6, a3
  mulhu a4, s8, a2
  mulw  t1, a6, a7
  div   a7, a3, a3
  divu  a4, s8, s10
  rem   s8, t3, a7
  remu  s9, s8, s8
  divw  s2, a3, a7
  remw  a0, a1, s10
  sd    s6, 8(s0)
  ld    t2, 8(s0)
  sw    t1, 8(s0)
  lw    a4, 8(s0)
  lwu   t3, 8(s0)
  lh    a1, 8(s0)
  lbu   a5, 8(s0)
  lr.d      s11, (s0)
  sc.d      a4, a4, (s0)
  amoadd.w  s3, a3, (s0)
  amoswap.d s8, s5, (s0)
  amoand.w  t0, a3, (s0)
  amoor.d   s6, t6, (s0)
  amoxor.w  s7, t5, (s0)
  amomax.d  s6, t4, (s0)
  amominu.w a2, t3, (s0)
  fmv.w.x   f9, s6
  fmv.d.x   f1, t1
  fadd.s    f10, f1, f20
  fsub.s    f1, f1, f11
  fmul.s    f19, f0, f10
  fdiv.s    f2, f4, f3
  fmin.s    f4, f0, f5
  fmax.s    f0, f5, f5
  fsgnj.s   f3, f5, f6
  fadd.d    f0, f21, f7
  fsub.d    f6, f5, f9
  fmul.d    f21, f1, f18
  fdiv.d    f3, f4, f19
  fsqrt.d   f7, f7
  fmadd.d   f6, f4, f19, f19
  fcvt.s.w  f1, a5
  fcvt.d.w  f8, s8
  fcvt.d.s  f5, f21
  fcvt.s.d  f10, f19
  fcvt.w.s  a1, f11, rtz
  fcvt.l.d  a3, f6, rtz
  feq.d     s5, f0, f1
  flt.s     s4, f21, f10
  fclass.d  t0, f6
  csrr  s3, mscratch
  csrw  mscratch, s3
  csrrw s2, mscratch, a6
  csrrs t1, mstatus, x0
  csrrc s10, mscratch, x0
  csrrwi t4, mscratch, 29
  fence
  fence.i
  c.addi a0, 13
  c.mv   a1, a2
  c.li   a3, -17
  c.add  a4, a5
  la    s0, tdat
  li    t2, 1395
  li    a3, 914
  add   t4, s4, s6
  sub   s5, a3, a5
  xor   a1, s3, s5
  or    t6, s3, s3
  and   a3, a5, a1
  addi  a0, s8, 1831
  andi  a4, s2, 380
  ori   t4, t3, 1869
  xori  t5, s3, -1609
  slli  s5, s10, 9
  srli  t6, t1, 21
  srai  s10, s6, 57
  sllw  a0, a0, a3
  sraw  a5, s3, a6
  slt   a3, a6, a3
  sltu  s2, s11, a2
  sltiu s2, a3, 1534
  lui   a0, 0xb34be
  auipc a4, 0x3b
  addw  s5, a7, t4
  subw  s10, s4, a4
  addiw a0, a2, -1233
  mul   a0, t2, s9
  mulh  a1, a2, t3
  mulhu t0, s2, a7
  mulw  s4, a2, s10
  div   t4, t4, a0
  divu  s10, a1, a7
  rem   s7, t0, a3
  remu  s2, s2, t1
  divw  t5, a7, t3
  remw  s3, t1, t3
  sd    s9, 0(s0)
  ld    s9, 0(s0)
  sw    t4, 0(s0)
  lw    a4, 0(s0)
  lwu   a0, 0(s0)
  lh    a6, 0(s0)
  lbu   a3, 0(s0)
  lr.d      a7, (s0)
  sc.d      s3, t4, (s0)
  amoadd.w  t5, t1, (s0)
  amoswap.d t0, s10, (s0)
  amoand.w  a3, a0, (s0)
  amoor.d   a3, s7, (s0)
  amoxor.w  a0, s4, (s0)
  amomax.d  s5, t6, (s0)
  amominu.w s7, a5, (s0)
  fmv.w.x   f5, s3
  fmv.d.x   f5, a0
  fadd.s    f3, f21, f11
  fsub.s    f11, f2, f0
  fmul.s    f6, f18, f19
  fdiv.s    f20, f1, f4
  fmin.s    f2, f21, f2
  fmax.s    f4, f6, f4
  fsgnj.s   f21, f7, f11
  fadd.d    f21, f10, f1
  fsub.d    f10, f0, f5
  fmul.d    f18, f8, f1
  fdiv.d    f5, f19, f19
  fsqrt.d   f0, f18
  fmadd.d   f20, f18, f18, f19
  fcvt.s.w  f11, a4
  fcvt.d.w  f4, a4
  fcvt.d.s  f0, f20
  fcvt.s.d  f19, f19
  fcvt.w.s  s8, f9, rtz
  fcvt.l.d  t0, f21, rtz
  feq.d     s4, f9, f20
  flt.s     a4, f6, f20
  fclass.d  a6, f4
  csrr  t0, mscratch
  csrw  mscratch, s8
  csrrw a1, mscratch, s6
  csrrs s9, mstatus, x0
  csrrc a6, mscratch, x0
  csrrwi a3, mscratch, 4
  fence
  fence.i
  c.addi a0, 21
  c.mv   a1, a2
  c.li   a3, 23
  c.add  a4, a5
  la    s0, tdat
  li    s7, 703
  li    t1, -1619
  add   s9, s7, s6
  sub   a5, s7, s11
  xor   a3, t0, a3
  or    s2, s10, a1
  and   t3, t4, t1
  addi  s11, s2, 1040
  andi  s4, a1, 1524
  ori   s3, s11, 1139
  xori  a4, a7, -1192
  slli  a6, a1, 13
  srli  a6, a3, 5
  srai  s8, s9, 48
  sllw  s8, t6, s4
  sraw  t2, a0, s2
  slt   a2, s7, s6
  sltu  a2, s10, t1
  sltiu s9, t4, 1692
  lui   a1, 0x1c7f4
  auipc t3, 0x4a
  addw  a3, t6, t4
  subw  s7, s2, a4
  addiw t0, a0, -1552
  mul   s6, a7, s11
  mulh  s5, t1, s11
  mulhu t6, s3, s3
  mulw  t3, t2, a7
  div   a7, s8, s6
  divu  s10, a1, s7
  rem   a6, a5, t1
  remu  a6, s4, a0
  divw  s7, s9, s7
  remw  a4, s7, s8
  sd    s7, 0(s0)
  ld    a5, 0(s0)
  sw    s5, 0(s0)
  lw    t3, 0(s0)
  lwu   t2, 0(s0)
  lh    t1, 0(s0)
  lbu   t2, 0(s0)
  lr.d      a7, (s0)
  sc.d      t2, s7, (s0)
  amoadd.w  s4, s9, (s0)
  amoswap.d s8, s5, (s0)
  amoand.w  t0, s9, (s0)
  amoor.d   s4, a1, (s0)
  amoxor.w  t5, a4, (s0)
  amomax.d  t5, s6, (s0)
  amominu.w a3, a4, (s0)
  fmv.w.x   f1, s4
  fmv.d.x   f2, s5
  fadd.s    f19, f10, f0
  fsub.s    f18, f7, f8
  fmul.s    f2, f21, f19
  fdiv.s    f5, f5, f0
  fmin.s    f7, f10, f1
  fmax.s    f21, f5, f3
  fsgnj.s   f7, f6, f8
  fadd.d    f1, f0, f10
  fsub.d    f8, f11, f21
  fmul.d    f6, f1, f18
  fdiv.d    f6, f3, f10
  fsqrt.d   f10, f8
  fmadd.d   f9, f11, f3, f7
  fcvt.s.w  f8, s4
  fcvt.d.w  f9, a3
  fcvt.d.s  f7, f1
  fcvt.s.d  f20, f11
  fcvt.w.s  a4, f18, rtz
  fcvt.l.d  s9, f3, rtz
  feq.d     a4, f19, f1
  flt.s     a0, f7, f11
  fclass.d  t1, f2
  csrr  s10, mscratch
  csrw  mscratch, s3
  csrrw t4, mscratch, s8
  csrrs t2, mstatus, x0
  csrrc t4, mscratch, x0
  csrrwi s7, mscratch, 0
  fence
  fence.i
  c.addi a0, 15
  c.mv   a1, a2
  c.li   a3, -29
  c.add  a4, a5
  la    s0, tdat
  li    a3, 1571
  li    a3, -1053
  add   a4, a5, t2
  sub   a7, t5, s3
  xor   a6, s10, s6
  or    s2, s11, a7
  and   s11, s10, s2
  addi  s10, a1, -1768
  andi  t2, s11, 1377
  ori   s8, a1, 805
  xori  s8, s10, 1563
  slli  s11, t1, 3
  srli  t6, s6, 17
  srai  a7, s2, 3
  sllw  t1, t2, s10
  sraw  t4, t2, a3
  slt   t0, s6, s3
  sltu  t4, a3, s5
  sltiu s11, a0, 445
  lui   t4, 0xcaf7b
  auipc a3, 0x50
  addw  a5, a0, t5
  subw  s4, a7, a3
  addiw t2, s10, 1741
  mul   s11, s2, s8
  mulh  t1, s7, s3
  mulhu t5, s11, t5
  mulw  t4, a3, s3
  div   s2, t1, t3
  divu  s6, s4, a3
  rem   s9, s10, a0
  remu  s4, a2, t2
  divw  s9, a5, t4
  remw  t0, a0, t2
  sd    s10, 8(s0)
  ld    s2, 8(s0)
  sw    a3, 8(s0)
  lw    a3, 8(s0)
  lwu   s5, 8(s0)
  lh    a3, 8(s0)
  lbu   a6, 8(s0)
  lr.d      s8, (s0)
  sc.d      t2, a4, (s0)
  amoadd.w  a1, t2, (s0)
  amoswap.d a2, s6, (s0)
  amoand.w  a1, a0, (s0)
  amoor.d   a0, s11, (s0)
  amoxor.w  t1, a6, (s0)
  amomax.d  t4, a5, (s0)
  amominu.w a5, s3, (s0)
  fmv.w.x   f20, a5
  fmv.d.x   f18, a6
  fadd.s    f4, f21, f2
  fsub.s    f5, f7, f6
  fmul.s    f2, f4, f6
  fdiv.s    f9, f9, f9
  fmin.s    f19, f4, f10
  fmax.s    f4, f18, f20
  fsgnj.s   f3, f7, f2
  fadd.d    f10, f1, f6
  fsub.d    f2, f11, f8
  fmul.d    f6, f11, f8
  fdiv.d    f18, f4, f18
  fsqrt.d   f6, f20
  fmadd.d   f20, f7, f18, f4
  fcvt.s.w  f1, t3
  fcvt.d.w  f1, s8
  fcvt.d.s  f5, f1
  fcvt.s.d  f10, f6
  fcvt.w.s  a0, f1, rtz
  fcvt.l.d  a3, f2, rtz
  feq.d     s4, f11, f20
  flt.s     s9, f5, f1
  fclass.d  t6, f6
  csrr  t6, mscratch
  csrw  mscratch, a3
  csrrw s4, mscratch, s4
  csrrs s3, mstatus, x0
  csrrc a3, mscratch, x0
  csrrwi t4, mscratch, 24
  fence
  fence.i
  c.addi a0, -29
  c.mv   a1, a2
  c.li   a3, -7
  c.add  a4, a5
  la    s0, tdat
  li    a1, 288
  li    a5, -2027
  add   a0, s10, a2
  sub   s8, a1, t4
  xor   t4, t5, t5
  or    s8, a3, a7
  and   a4, t6, t3
  addi  t3, t5, -1227
  andi  a7, s7, 1798
  ori   s10, s2, 1143
  xori  a3, s11, -962
  slli  s3, s11, 38
  srli  s10, s7, 2
  srai  t2, a0, 29
  sllw  t3, s4, a4
  sraw  t4, s11, s10
  slt   a3, a4, a3
  sltu  t3, t3, s10
  sltiu t3, a6, 999
  lui   s2, 0x67855
  auipc s11, 0x36
  addw  a5, a4, s8
  subw  a4, a7, s9
  addiw t2, s8, 1109
  mul   s2, a6, t6
  mulh  t5, s4, s8
  mulhu t3, t5, t3
  mulw  a0, t2, s3
  div   a5, s2, s2
  divu  a3, s8, s10
  rem   a5, t1, s3
  remu  t4, a0, a0
  divw  t3, s7, a4
  remw  a5, a3, s10
  sd    s11, 0(s0)
  ld    a2, 0(s0)
  sw    s6, 0(s0)
  lw    s8, 0(s0)
  lwu   s10, 0(s0)
  lh    t6, 0(s0)
  lbu   a1, 0(s0)
  lr.d      s2, (s0)
  sc.d      s6, a4, (s0)
  amoadd.w  t2, s11, (s0)
  amoswap.d a3, s6, (s0)
  amoand.w  a6, t1, (s0)
  amoor.d   s11, s8, (s0)
  amoxor.w  a1, s3, (s0)
  amomax.d  s5, a0, (s0)
  amominu.w s11, s8, (s0)
  fmv.w.x   f4, t2
  fmv.d.x   f6, a2
  fadd.s    f8, f4, f9
  fsub.s    f21, f8, f3
  fmul.s    f3, f19, f1
  fdiv.s    f10, f11, f9
  fmin.s    f21, f21, f0
  fmax.s    f2, f4, f0
  fsgnj.s   f2, f2, f3
  fadd.d    f19, f20, f20
  fsub.d    f9, f5, f4
  fmul.d    f20, f5, f1
  fdiv.d    f19, f18, f4
  fsqrt.d   f4, f10
  fmadd.d   f1, f19, f2, f19
  fcvt.s.w  f8, a2
  fcvt.d.w  f0, s7
  fcvt.d.s  f8, f0
  fcvt.s.d  f3, f8
  fcvt.w.s  t6, f21, rtz
  fcvt.l.d  t0, f2, rtz
  feq.d     s4, f4, f0
  flt.s     t6, f8, f3
  fclass.d  s4, f1
  csrr  s11, mscratch
  csrw  mscratch, s7
  csrrw a2, mscratch, t2
  csrrs a0, mstatus, x0
  csrrc a1, mscratch, x0
  csrrwi s8, mscratch, 30
  fence
  fence.i
  c.addi a0, 17
  c.mv   a1, a2
  c.li   a3, 20
  c.add  a4, a5
  la    s0, tdat
  li    s3, 616
  li    a5, -401
  add   t0, t0, s4
  sub   a1, t2, s9
  xor   s2, a5, s6
  or    s2, a3, a5
  and   s11, s8, a2
  addi  t2, a1, 760
  andi  s4, t3, 24
  ori   s11, s9, 506
  xori  t5, s2, -236
  slli  s3, s5, 50
  srli  t6, s5, 21
  srai  s5, s6, 14
  sllw  t1, a6, t3
  sraw  t4, s10, t1
  slt   t1, a0, s9
  sltu  s11, a4, a3
  sltiu a0, s10, 743
  lui   s2, 0xc1b00
  auipc s4, 0x5d
  addw  t5, s5, a0
  subw  a5, a3, t0
  addiw a5, s7, 2035
  mul   s3, a7, t6
  mulh  t3, s4, s2
  mulhu s2, s10, s11
  mulw  a7, t5, s3
  div   a5, a3, s6
  divu  t1, s9, t5
  rem   s5, a1, t5
  remu  a5, s5, a0
  divw  s7, t5, t6
  remw  s5, t2, s8
  sd    a1, 0(s0)
  ld    a6, 0(s0)
  sw    t2, 0(s0)
  lw    s3, 0(s0)
  lwu   a0, 0(s0)
  lh    s2, 0(s0)
  lbu   t1, 0(s0)
  lr.d      a0, (s0)
  sc.d      t1, a5, (s0)
  amoadd.w  s3, a0, (s0)
  amoswap.d s3, a6, (s0)
  amoand.w  a4, s2, (s0)
  amoor.d   a6, s6, (s0)
  amoxor.w  t6, s6, (s0)
  amomax.d  t1, a1, (s0)
  amominu.w s3, a6, (s0)
  fmv.w.x   f10, s3
  fmv.d.x   f10, t0
  fadd.s    f1, f19, f9
  fsub.s    f19, f0, f1
  fmul.s    f4, f20, f8
  fdiv.s    f7, f5, f5
  fmin.s    f8, f7, f10
  fmax.s    f5, f20, f10
  fsgnj.s   f3, f10, f9
  fadd.d    f4, f5, f19
  fsub.d    f5, f1, f10
  fmul.d    f4, f4, f4
  fdiv.d    f20, f20, f5
  fsqrt.d   f18, f19
  fmadd.d   f21, f20, f20, f19
  fcvt.s.w  f0, a1
  fcvt.d.w  f18, s6
  fcvt.d.s  f1, f4
  fcvt.s.d  f8, f19
  fcvt.w.s  s9, f9, rtz
  fcvt.l.d  a7, f9, rtz
  feq.d     a7, f6, f20
  flt.s     a1, f3, f5
  fclass.d  s4, f4
  csrr  t6, mscratch
  csrw  mscratch, s5
  csrrw s2, mscratch, a5
  csrrs a6, mstatus, x0
  csrrc s5, mscratch, x0
  csrrwi a1, mscratch, 6
  fence
  fence.i
  c.addi a0, 7
  c.mv   a1, a2
  c.li   a3, 16
  c.add  a4, a5
  la    s0, tdat
  li    a4, 1783
  li    a0, 1431
  add   a6, s7, s2
  sub   s7, a6, a6
  xor   t0, a6, s2
  or    s5, t1, a2
  and   s10, t6, s9
  addi  s3, t4, -488
  andi  t1, t0, 134
  ori   s6, t1, 626
  xori  s3, s9, 1324
  slli  a3, t2, 49
  srli  t6, a2, 47
  srai  s6, a0, 32
  sllw  s2, a3, s10
  sraw  s2, t6, t0
  slt   t0, a6, t3
  sltu  t6, t1, t4
  sltiu s7, a4, 120
  lui   a2, 0x5d57f
  auipc t4, 0x68
  addw  t6, t6, t3
  subw  s10, s7, a0
  addiw s3, s11, 1091
  mul   s4, t6, s4
  mulh  t2, t4, a2
  mulhu t1, a6, a4
  mulw  t6, s2, s9
  div   a1, a2, t0
  divu  t3, t3, a7
  rem   s10, s3, t4
  remu  s3, s8, t1
  divw  t2, t0, a6
  remw  a5, s10, a2
  sd    t2, 0(s0)
  ld    a3, 0(s0)
  sw    a6, 0(s0)
  lw    s8, 0(s0)
  lwu   s8, 0(s0)
  lh    t6, 0(s0)
  lbu   a5, 0(s0)
  lr.d      t2, (s0)
  sc.d      t1, t0, (s0)
  amoadd.w  s8, s3, (s0)
  amoswap.d a0, t1, (s0)
  amoand.w  t5, s4, (s0)
  amoor.d   t0, s8, (s0)
  amoxor.w  a2, s6, (s0)
  amomax.d  s4, s7, (s0)
  amominu.w t3, t6, (s0)
  fmv.w.x   f10, t3
  fmv.d.x   f20, s3
  fadd.s    f8, f7, f18
  fsub.s    f18, f8, f0
  fmul.s    f1, f5, f1
  fdiv.s    f9, f20, f21
  fmin.s    f1, f18, f4
  fmax.s    f10, f1, f7
  fsgnj.s   f9, f18, f5
  fadd.d    f2, f18, f6
  fsub.d    f20, f3, f21
  fmul.d    f6, f1, f1
  fdiv.d    f9, f10, f0
  fsqrt.d   f8, f20
  fmadd.d   f20, f9, f2, f9
  fcvt.s.w  f3, a3
  fcvt.d.w  f3, a7
  fcvt.d.s  f2, f5
  fcvt.s.d  f10, f5
  fcvt.w.s  s10, f18, rtz
  fcvt.l.d  t6, f20, rtz
  feq.d     s4, f8, f2
  flt.s     s4, f10, f19
  fclass.d  s11, f11
  csrr  s3, mscratch
  csrw  mscratch, t1
  csrrw t2, mscratch, a4
  csrrs s4, mstatus, x0
  csrrc s3, mscratch, x0
  csrrwi s8, mscratch, 31
  fence
  fence.i
  c.addi a0, -32
  c.mv   a1, a2
  c.li   a3, -29
  c.add  a4, a5
  la    s0, tdat
  li    s10, 204
  li    a7, -1847
  add   t5, a5, a7
  sub   s10, t3, a4
  xor   a3, a1, a3
  or    t5, s6, s3
  and   t0, a5, t5
  addi  a3, a1, 1429
  andi  a6, a0, 1113
  ori   t6, a4, 701
  xori  s10, a6, 1355
  slli  a5, s6, 44
  srli  a4, t6, 53
  srai  t3, s10, 25
  sllw  s2, s10, a4
  sraw  t0, t1, s6
  slt   s2, a7, a4
  sltu  a5, a3, t2
  sltiu a1, a1, 1290
  lui   t1, 0x9d9bf
  auipc s7, 0xc1
  addw  t6, s5, t2
  subw  a6, s5, a2
  addiw t1, a4, -1979
  mul   s9, a0, a7
  mulh  s3, s7, s10
  mulhu a5, t1, t1
  mulw  a2, a3, t0
  div   s6, s11, s2
  divu  t2, s8, t3
  rem   s3, s4, t5
  remu  t4, a1, a0
  divw  s5, s10, a6
  remw  s6, t4, a5
  sd    t6, 8(s0)
  ld    s9, 8(s0)
  sw    a4, 8(s0)
  lw    a2, 8(s0)
  lwu   a4, 8(s0)
  lh    s5, 8(s0)
  lbu   s9, 8(s0)
  lr.d      s11, (s0)
  sc.d      s10, s7, (s0)
  amoadd.w  a1, t4, (s0)
  amoswap.d t1, t5, (s0)
  amoand.w  a2, t4, (s0)
  amoor.d   t4, s2, (s0)
  amoxor.w  s6, s9, (s0)
  amomax.d  a7, s9, (s0)
  amominu.w a3, a2, (s0)
  fmv.w.x   f11, a1
  fmv.d.x   f9, s4
  fadd.s    f7, f1, f2
  fsub.s    f7, f9, f11
  fmul.s    f21, f1, f7
  fdiv.s    f11, f3, f7
  fmin.s    f1, f10, f5
  fmax.s    f3, f0, f0
  fsgnj.s   f7, f19, f8
  fadd.d    f1, f10, f19
  fsub.d    f20, f7, f20
  fmul.d    f9, f6, f6
  fdiv.d    f20, f1, f21
  fsqrt.d   f1, f21
  fmadd.d   f20, f5, f3, f6
  fcvt.s.w  f21, s4
  fcvt.d.w  f11, t3
  fcvt.d.s  f2, f11
  fcvt.s.d  f3, f0
  fcvt.w.s  a5, f11, rtz
  fcvt.l.d  a3, f4, rtz
  feq.d     t2, f19, f3
  flt.s     s6, f8, f11
  fclass.d  t4, f8
  csrr  s2, mscratch
  csrw  mscratch, t4
  csrrw a3, mscratch, s3
  csrrs a4, mstatus, x0
  csrrc a6, mscratch, x0
  csrrwi a0, mscratch, 0
  fence
  fence.i
  c.addi a0, -13
  c.mv   a1, a2
  c.li   a3, -25
  c.add  a4, a5
  la    s0, tdat
  li    a2, 397
  li    t1, -1361
  add   a4, a0, a7
  sub   a3, s10, s9
  xor   s9, s4, s7
  or    s10, a6, a5
  and   a4, s10, a3
  addi  t2, t0, 300
  andi  s5, t1, 185
  ori   t2, a5, 1072
  xori  s7, a6, -508
  slli  a6, s9, 52
  srli  a6, s5, 12
  srai  t1, s10, 18
  sllw  s11, t1, a6
  sraw  a6, t4, a0
  slt   a0, s9, a7
  sltu  s9, t2, t2
  sltiu s7, s2, 466
  lui   s11, 0x6c172
  auipc t1, 0x8e
  addw  a6, t4, s11
  subw  s11, s11, s4
  addiw t4, t0, 1884
  mul   t5, s11, t0
  mulh  s10, a2, a5
  mulhu a3, s2, s9
  mulw  s7, t4, a3
  div   t2, t2, s3
  divu  s7, s4, a6
  rem   a1, a5, a7
  remu  t0, a2, a5
  divw  a7, a4, a4
  remw  t5, t3, t0
  sd    a2, 8(s0)
  ld    s8, 8(s0)
  sw    s9, 8(s0)
  lw    t2, 8(s0)
  lwu   t0, 8(s0)
  lh    s8, 8(s0)
  lbu   s11, 8(s0)
  lr.d      t0, (s0)
  sc.d      a2, t3, (s0)
  amoadd.w  t2, s11, (s0)
  amoswap.d t2, s3, (s0)
  amoand.w  t1, s2, (s0)
  amoor.d   t4, a0, (s0)
  amoxor.w  t5, t5, (s0)
  amomax.d  s11, t6, (s0)
  amominu.w a4, s4, (s0)
  fmv.w.x   f9, a4
  fmv.d.x   f6, a1
  fadd.s    f6, f2, f18
  fsub.s    f20, f9, f2
  fmul.s    f20, f0, f4
  fdiv.s    f5, f20, f11
  fmin.s    f1, f21, f11
  fmax.s    f7, f21, f8
  fsgnj.s   f7, f2, f11
  fadd.d    f10, f20, f7
  fsub.d    f21, f20, f10
  fmul.d    f1, f9, f5
  fdiv.d    f19, f21, f6
  fsqrt.d   f20, f21
  fmadd.d   f18, f8, f6, f11
  fcvt.s.w  f21, s9
  fcvt.d.w  f11, t2
  fcvt.d.s  f0, f7
  fcvt.s.d  f21, f3
  fcvt.w.s  s6, f0, rtz
  fcvt.l.d  s8, f4, rtz
  feq.d     t6, f21, f19
  flt.s     a2, f21, f21
  fclass.d  t3, f9
  csrr  a2, mscratch
  csrw  mscratch, a4
  csrrw s6, mscratch, t2
  csrrs s10, mstatus, x0
  csrrc t3, mscratch, x0
  csrrwi a5, mscratch, 5
  fence
  fence.i
  c.addi a0, -17
  c.mv   a1, a2
  c.li   a3, 20
  c.add  a4, a5
  la    s0, tdat
  li    s4, 117
  li    a6, -1720
  add   s3, a5, a7
  sub   s8, a5, t2
  xor   a6, s11, t1
  or    s2, a1, a3
  and   a0, t1, s4
  addi  a1, a7, -1492
  andi  t0, t3, 1039
  ori   s4, t1, 1219
  xori  s9, t4, 909
  slli  t3, s5, 48
  srli  s8, a0, 1
  srai  t4, s4, 63
  sllw  t6, s9, t1
  sraw  t4, a5, t6
  slt   t1, t4, t5
  sltu  a5, a7, t2
  sltiu t2, t1, 1061
  lui   s9, 0xf2a8c
  auipc s10, 0x6d
  addw  a1, a1, t3
  subw  a0, s11, s4
  addiw t3, t0, 1503
  mul   t3, s8, t5
  mulh  a7, a6, s8
  mulhu s5, s11, s9
  mulw  s3, t0, s9
  div   a4, a4, t6
  divu  t0, s3, s9
  rem   t0, s10, t3
  remu  s10, t4, a2
  divw  s9, s9, s9
  remw  s2, s5, s10
  sd    t6, 0(s0)
  ld    t0, 0(s0)
  sw    s9, 0(s0)
  lw    a1, 0(s0)
  lwu   a7, 0(s0)
  lh    a4, 0(s0)
  lbu   a6, 0(s0)
  lr.d      a5, (s0)
  sc.d      t0, s10, (s0)
  amoadd.w  s10, a4, (s0)
  amoswap.d s5, s9, (s0)
  amoand.w  s9, a7, (s0)
  amoor.d   a6, s11, (s0)
  amoxor.w  a6, t6, (s0)
  amomax.d  a4, a5, (s0)
  amominu.w a0, t3, (s0)
  fmv.w.x   f20, s5
  fmv.d.x   f19, a3
  fadd.s    f19, f1, f7
  fsub.s    f11, f10, f4
  fmul.s    f2, f19, f18
  fdiv.s    f18, f4, f7
  fmin.s    f10, f10, f18
  fmax.s    f3, f1, f7
  fsgnj.s   f8, f1, f10
  fadd.d    f9, f2, f6
  fsub.d    f6, f21, f18
  fmul.d    f3, f5, f6
  fdiv.d    f7, f19, f5
  fsqrt.d   f20, f20
  fmadd.d   f18, f10, f4, f8
  fcvt.s.w  f0, a7
  fcvt.d.w  f9, a5
  fcvt.d.s  f9, f10
  fcvt.s.d  f7, f20
  fcvt.w.s  a2, f7, rtz
  fcvt.l.d  t3, f4, rtz
  feq.d     s7, f9, f0
  flt.s     s11, f1, f9
  fclass.d  a5, f4
  csrr  a5, mscratch
  csrw  mscratch, s10
  csrrw s8, mscratch, s9
  csrrs t1, mstatus, x0
  csrrc t3, mscratch, x0
  csrrwi a1, mscratch, 7
  fence
  fence.i
  c.addi a0, -20
  c.mv   a1, a2
  c.li   a3, -28
  c.add  a4, a5
  la    s0, tdat
  li    s8, 760
  li    s10, 1077
  add   t0, s2, s7
  sub   t6, a2, s2
  xor   s2, a1, a4
  or    t1, t4, t0
  and   s5, s6, a0
  addi  s2, t4, -1615
  andi  t5, a5, 2010
  ori   s5, s11, 1663
  xori  t2, a3, -491
  slli  s2, a6, 1
  srli  a0, s5, 30
  srai  s3, t4, 51
  sllw  a7, s10, a2
  sraw  s9, s8, t0
  slt   a6, s11, s9
  sltu  a5, s3, s4
  sltiu s6, s2, 245
  lui   t0, 0xec1bd
  auipc a4, 0x58
  addw  a4, s11, s10
  subw  s6, s3, a4
  addiw a2, s7, 1061
  mul   a3, a0, t6
  mulh  s11, a1, a6
  mulhu s10, a2, s9
  mulw  a2, s8, t3
  div   a4, s10, a3
  divu  s8, s11, s11
  rem   a6, a4, s3
  remu  s9, a7, a7
  divw  t6, a4, s10
  remw  s2, t6, s9
  sd    s11, 8(s0)
  ld    t1, 8(s0)
  sw    t3, 8(s0)
  lw    t3, 8(s0)
  lwu   s6, 8(s0)
  lh    a0, 8(s0)
  lbu   s3, 8(s0)
  lr.d      a2, (s0)
  sc.d      s6, a4, (s0)
  amoadd.w  s2, t6, (s0)
  amoswap.d a5, a2, (s0)
  amoand.w  s8, t1, (s0)
  amoor.d   t6, s3, (s0)
  amoxor.w  s7, t0, (s0)
  amomax.d  s9, a1, (s0)
  amominu.w a5, t0, (s0)
  fmv.w.x   f19, s3
  fmv.d.x   f19, t0
  fadd.s    f19, f18, f8
  fsub.s    f6, f20, f1
  fmul.s    f8, f6, f21
  fdiv.s    f11, f0, f10
  fmin.s    f6, f19, f21
  fmax.s    f0, f7, f18
  fsgnj.s   f19, f19, f10
  fadd.d    f5, f1, f6
  fsub.d    f2, f3, f7
  fmul.d    f9, f2, f6
  fdiv.d    f8, f0, f18
  fsqrt.d   f1, f1
  fmadd.d   f5, f11, f6, f5
  fcvt.s.w  f8, a5
  fcvt.d.w  f5, t0
  fcvt.d.s  f1, f20
  fcvt.s.d  f10, f2
  fcvt.w.s  t6, f6, rtz
  fcvt.l.d  s4, f19, rtz
  feq.d     s3, f7, f2
  flt.s     s6, f7, f5
  fclass.d  a6, f4
  csrr  s9, mscratch
  csrw  mscratch, a1
  csrrw a4, mscratch, s6
  csrrs t4, mstatus, x0
  csrrc s8, mscratch, x0
  csrrwi s7, mscratch, 3
  fence
  fence.i
  c.addi a0, 16
  c.mv   a1, a2
  c.li   a3, 16
  c.add  a4, a5
  la    s0, tdat
  li    t4, 471
  li    s9, -1477
  add   s2, a1, t2
  sub   s7, s3, s4
  xor   s11, a1, t2
  or    s10, a4, t4
  and   s3, t2, a5
  addi  a3, a5, 247
  andi  a3, a3, 762
  ori   a6, t4, 1847
  xori  s6, s11, 1903
  slli  a1, t6, 51
  srli  a7, a3, 22
  srai  t3, a0, 21
  sllw  t3, s3, s7
  sraw  t6, t1, a1
  slt   t4, s11, s6
  sltu  a5, a4, s11
  sltiu a7, s5, 1896
  lui   s6, 0x91a2
  auipc s3, 0x3c
  addw  a2, t5, a5
  subw  s8, t2, s8
  addiw t3, t2, 535
  mul   t5, a2, t5
  mulh  t0, s7, a0
  mulhu t0, t4, t5
  mulw  a3, s9, s9
  div   a6, s9, t4
  divu  t0, s5, a6
  rem   s2, a3, t2
  remu  a2, t4, s4
  divw  s6, s8, s9
  remw  a2, t0, a6
  sd    s9, 0(s0)
  ld    s11, 0(s0)
  sw    a5, 0(s0)
  lw    s6, 0(s0)
  lwu   s3, 0(s0)
  lh    a2, 0(s0)
  lbu   a7, 0(s0)
  lr.d      t3, (s0)
  sc.d      t1, a0, (s0)
  amoadd.w  a7, a1, (s0)
  amoswap.d s4, a1, (s0)
  amoand.w  a7, s2, (s0)
  amoor.d   a4, s5, (s0)
  amoxor.w  a4, a0, (s0)
  amomax.d  a6, a2, (s0)
  amominu.w t1, s6, (s0)
  fmv.w.x   f18, s3
  fmv.d.x   f1, s8
  fadd.s    f2, f10, f19
  fsub.s    f5, f8, f1
  fmul.s    f6, f6, f21
  fdiv.s    f5, f7, f3
  fmin.s    f9, f9, f8
  fmax.s    f19, f2, f1
  fsgnj.s   f7, f4, f6
  fadd.d    f4, f18, f4
  fsub.d    f9, f3, f18
  fmul.d    f20, f6, f5
  fdiv.d    f3, f7, f21
  fsqrt.d   f1, f0
  fmadd.d   f20, f1, f2, f8
  fcvt.s.w  f18, s3
  fcvt.d.w  f1, a5
  fcvt.d.s  f0, f4
  fcvt.s.d  f21, f2
  fcvt.w.s  a5, f20, rtz
  fcvt.l.d  a7, f3, rtz
  feq.d     a0, f19, f2
  flt.s     a3, f5, f20
  fclass.d  a7, f11
  csrr  t6, mscratch
  csrw  mscratch, a3
  csrrw a4, mscratch, a0
  csrrs a2, mstatus, x0
  csrrc s9, mscratch, x0
  csrrwi s8, mscratch, 30
  fence
  fence.i
  c.addi a0, -18
  c.mv   a1, a2
  c.li   a3, 22
  c.add  a4, a5
  la    s0, tdat
  li    t0, 204
  li    a2, -1113
  add   s3, s4, t2
  sub   t2, s7, a6
  xor   s5, s2, a4
  or    t5, s9, a4
  and   a7, a5, a7
  addi  s9, s2, -494
  andi  t3, s7, 592
  ori   a2, a5, 147
  xori  s9, s2, 1309
  slli  t6, a2, 22
  srli  s7, a3, 33
  srai  a4, s8, 17
  sllw  a1, s9, a4
  sraw  a4, t5, a2
  slt   s5, s2, t1
  sltu  t0, s11, s8
  sltiu a0, a4, 689
  lui   a6, 0xbe752
  auipc a7, 0x78
  addw  s5, s4, s2
  subw  a4, s3, s9
  addiw a2, a3, 430
  mul   s8, s2, s9
  mulh  s8, s7, a0
  mulhu t0, s9, s10
  mulw  s11, a4, t0
  div   s4, a7, s11
  divu  s2, s5, s2
  rem   a7, a4, s2
  remu  s2, t1, t5
  divw  a6, s10, s8
  remw  t1, s3, s10
  sd    s10, 0(s0)
  ld    s10, 0(s0)
  sw    s11, 0(s0)
  lw    s2, 0(s0)
  lwu   s8, 0(s0)
  lh    s2, 0(s0)
  lbu   s7, 0(s0)
  lr.d      t0, (s0)
  sc.d      a1, t3, (s0)
  amoadd.w  a6, a4, (s0)
  amoswap.d s7, s6, (s0)
  amoand.w  a2, a6, (s0)
  amoor.d   s11, a0, (s0)
  amoxor.w  t2, a0, (s0)
  amomax.d  s9, a1, (s0)
  amominu.w t5, s3, (s0)
  fmv.w.x   f21, s3
  fmv.d.x   f7, s4
  fadd.s    f7, f19, f9
  fsub.s    f2, f3, f21
  fmul.s    f9, f19, f3
  fdiv.s    f11, f19, f20
  fmin.s    f0, f21, f10
  fmax.s    f11, f1, f5
  fsgnj.s   f10, f18, f9
  fadd.d    f21, f5, f21
  fsub.d    f0, f7, f20
  fmul.d    f9, f10, f11
  fdiv.d    f7, f10, f9
  fsqrt.d   f9, f6
  fmadd.d   f0, f21, f19, f2
  fcvt.s.w  f0, a3
  fcvt.d.w  f8, a4
  fcvt.d.s  f6, f2
  fcvt.s.d  f10, f18
  fcvt.w.s  a1, f7, rtz
  fcvt.l.d  a6, f20, rtz
  feq.d     t0, f6, f5
  flt.s     s6, f2, f5
  fclass.d  a6, f4
  csrr  t0, mscratch
  csrw  mscratch, s8
  csrrw s9, mscratch, a7
  csrrs s7, mstatus, x0
  csrrc s5, mscratch, x0
  csrrwi t1, mscratch, 23
  fence
  fence.i
  c.addi a0, -29
  c.mv   a1, a2
  c.li   a3, -4
  c.add  a4, a5
  la    s0, tdat
  li    s11, 1638
  li    s3, -1830
  add   a5, a0, a2
  sub   a7, t5, a6
  xor   t2, a4, t4
  or    t5, a7, t3
  and   t2, s3, t4
  addi  s6, a0, 1193
  andi  t3, t3, 1317
  ori   t4, t6, 628
  xori  a7, a5, 339
  slli  t1, t5, 24
  srli  t0, t2, 33
  srai  t2, s2, 62
  sllw  s5, a1, t0
  sraw  a4, s7, s5
  slt   a0, a3, s9
  sltu  t1, t2, s9
  sltiu s4, s8, 87
  lui   a6, 0x83b92
  auipc s5, 0xe5
  addw  s10, a2, s11
  subw  t1, s3, s2
  addiw a1, t4, -183
  mul   a7, a3, s6
  mulh  t3, s5, s4
  mulhu s4, t3, s5
  mulw  a1, s4, a2
  div   a0, s9, s6
  divu  a5, s11, t5
  rem   t3, a6, a0
  remu  s6, a6, s5
  divw  a0, t1, t1
  remw  t0, s5, t6
  sd    s7, 0(s0)
  ld    a4, 0(s0)
  sw    s5, 0(s0)
  lw    a2, 0(s0)
  lwu   s11, 0(s0)
  lh    t1, 0(s0)
  lbu   t4, 0(s0)
  lr.d      s3, (s0)
  sc.d      a5, s2, (s0)
  amoadd.w  s6, t1, (s0)
  amoswap.d a6, t3, (s0)
  amoand.w  a3, s11, (s0)
  amoor.d   s5, s8, (s0)
  amoxor.w  a0, s5, (s0)
  amomax.d  s11, a4, (s0)
  amominu.w s3, t1, (s0)
  fmv.w.x   f5, t1
  fmv.d.x   f7, s10
  fadd.s    f20, f3, f7
  fsub.s    f1, f8, f21
  fmul.s    f7, f20, f9
  fdiv.s    f11, f9, f19
  fmin.s    f21, f6, f3
  fmax.s    f0, f9, f6
  fsgnj.s   f10, f8, f18
  fadd.d    f4, f4, f19
  fsub.d    f6, f20, f9
  fmul.d    f19, f8, f5
  fdiv.d    f3, f18, f7
  fsqrt.d   f11, f6
  fmadd.d   f19, f21, f21, f19
  fcvt.s.w  f18, s11
  fcvt.d.w  f3, a6
  fcvt.d.s  f11, f11
  fcvt.s.d  f18, f6
  fcvt.w.s  s4, f8, rtz
  fcvt.l.d  s8, f7, rtz
  feq.d     s4, f18, f5
  flt.s     s2, f9, f6
  fclass.d  t5, f18
  csrr  s6, mscratch
  csrw  mscratch, s3
  csrrw s3, mscratch, s3
  csrrs s7, mstatus, x0
  csrrc s5, mscratch, x0
  csrrwi a1, mscratch, 13
  fence
  fence.i
  c.addi a0, -12
  c.mv   a1, a2
  c.li   a3, 8
  c.add  a4, a5
  la    s0, tdat
  li    s2, 786
  li    s11, -43
  add   t1, s9, t6
  sub   a7, s5, a3
  xor   a4, s10, a7
  or    s9, s8, a7
  and   t5, s7, a0
  addi  s8, t5, 1642
  andi  s9, t2, 574
  ori   a1, t6, 1405
  xori  s3, s10, -628
  slli  a2, s5, 38
  srli  a1, s5, 24
  srai  s6, s11, 2
  sllw  s10, a6, a5
  sraw  a5, a1, t2
  slt   s4, s4, a6
  sltu  s11, s3, a5
  sltiu t0, t2, 92
  lui   s4, 0x620bf
  auipc s7, 0x6a
  addw  s9, a1, t3
  subw  t6, s7, s4
  addiw t1, s9, 1418
  mul   t2, a0, s7
  mulh  a5, a5, s9
  mulhu s4, s4, t3
  mulw  a2, s3, a2
  div   a6, t1, a3
  divu  s8, t3, s3
  rem   s2, t6, s2
  remu  s9, t6, t6
  divw  s9, t4, t0
  remw  s10, t0, t0
  sd    t4, 8(s0)
  ld    s7, 8(s0)
  sw    s7, 8(s0)
  lw    s8, 8(s0)
  lwu   t6, 8(s0)
  lh    s9, 8(s0)
  lbu   s7, 8(s0)
  lr.d      s11, (s0)
  sc.d      t5, s6, (s0)
  amoadd.w  s10, a5, (s0)
  amoswap.d t5, s11, (s0)
  amoand.w  a5, s9, (s0)
  amoor.d   a2, s7, (s0)
  amoxor.w  s3, s5, (s0)
  amomax.d  s10, t2, (s0)
  amominu.w a4, s3, (s0)
  fmv.w.x   f1, t1
  fmv.d.x   f9, a7
  fadd.s    f8, f8, f2
  fsub.s    f20, f4, f6
  fmul.s    f21, f8, f19
  fdiv.s    f6, f1, f9
  fmin.s    f9, f10, f3
  fmax.s    f10, f1, f10
  fsgnj.s   f11, f1, f3
  fadd.d    f10, f8, f3
  fsub.d    f6, f8, f19
  fmul.d    f10, f18, f10
  fdiv.d    f5, f5, f19
  fsqrt.d   f2, f3
  fmadd.d   f2, f11, f5, f8
  fcvt.s.w  f19, s2
  fcvt.d.w  f10, s5
  fcvt.d.s  f6, f4
  fcvt.s.d  f3, f11
  fcvt.w.s  s11, f10, rtz
  fcvt.l.d  s11, f5, rtz
  feq.d     a0, f1, f10
  flt.s     t1, f7, f4
  fclass.d  s4, f11
  csrr  a2, mscratch
  csrw  mscratch, a7
  csrrw a5, mscratch, t5
  csrrs s3, mstatus, x0
  csrrc a5, mscratch, x0
  csrrwi a0, mscratch, 30
  fence
  fence.i
  c.addi a0, -12
  c.mv   a1, a2
  c.li   a3, -11
  c.add  a4, a5
  la    s0, tdat
  li    s7, 135
  li    s10, -1060
  add   a4, s8, s2
  sub   s6, a2, a2
  xor   t6, s8, a4
  or    t4, a3, s7
  and   s3, s9, s4
  addi  s6, t1, 1485
  andi  s4, s7, 655
  ori   s3, s11, 130
  xori  t2, s7, -307
  slli  a2, s8, 48
  srli  a6, a2, 2
  srai  s10, s2, 16
  sllw  a6, s10, s9
  sraw  s10, a5, a0
  slt   s4, t1, a5
  sltu  s2, a3, t6
  sltiu a5, s5, 105
  lui   a7, 0x4ceb0
  auipc t1, 0x47
  addw  a4, t1, s2
  subw  s8, s7, a0
  addiw a5, a5, 1789
  mul   t5, t1, t4
  mulh  a1, s3, a7
  mulhu s6, a4, t0
  mulw  s3, s10, a6
  div   t2, a6, s11
  divu  s6, s7, t3
  rem   s6, a6, s3
  remu  t2, a0, t3
  divw  t0, a5, a7
  remw  s7, s6, s11
  sd    s5, 0(s0)
  ld    s8, 0(s0)
  sw    a3, 0(s0)
  lw    s10, 0(s0)
  lwu   t0, 0(s0)
  lh    s3, 0(s0)
  lbu   t1, 0(s0)
  lr.d      s6, (s0)
  sc.d      s2, s10, (s0)
  amoadd.w  s11, a1, (s0)
  amoswap.d s9, t0, (s0)
  amoand.w  a3, a2, (s0)
  amoor.d   s2, t3, (s0)
  amoxor.w  s4, a3, (s0)
  amomax.d  t4, a7, (s0)
  amominu.w s10, t1, (s0)
  fmv.w.x   f20, a7
  fmv.d.x   f19, s2
  fadd.s    f11, f7, f9
  fsub.s    f5, f2, f0
  fmul.s    f8, f0, f11
  fdiv.s    f9, f2, f11
  fmin.s    f20, f4, f6
  fmax.s    f7, f6, f19
  fsgnj.s   f21, f6, f5
  fadd.d    f18, f0, f7
  fsub.d    f5, f18, f11
  fmul.d    f11, f10, f11
  fdiv.d    f11, f21, f3
  fsqrt.d   f5, f20
  fmadd.d   f21, f10, f8, f10
  fcvt.s.w  f19, s3
  fcvt.d.w  f21, t1
  fcvt.d.s  f21, f20
  fcvt.s.d  f9, f4
  fcvt.w.s  s6, f6, rtz
  fcvt.l.d  a6, f18, rtz
  feq.d     t3, f2, f10
  flt.s     t3, f18, f0
  fclass.d  s10, f9
  csrr  s8, mscratch
  csrw  mscratch, s5
  csrrw s3, mscratch, s8
  csrrs s5, mstatus, x0
  csrrc a4, mscratch, x0
  csrrwi t3, mscratch, 24
  fence
  fence.i
  c.addi a0, 27
  c.mv   a1, a2
  c.li   a3, 17
  c.add  a4, a5
  la    s0, tdat
  li    t1, 1665
  li    s11, -1642
  add   a7, a7, a1
  sub   s9, t5, t0
  xor   s9, a5, a0
  or    s3, s8, t0
  and   s10, t5, s5
  addi  a1, s8, -306
  andi  s9, s7, 218
  ori   a3, a3, 335
  xori  a5, s8, 1942
  slli  a0, s6, 42
  srli  t2, a4, 37
  srai  a2, s8, 31
  sllw  s8, a0, a3
  sraw  s8, a4, a2
  slt   a7, t0, a2
  sltu  a4, s2, s11
  sltiu s5, t2, 82
  lui   a6, 0x7f1cf
  auipc a4, 0x7a
  addw  t3, a7, t4
  subw  s10, t2, s10
  addiw a3, s2, 1109
  mul   t1, s5, a1
  mulh  a0, a6, s5
  mulhu t1, t6, t4
  mulw  t1, a2, s11
  div   a2, s8, a4
  divu  a0, s11, a3
  rem   s8, s6, a2
  remu  a5, t3, s2
  divw  t1, t3, a0
  remw  t2, t5, a6
  sd    s7, 8(s0)
  ld    a7, 8(s0)
  sw    t6, 8(s0)
  lw    a7, 8(s0)
  lwu   a7, 8(s0)
  lh    s5, 8(s0)
  lbu   a2, 8(s0)
  lr.d      t2, (s0)
  sc.d      a1, s3, (s0)
  amoadd.w  s9, t5, (s0)
  amoswap.d s10, a7, (s0)
  amoand.w  s7, s7, (s0)
  amoor.d   s11, a4, (s0)
  amoxor.w  t6, t2, (s0)
  amomax.d  t4, s7, (s0)
  amominu.w a5, s9, (s0)
  fmv.w.x   f4, a4
  fmv.d.x   f19, a7
  fadd.s    f10, f4, f5
  fsub.s    f2, f18, f10
  fmul.s    f9, f0, f11
  fdiv.s    f1, f7, f1
  fmin.s    f11, f19, f7
  fmax.s    f5, f6, f11
  fsgnj.s   f0, f7, f7
  fadd.d    f5, f20, f19
  fsub.d    f7, f7, f1
  fmul.d    f20, f20, f19
  fdiv.d    f7, f7, f21
  fsqrt.d   f7, f18
  fmadd.d   f2, f7, f9, f21
  fcvt.s.w  f19, a2
  fcvt.d.w  f4, s6
  fcvt.d.s  f4, f8
  fcvt.s.d  f10, f11
  fcvt.w.s  a6, f2, rtz
  fcvt.l.d  s5, f18, rtz
  feq.d     t1, f7, f0
  flt.s     a5, f20, f5
  fclass.d  a6, f2
  csrr  s3, mscratch
  csrw  mscratch, s4
  csrrw a7, mscratch, t0
  csrrs a2, mstatus, x0
  csrrc s9, mscratch, x0
  csrrwi s9, mscratch, 16
  fence
  fence.i
  c.addi a0, -10
  c.mv   a1, a2
  c.li   a3, 17
  c.add  a4, a5
  la    s0, tdat
  li    t0, 1550
  li    a1, -1560
  add   t0, s3, s5
  sub   t0, a3, s8
  xor   a6, a3, s6
  or    s11, s4, a2
  and   s8, t0, a5
  addi  s10, a2, -128
  andi  s2, s3, 1836
  ori   s4, t5, 719
  xori  s11, s6, 1676
  slli  s3, t5, 61
  srli  a4, a6, 57
  srai  s4, s8, 45
  sllw  s11, a0, a3
  sraw  t1, t4, t2
  slt   a3, a3, s3
  sltu  a7, t6, s10
  sltiu s2, s7, 1369
  lui   a7, 0x5c543
  auipc a6, 0xcf
  addw  a1, s2, s11
  subw  s4, a3, s2
  addiw t0, s10, 148
  mul   a2, s5, s3
  mulh  s8, a1, s2
  mulhu t6, a6, s5
  mulw  a6, a7, a0
  div   t1, s4, s8
  divu  s10, s2, s2
  rem   a0, t0, a1
  remu  a2, a3, t4
  divw  a2, a1, t5
  remw  s4, t6, s11
  sd    s4, 8(s0)
  ld    a0, 8(s0)
  sw    t2, 8(s0)
  lw    s7, 8(s0)
  lwu   a7, 8(s0)
  lh    a6, 8(s0)
  lbu   s7, 8(s0)
  lr.d      s2, (s0)
  sc.d      s8, a2, (s0)
  amoadd.w  a6, s10, (s0)
  amoswap.d a0, t2, (s0)
  amoand.w  t6, t0, (s0)
  amoor.d   s2, s7, (s0)
  amoxor.w  t3, t3, (s0)
  amomax.d  a4, a6, (s0)
  amominu.w t4, s6, (s0)
  fmv.w.x   f1, t4
  fmv.d.x   f19, t5
  fadd.s    f1, f9, f4
  fsub.s    f19, f11, f21
  fmul.s    f9, f6, f6
  fdiv.s    f8, f0, f20
  fmin.s    f7, f20, f4
  fmax.s    f5, f18, f5
  fsgnj.s   f18, f19, f19
  fadd.d    f20, f3, f20
  fsub.d    f18, f19, f5
  fmul.d    f8, f0, f1
  fdiv.d    f9, f11, f6
  fsqrt.d   f18, f21
  fmadd.d   f2, f2, f11, f3
  fcvt.s.w  f2, a3
  fcvt.d.w  f18, a6
  fcvt.d.s  f10, f2
  fcvt.s.d  f11, f7
  fcvt.w.s  a7, f0, rtz
  fcvt.l.d  t3, f4, rtz
  feq.d     t5, f21, f10
  flt.s     t1, f18, f9
  fclass.d  s7, f0
  csrr  s11, mscratch
  csrw  mscratch, t4
  csrrw s2, mscratch, t4
  csrrs s2, mstatus, x0
  csrrc s5, mscratch, x0
  csrrwi t0, mscratch, 21
  fence
  fence.i
  c.addi a0, -8
  c.mv   a1, a2
  c.li   a3, 0
  c.add  a4, a5
  la    s0, tdat
  li    a0, 644
  li    s10, -340
  add   t5, t6, s8
  sub   a4, s4, s4
  xor   a5, t3, t6
  or    t0, s8, t6
  and   t1, s7, t4
  addi  s7, a6, 1017
  andi  t1, a4, 250
  ori   s8, s9, 1277
  xori  s3, a3, 650
  slli  a1, s4, 39
  srli  t2, s11, 15
  srai  s9, s3, 3
  sllw  s8, s2, t2
  sraw  a7, t1, t0
  slt   s9, t2, s11
  sltu  t5, s3, t4
  sltiu a4, s8, 1674
  lui   t5, 0xc6b7e
  auipc a5, 0x7d
  addw  t5, t2, s9
  subw  a3, s3, s8
  addiw a7, t4, -1607
  mul   t3, s8, t0
  mulh  s2, s11, s3
  mulhu t6, a0, a5
  mulw  a4, s8, s5
  div   s7, s5, a3
  divu  t2, t2, t6
  rem   a4, t0, a0
  remu  t4, a0, s3
  divw  s9, a0, a1
  remw  a4, a0, a2
  sd    t2, 8(s0)
  ld    t0, 8(s0)
  sw    a1, 8(s0)
  lw    t1, 8(s0)
  lwu   t4, 8(s0)
  lh    a6, 8(s0)
  lbu   t1, 8(s0)
  lr.d      a7, (s0)
  sc.d      s4, s5, (s0)
  amoadd.w  t4, t3, (s0)
  amoswap.d a4, a4, (s0)
  amoand.w  s9, s5, (s0)
  amoor.d   t4, t5, (s0)
  amoxor.w  t4, s6, (s0)
  amomax.d  s11, s6, (s0)
  amominu.w s3, t5, (s0)
  fmv.w.x   f20, t1
  fmv.d.x   f20, s5
  fadd.s    f6, f6, f0
  fsub.s    f0, f4, f19
  fmul.s    f2, f0, f11
  fdiv.s    f4, f3, f9
  fmin.s    f7, f7, f3
  fmax.s    f3, f6, f11
  fsgnj.s   f2, f0, f6
  fadd.d    f20, f7, f4
  fsub.d    f5, f21, f5
  fmul.d    f1, f11, f9
  fdiv.d    f4, f1, f1
  fsqrt.d   f10, f20
  fmadd.d   f5, f5, f0, f6
  fcvt.s.w  f21, s4
  fcvt.d.w  f5, a4
  fcvt.d.s  f5, f0
  fcvt.s.d  f19, f2
  fcvt.w.s  s7, f7, rtz
  fcvt.l.d  t4, f21, rtz
  feq.d     a6, f7, f0
  flt.s     s8, f4, f20
  fclass.d  s7, f2
  csrr  s7, mscratch
  csrw  mscratch, a4
  csrrw a0, mscratch, t0
  csrrs t4, mstatus, x0
  csrrc t6, mscratch, x0
  csrrwi a5, mscratch, 5
  fence
  fence.i
  c.addi a0, 23
  c.mv   a1, a2
  c.li   a3, -20
  c.add  a4, a5
  la    s0, tdat
  li    a1, 1476
  li    s6, 1294
  add   a2, a6, s6
  sub   t4, a3, a3
  xor   t0, a5, a7
  or    t5, a6, a5
  and   a3, a0, s11
  addi  a1, t0, -1190
  andi  s10, t0, 205
  ori   a0, t1, 765
  xori  t0, a0, -154
  slli  s11, s2, 16
  srli  a2, s9, 4
  srai  t6, a4, 11
  sllw  t6, a3, a7
  sraw  t0, s5, s2
  slt   s10, a1, t1
  sltu  a0, a6, a4
  sltiu a1, a5, 485
  lui   s10, 0x89126
  auipc t6, 0x33
  addw  s10, a4, s10
  subw  a6, a2, a4
  addiw a7, t4, 362
  mul   s2, a2, t0
  mulh  a7, a5, s3
  mulhu a4, s2, a2
  mulw  s3, a3, s4
  div   a7, s5, t4
  divu  a1, a6, s9
  rem   a7, a1, a0
  remu  s5, a1, s7
  divw  a4, s9, a7
  remw  s10, s11, t6
  sd    a2, 8(s0)
  ld    a1, 8(s0)
  sw    a3, 8(s0)
  lw    a6, 8(s0)
  lwu   t6, 8(s0)
  lh    s3, 8(s0)
  lbu   s11, 8(s0)
  lr.d      a6, (s0)
  sc.d      a3, s11, (s0)
  amoadd.w  a1, t6, (s0)
  amoswap.d s6, s9, (s0)
  amoand.w  s11, t4, (s0)
  amoor.d   t3, s5, (s0)
  amoxor.w  s8, s8, (s0)
  amomax.d  a7, a5, (s0)
  amominu.w s4, s2, (s0)
  fmv.w.x   f9, a0
  fmv.d.x   f9, a5
  fadd.s    f9, f20, f8
  fsub.s    f18, f4, f20
  fmul.s    f1, f3, f20
  fdiv.s    f19, f10, f18
  fmin.s    f9, f20, f5
  fmax.s    f9, f8, f3
  fsgnj.s   f3, f5, f10
  fadd.d    f7, f7, f10
  fsub.d    f8, f10, f10
  fmul.d    f1, f18, f19
  fdiv.d    f1, f20, f9
  fsqrt.d   f21, f18
  fmadd.d   f10, f8, f5, f7
  fcvt.s.w  f1, s8
  fcvt.d.w  f7, a3
  fcvt.d.s  f7, f9
  fcvt.s.d  f2, f2
  fcvt.w.s  a5, f3, rtz
  fcvt.l.d  s11, f10, rtz
  feq.d     a2, f21, f4
  flt.s     t3, f6, f19
  fclass.d  s9, f7
  csrr  a4, mscratch
  csrw  mscratch, a5
  csrrw a7, mscratch, a0
  csrrs a4, mstatus, x0
  csrrc a4, mscratch, x0
  csrrwi s7, mscratch, 8
  fence
  fence.i
  c.addi a0, -14
  c.mv   a1, a2
  c.li   a3, 1
  c.add  a4, a5
  la    s0, tdat
  li    s7, 961
  li    s2, -1189
  add   s4, t6, t1
  sub   a1, s8, s3
  xor   s6, s8, t4
  or    t0, a5, s6
  and   t0, a7, s8
  addi  a5, s4, -2045
  andi  s4, a1, 896
  ori   t2, a3, 894
  xori  a7, s5, -1658
  slli  t4, t1, 21
  srli  s2, t1, 11
  srai  t5, s7, 51
  sllw  s3, s11, s9
  sraw  s4, s8, a6
  slt   a5, s4, s6
  sltu  s5, s9, a4
  sltiu t3, s5, 1795
  lui   t1, 0xcad4
  auipc t4, 0x13
  addw  s11, s7, t6
  subw  t1, a7, a6
  addiw a0, t0, 1175
  mul   a2, t3, s6
  mulh  s4, t6, s11
  mulhu t1, s6, t4
  mulw  s8, s9, s11
  div   t6, s11, t5
  divu  a3, a2, t6
  rem   s10, t6, s8
  remu  t2, t5, s2
  divw  t4, s10, t2
  remw  a6, t5, s10
  sd    s7, 8(s0)
  ld    s2, 8(s0)
  sw    t6, 8(s0)
  lw    t3, 8(s0)
  lwu   a7, 8(s0)
  lh    s5, 8(s0)
  lbu   s9, 8(s0)
  lr.d      a4, (s0)
  sc.d      a2, t0, (s0)
  amoadd.w  s5, a1, (s0)
  amoswap.d t0, t6, (s0)
  amoand.w  a2, s5, (s0)
  amoor.d   s3, a3, (s0)
  amoxor.w  s9, s8, (s0)
  amomax.d  a0, a4, (s0)
  amominu.w a6, s5, (s0)
  fmv.w.x   f5, s2
  fmv.d.x   f19, s9
  fadd.s    f5, f20, f10
  fsub.s    f5, f1, f18
  fmul.s    f0, f6, f4
  fdiv.s    f10, f18, f19
  fmin.s    f20, f3, f9
  fmax.s    f19, f19, f5
  fsgnj.s   f1, f9, f8
  fadd.d    f21, f4, f2
  fsub.d    f0, f6, f11
  fmul.d    f4, f8, f1
  fdiv.d    f20, f19, f11
  fsqrt.d   f0, f8
  fmadd.d   f9, f1, f5, f7
  fcvt.s.w  f8, a3
  fcvt.d.w  f0, s11
  fcvt.d.s  f6, f11
  fcvt.s.d  f8, f10
  fcvt.w.s  t3, f20, rtz
  fcvt.l.d  s3, f3, rtz
  feq.d     a3, f21, f7
  flt.s     s6, f10, f21
  fclass.d  t5, f8
  csrr  t6, mscratch
  csrw  mscratch, t3
  csrrw a0, mscratch, s6
  csrrs t0, mstatus, x0
  csrrc s7, mscratch, x0
  csrrwi t1, mscratch, 11
  fence
  fence.i
  c.addi a0, 5
  c.mv   a1, a2
  c.li   a3, 5
  c.add  a4, a5
  la    s0, tdat
  li    a3, 810
  li    t1, 1094
  add   s10, a1, s8
  sub   t2, s5, t5
  xor   t6, s11, s7
  or    t3, a2, s10
  and   s6, s8, s5
  addi  s5, s4, 1928
  andi  s7, a5, 645
  ori   a5, t0, 1486
  xori  a0, t4, 126
  slli  s10, a4, 20
  srli  t5, s11, 50
  srai  s5, a4, 32
  sllw  a7, t1, t2
  sraw  s6, a1, s2
  slt   t6, a2, a5
  sltu  t0, s10, t2
  sltiu a6, s4, 560
  lui   t3, 0x987c2
  auipc a2, 0x33
  addw  s9, a1, s9
  subw  s10, s9, a0
  addiw s11, s4, 1960
  mul   a4, s11, s6
  mulh  t5, a2, a5
  mulhu t6, a7, s2
  mulw  s7, t5, t3
  div   s10, a6, a1
  divu  a1, t3, s4
  rem   s3, a1, s2
  remu  t4, t6, s11
  divw  a1, s5, a6
  remw  a3, s6, s3
  sd    s6, 0(s0)
  ld    s4, 0(s0)
  sw    t3, 0(s0)
  lw    t5, 0(s0)
  lwu   a3, 0(s0)
  lh    s9, 0(s0)
  lbu   a1, 0(s0)
  lr.d      t5, (s0)
  sc.d      t2, s2, (s0)
  amoadd.w  s7, a5, (s0)
  amoswap.d t3, a7, (s0)
  amoand.w  s5, s2, (s0)
  amoor.d   s10, s9, (s0)
  amoxor.w  t0, s4, (s0)
  amomax.d  t3, a6, (s0)
  amominu.w a6, s5, (s0)
  fmv.w.x   f2, a2
  fmv.d.x   f1, a4
  fadd.s    f20, f21, f5
  fsub.s    f19, f0, f18
  fmul.s    f21, f5, f8
  fdiv.s    f10, f2, f18
  fmin.s    f3, f20, f1
  fmax.s    f0, f1, f10
  fsgnj.s   f0, f10, f2
  fadd.d    f7, f18, f9
  fsub.d    f9, f20, f19
  fmul.d    f0, f10, f19
  fdiv.d    f19, f18, f10
  fsqrt.d   f10, f8
  fmadd.d   f10, f1, f5, f20
  fcvt.s.w  f0, a6
  fcvt.d.w  f21, s6
  fcvt.d.s  f8, f5
  fcvt.s.d  f0, f21
  fcvt.w.s  t4, f9, rtz
  fcvt.l.d  t0, f3, rtz
  feq.d     s8, f20, f7
  flt.s     s2, f1, f6
  fclass.d  s9, f21
  csrr  s11, mscratch
  csrw  mscratch, a1
  csrrw a5, mscratch, t0
  csrrs a4, mstatus, x0
  csrrc t2, mscratch, x0
  csrrwi t2, mscratch, 5
  fence
  fence.i
  c.addi a0, -15
  c.mv   a1, a2
  c.li   a3, -3
  c.add  a4, a5
  la    s0, tdat
  li    t0, 344
  li    t2, -1285
  add   a4, a2, a0
  sub   t2, t1, s6
  xor   s10, a4, t0
  or    s5, t3, s11
  and   a4, s5, t0
  addi  s10, a4, 171
  andi  s7, t3, 342
  ori   t2, t1, 476
  xori  s9, s6, 744
  slli  t3, s5, 19
  srli  a4, a2, 62
  srai  a3, s2, 7
  sllw  a6, t6, s8
  sraw  s4, t0, t2
  slt   s3, a1, s8
  sltu  a5, s7, t0
  sltiu s3, s8, 1350
  lui   a2, 0x23c60
  auipc t5, 0x2f
  addw  t3, t3, a1
  subw  t3, s3, a0
  addiw t6, t4, 1918
  mul   s10, s7, t6
  mulh  a5, s11, s5
  mulhu t0, a1, t2
  mulw  a7, a4, a7
  div   s3, a2, t6
  divu  a7, t3, a6
  rem   s5, s3, s8
  remu  a2, s11, a5
  divw  s10, t6, t1
  remw  a4, a2, a3
  sd    s10, 0(s0)
  ld    s8, 0(s0)
  sw    a5, 0(s0)
  lw    s2, 0(s0)
  lwu   a2, 0(s0)
  lh    t2, 0(s0)
  lbu   s8, 0(s0)
  lr.d      t4, (s0)
  sc.d      s11, a1, (s0)
  amoadd.w  s2, s5, (s0)
  amoswap.d a7, a3, (s0)
  amoand.w  t3, a6, (s0)
  amoor.d   a4, s10, (s0)
  amoxor.w  s5, s8, (s0)
  amomax.d  t1, t1, (s0)
  amominu.w s7, s5, (s0)
  fmv.w.x   f9, a4
  fmv.d.x   f9, s7
  fadd.s    f7, f10, f0
  fsub.s    f7, f18, f18
  fmul.s    f7, f7, f10
  fdiv.s    f21, f8, f8
  fmin.s    f10, f5, f10
  fmax.s    f11, f9, f0
  fsgnj.s   f6, f0, f7
  fadd.d    f2, f1, f11
  fsub.d    f3, f4, f4
  fmul.d    f0, f18, f20
  fdiv.d    f20, f6, f11
  fsqrt.d   f18, f5
  fmadd.d   f1, f10, f1, f6
  fcvt.s.w  f11, a6
  fcvt.d.w  f3, a4
  fcvt.d.s  f10, f6
  fcvt.s.d  f3, f8
  fcvt.w.s  s8, f20, rtz
  fcvt.l.d  a4, f19, rtz
  feq.d     s2, f9, f18
  flt.s     t4, f4, f21
  fclass.d  s7, f19
  csrr  s3, mscratch
  csrw  mscratch, t1
  csrrw s4, mscratch, t5
  csrrs t3, mstatus, x0
  csrrc a5, mscratch, x0
  csrrwi a5, mscratch, 27
  fence
  fence.i
  c.addi a0, 5
  c.mv   a1, a2
  c.li   a3, -14
  c.add  a4, a5
  la    s0, tdat
  li    s7, 1318
  li    s5, 1801
  add   s11, s11, s3
  sub   t4, s10, a0
  xor   s4, t3, s3
  or    a6, a5, s6
  and   a2, t0, a0
  addi  s10, s3, -785
  andi  s4, s6, 1469
  ori   s2, s6, 704
  xori  a6, t2, 121
  slli  s3, t4, 22
  srli  s6, s4, 42
  srai  t6, t4, 49
  sllw  t2, s7, t4
  sraw  t4, t2, s11
  slt   s10, t3, a1
  sltu  t3, s6, t0
  sltiu s4, t2, 1817
  lui   a7, 0x41d8f
  auipc s2, 0x27
  addw  s10, t3, s8
  subw  s4, t6, a1
  addiw a0, a6, -940
  mul   s3, s5, a1
  mulh  a3, a1, s5
  mulhu s9, t5, s4
  mulw  s2, a1, t2
  div   t6, s4, a3
  divu  s10, a0, s4
  rem   t1, t3, t3
  remu  s7, a0, t0
  divw  a4, t5, s7
  remw  t3, a2, a1
  sd    t6, 8(s0)
  ld    t1, 8(s0)
  sw    t4, 8(s0)
  lw    a2, 8(s0)
  lwu   s5, 8(s0)
  lh    s10, 8(s0)
  lbu   a7, 8(s0)
  lr.d      t4, (s0)
  sc.d      t0, t6, (s0)
  amoadd.w  s6, t6, (s0)
  amoswap.d s10, s2, (s0)
  amoand.w  a5, s3, (s0)
  amoor.d   s6, a6, (s0)
  amoxor.w  s5, s7, (s0)
  amomax.d  a3, a5, (s0)
  amominu.w s6, s4, (s0)
  fmv.w.x   f4, s4
  fmv.d.x   f18, s9
  fadd.s    f21, f19, f20
  fsub.s    f21, f9, f1
  fmul.s    f0, f20, f8
  fdiv.s    f2, f20, f4
  fmin.s    f11, f5, f1
  fmax.s    f18, f20, f7
  fsgnj.s   f7, f1, f6
  fadd.d    f20, f11, f7
  fsub.d    f8, f6, f2
  fmul.d    f9, f0, f18
  fdiv.d    f5, f19, f18
  fsqrt.d   f18, f7
  fmadd.d   f18, f0, f0, f6
  fcvt.s.w  f21, s6
  fcvt.d.w  f1, a0
  fcvt.d.s  f6, f19
  fcvt.s.d  f10, f3
  fcvt.w.s  s2, f5, rtz
  fcvt.l.d  s9, f0, rtz
  feq.d     a1, f21, f5
  flt.s     a3, f9, f5
  fclass.d  t3, f0
  csrr  s5, mscratch
  csrw  mscratch, a2
  csrrw s11, mscratch, t5
  csrrs s9, mstatus, x0
  csrrc s8, mscratch, x0
  csrrwi t4, mscratch, 8
  fence
  fence.i
  c.addi a0, 13
  c.mv   a1, a2
  c.li   a3, -16
  c.add  a4, a5
  la    s0, tdat
  li    s2, 1241
  li    a4, 166
  add   t4, s7, t4
  sub   a2, t2, t0
  xor   a7, a4, t6
  or    s4, a6, s8
  and   s2, s8, t2
  addi  t5, a5, 1060
  andi  s6, t5, 617
  ori   a4, s6, 246
  xori  a6, t2, -774
  slli  t4, s10, 21
  srli  a3, t6, 6
  srai  a5, s3, 54
  sllw  t4, t1, s8
  sraw  s7, a5, s3
  slt   t6, s5, t0
  sltu  t2, t6, s2
  sltiu a7, s9, 1
  lui   s5, 0xe889e
  auipc a4, 0x15
  addw  a1, s6, a2
  subw  s4, s8, s11
  addiw s9, t4, 1181
  mul   t3, s7, t0
  mulh  s9, a3, s8
  mulhu a2, s10, s11
  mulw  t1, a6, t2
  div   a7, s11, t4
  divu  s5, t1, a0
  rem   s2, a7, t4
  remu  s11, a7, t2
  divw  a6, t3, s9
  remw  s9, s9, t6
  sd    s2, 0(s0)
  ld    t0, 0(s0)
  sw    s3, 0(s0)
  lw    s4, 0(s0)
  lwu   s10, 0(s0)
  lh    a5, 0(s0)
  lbu   t4, 0(s0)
  lr.d      t6, (s0)
  sc.d      s9, t3, (s0)
  amoadd.w  s4, s8, (s0)
  amoswap.d t4, s3, (s0)
  amoand.w  t3, s8, (s0)
  amoor.d   s4, a5, (s0)
  amoxor.w  t6, s3, (s0)
  amomax.d  t3, a4, (s0)
  amominu.w s3, a0, (s0)
  fmv.w.x   f19, t0
  fmv.d.x   f7, t4
  fadd.s    f19, f1, f21
  fsub.s    f7, f11, f0
  fmul.s    f1, f6, f10
  fdiv.s    f8, f19, f7
  fmin.s    f7, f3, f6
  fmax.s    f8, f19, f9
  fsgnj.s   f3, f4, f5
  fadd.d    f10, f9, f6
  fsub.d    f2, f21, f18
  fmul.d    f19, f7, f1
  fdiv.d    f5, f11, f18
  fsqrt.d   f6, f9
  fmadd.d   f7, f3, f3, f8
  fcvt.s.w  f3, s8
  fcvt.d.w  f8, s10
  fcvt.d.s  f21, f21
  fcvt.s.d  f7, f4
  fcvt.w.s  a0, f9, rtz
  fcvt.l.d  a1, f0, rtz
  feq.d     s10, f4, f21
  flt.s     s4, f8, f3
  fclass.d  t6, f9
  csrr  t2, mscratch
  csrw  mscratch, s6
  csrrw s2, mscratch, s6
  csrrs a4, mstatus, x0
  csrrc t6, mscratch, x0
  csrrwi s11, mscratch, 17
  fence
  fence.i
  c.addi a0, -27
  c.mv   a1, a2
  c.li   a3, -10
  c.add  a4, a5
  la    s0, tdat
  li    s2, 1039
  li    s11, 1398
  add   a0, a3, t5
  sub   a6, t5, s4
  xor   s7, s2, a2
  or    t5, t3, t6
  and   s3, t1, t4
  addi  t3, a7, 277
  andi  a2, s10, 425
  ori   t5, t5, 1809
  xori  t4, a1, 701
  slli  t6, s9, 46
  srli  t0, a7, 61
  srai  s3, a1, 24
  sllw  s10, s11, s3
  sraw  s6, s5, t2
  slt   a0, s10, s8
  sltu  s3, a1, s8
  sltiu t0, t6, 1415
  lui   t1, 0x2a110
  auipc s2, 0xd0
  addw  a4, t2, a7
  subw  a1, t6, t4
  addiw t2, s5, 1492
  mul   s7, a6, t5
  mulh  s11, s5, s6
  mulhu s4, s6, s9
  mulw  a6, a6, s6
  div   s11, s3, s2
  divu  a1, a2, s11
  rem   t2, t2, s8
  remu  s2, a3, s11
  divw  a0, a7, a3
  remw  s4, s11, a6
  sd    s11, 8(s0)
  ld    a4, 8(s0)
  sw    s11, 8(s0)
  lw    t3, 8(s0)
  lwu   t1, 8(s0)
  lh    s6, 8(s0)
  lbu   s11, 8(s0)
  lr.d      s11, (s0)
  sc.d      t4, s9, (s0)
  amoadd.w  a5, a1, (s0)
  amoswap.d t3, a1, (s0)
  amoand.w  t3, t5, (s0)
  amoor.d   a4, a2, (s0)
  amoxor.w  s7, s5, (s0)
  amomax.d  s5, a7, (s0)
  amominu.w a7, s4, (s0)
  fmv.w.x   f4, s5
  fmv.d.x   f8, t0
  fadd.s    f19, f1, f10
  fsub.s    f6, f1, f20
  fmul.s    f10, f5, f18
  fdiv.s    f11, f8, f21
  fmin.s    f20, f4, f4
  fmax.s    f11, f2, f18
  fsgnj.s   f11, f7, f1
  fadd.d    f8, f2, f1
  fsub.d    f19, f9, f3
  fmul.d    f18, f21, f10
  fdiv.d    f6, f1, f4
  fsqrt.d   f0, f5
  fmadd.d   f21, f0, f20, f20
  fcvt.s.w  f4, a6
  fcvt.d.w  f6, t2
  fcvt.d.s  f0, f9
  fcvt.s.d  f21, f19
  fcvt.w.s  t5, f19, rtz
  fcvt.l.d  t0, f3, rtz
  feq.d     t4, f19, f4
  flt.s     s7, f20, f20
  fclass.d  t4, f19
  csrr  s3, mscratch
  csrw  mscratch, a3
  csrrw a6, mscratch, s7
  csrrs s3, mstatus, x0
  csrrc s11, mscratch, x0
  csrrwi a6, mscratch, 11
  fence
  fence.i
  c.addi a0, -25
  c.mv   a1, a2
  c.li   a3, -27
  c.add  a4, a5
  la    s0, tdat
  li    s3, 1622
  li    t2, -1755
  add   s4, s11, s2
  sub   s10, t3, a4
  xor   s9, t5, s4
  or    a0, s10, s4
  and   s5, a7, a0
  addi  s3, s8, -108
  andi  t0, a3, 154
  ori   s4, s9, 304
  xori  a5, s5, 998
  slli  a3, t5, 46
  srli  s11, t6, 47
  srai  s2, s2, 36
  sllw  t0, a2, s3
  sraw  s6, a0, s5
  slt   s11, s9, t6
  sltu  s3, t2, a0
  sltiu t0, t6, 1741
  lui   a3, 0xf941a
  auipc t3, 0x13
  addw  t5, s3, s10
  subw  s2, t3, s3
  addiw s4, a4, 880
  mul   a6, s3, t1
  mulh  s7, s6, t3
  mulhu s9, s8, t2
  mulw  s5, a4, t4
  div   t2, t4, s7
  divu  a5, s3, a5
  rem   a6, s10, s3
  remu  t0, a3, a0
  divw  a5, s2, t3
  remw  a0, t3, s2
  sd    s2, 0(s0)
  ld    s11, 0(s0)
  sw    t4, 0(s0)
  lw    t2, 0(s0)
  lwu   t2, 0(s0)
  lh    s4, 0(s0)
  lbu   s9, 0(s0)
  lr.d      s6, (s0)
  sc.d      a0, a5, (s0)
  amoadd.w  s3, s6, (s0)
  amoswap.d s6, a2, (s0)
  amoand.w  t1, a1, (s0)
  amoor.d   s5, a4, (s0)
  amoxor.w  s11, s6, (s0)
  amomax.d  a7, s6, (s0)
  amominu.w a4, s5, (s0)
  fmv.w.x   f20, a3
  fmv.d.x   f20, t0
  fadd.s    f5, f4, f4
  fsub.s    f10, f1, f11
  fmul.s    f9, f2, f2
  fdiv.s    f8, f11, f8
  fmin.s    f2, f5, f18
  fmax.s    f21, f10, f7
  fsgnj.s   f10, f0, f3
  fadd.d    f5, f5, f3
  fsub.d    f0, f7, f11
  fmul.d    f18, f6, f19
  fdiv.d    f7, f7, f18
  fsqrt.d   f5, f11
  fmadd.d   f1, f10, f8, f0
  fcvt.s.w  f7, s11
  fcvt.d.w  f20, s8
  fcvt.d.s  f20, f9
  fcvt.s.d  f7, f9
  fcvt.w.s  s2, f5, rtz
  fcvt.l.d  t5, f18, rtz
  feq.d     s8, f9, f8
  flt.s     s6, f19, f20
  fclass.d  a6, f2
  csrr  s2, mscratch
  csrw  mscratch, a4
  csrrw s11, mscratch, t3
  csrrs t5, mstatus, x0
  csrrc t4, mscratch, x0
  csrrwi t6, mscratch, 30
  fence
  fence.i
  c.addi a0, 16
  c.mv   a1, a2
  c.li   a3, -4
  c.add  a4, a5
  la    s0, tdat
  li    t1, 418
  li    t2, 675
  add   t0, t5, s3
  sub   a0, s3, t6
  xor   s2, s8, a4
  or    s6, a5, s7
  and   a4, t0, s9
  addi  s6, a5, 121
  andi  t5, a7, 570
  ori   s4, t0, 987
  xori  s7, s7, 1666
  slli  s9, t1, 3
  srli  a2, t2, 53
  srai  a7, t0, 15
  sllw  t6, s9, s7
  sraw  s3, t4, t3
  slt   t2, t5, t2
  sltu  t0, t4, a6
  sltiu a7, a0, 463
  lui   t4, 0xd50f7
  auipc t0, 0xbc
  addw  a3, t3, s5
  subw  t2, s11, a7
  addiw t3, s9, -814
  mul   t0, s5, s6
  mulh  s2, a2, s11
  mulhu t6, s2, s2
  mulw  s3, a6, t0
  div   s3, s4, s3
  divu  a7, s5, a1
  rem   a1, t6, a0
  remu  a4, a3, s11
  divw  t1, s6, s5
  remw  s9, s2, s2
  sd    s9, 8(s0)
  ld    s5, 8(s0)
  sw    s7, 8(s0)
  lw    s2, 8(s0)
  lwu   t3, 8(s0)
  lh    a0, 8(s0)
  lbu   s6, 8(s0)
  lr.d      a0, (s0)
  sc.d      t4, t6, (s0)
  amoadd.w  a1, s2, (s0)
  amoswap.d a3, t2, (s0)
  amoand.w  s2, a3, (s0)
  amoor.d   a6, s2, (s0)
  amoxor.w  a1, t3, (s0)
  amomax.d  s6, t5, (s0)
  amominu.w s2, s2, (s0)
  fmv.w.x   f6, a3
  fmv.d.x   f10, a7
  fadd.s    f21, f20, f19
  fsub.s    f2, f1, f3
  fmul.s    f3, f7, f7
  fdiv.s    f3, f18, f9
  fmin.s    f20, f19, f7
  fmax.s    f10, f6, f9
  fsgnj.s   f9, f1, f6
  fadd.d    f9, f8, f20
  fsub.d    f18, f9, f11
  fmul.d    f20, f5, f8
  fdiv.d    f19, f4, f7
  fsqrt.d   f8, f7
  fmadd.d   f2, f4, f20, f5
  fcvt.s.w  f21, a4
  fcvt.d.w  f7, s10
  fcvt.d.s  f1, f20
  fcvt.s.d  f1, f0
  fcvt.w.s  a0, f2, rtz
  fcvt.l.d  a6, f2, rtz
  feq.d     a1, f1, f11
  flt.s     a4, f2, f1
  fclass.d  t3, f2
  csrr  a5, mscratch
  csrw  mscratch, a7
  csrrw a4, mscratch, a5
  csrrs a1, mstatus, x0
  csrrc t5, mscratch, x0
  csrrwi s5, mscratch, 8
  fence
  fence.i
  c.addi a0, -15
  c.mv   a1, a2
  c.li   a3, 17
  c.add  a4, a5
  la    s0, tdat
  li    t2, 737
  li    s11, -1302
  add   s2, t4, t0
  sub   a0, t3, t3
  xor   s7, s2, s5
  or    t0, a1, s7
  and   t2, t1, s2
  addi  a5, s10, 1673
  andi  s5, s6, 259
  ori   a2, s11, 1163
  xori  t4, a3, -1904
  slli  s8, t3, 44
  srli  a4, a5, 15
  srai  t3, s10, 50
  sllw  s8, s3, s10
  sraw  t2, s11, t5
  slt   s11, t5, t0
  sltu  s8, s2, t3
  sltiu t1, s3, 1975
  lui   s5, 0x8a85
  auipc t4, 0xb5
  addw  t4, t3, s4
  subw  s9, s11, s9
  addiw t1, s8, -651
  mul   s2, s11, a3
  mulh  s8, s11, a3
  mulhu t0, a7, a1
  mulw  a5, t1, t6
  div   s2, a6, s4
  divu  a3, s2, s11
  rem   t2, s3, s9
  remu  a6, s11, a5
  divw  t5, t3, a5
  remw  t1, t2, a3
  sd    t3, 8(s0)
  ld    s4, 8(s0)
  sw    t1, 8(s0)
  lw    a5, 8(s0)
  lwu   s8, 8(s0)
  lh    s5, 8(s0)
  lbu   t5, 8(s0)
  lr.d      a2, (s0)
  sc.d      t4, s8, (s0)
  amoadd.w  s6, s8, (s0)
  amoswap.d s7, t6, (s0)
  amoand.w  t3, a3, (s0)
  amoor.d   s10, a4, (s0)
  amoxor.w  t6, t0, (s0)
  amomax.d  s7, a7, (s0)
  amominu.w s7, s10, (s0)
  fmv.w.x   f2, s6
  fmv.d.x   f20, t0
  fadd.s    f9, f20, f18
  fsub.s    f0, f21, f19
  fmul.s    f20, f8, f1
  fdiv.s    f1, f6, f19
  fmin.s    f3, f8, f21
  fmax.s    f11, f20, f20
  fsgnj.s   f10, f18, f10
  fadd.d    f20, f7, f21
  fsub.d    f10, f5, f6
  fmul.d    f20, f9, f7
  fdiv.d    f1, f0, f19
  fsqrt.d   f5, f19
  fmadd.d   f10, f21, f0, f19
  fcvt.s.w  f0, t2
  fcvt.d.w  f19, a1
  fcvt.d.s  f2, f4
  fcvt.s.d  f5, f18
  fcvt.w.s  s10, f5, rtz
  fcvt.l.d  s7, f9, rtz
  feq.d     a1, f10, f1
  flt.s     a7, f5, f0
  fclass.d  t2, f8
  csrr  t2, mscratch
  csrw  mscratch, t5
  csrrw s4, mscratch, s3
  csrrs a3, mstatus, x0
  csrrc s7, mscratch, x0
  csrrwi s7, mscratch, 11
  fence
  fence.i
  c.addi a0, -27
  c.mv   a1, a2
  c.li   a3, -31
  c.add  a4, a5
  la    s0, tdat
  li    s8, 1187
  li    t2, -160
  add   s8, a7, a1
  sub   s11, a4, s2
  xor   t2, a0, s4
  or    t2, a3, a6
  and   t1, a1, s4
  addi  a4, a7, -132
  andi  s7, s5, 1646
  ori   t2, a4, 619
  xori  t4, a7, 1395
  slli  t2, a2, 19
  srli  t2, a0, 35
  srai  s9, t6, 41
  sllw  a6, a0, a2
  sraw  t4, s9, s6
  slt   a4, a6, a7
  sltu  a0, a0, t3
  sltiu t0, a3, 751
  lui   a0, 0x9990c
  auipc t6, 0x4
  addw  s8, a2, a4
  subw  a4, t6, s9
  addiw t4, s6, 1491
  mul   a4, s10, a5
  mulh  t1, a2, s5
  mulhu s8, t1, s5
  mulw  a3, a0, a1
  div   s6, s5, a2
  divu  a2, t3, a0
  rem   a3, a4, t0
  remu  a4, s5, s9
  divw  a4, s5, t3
  remw  a7, a1, a4
  sd    s5, 0(s0)
  ld    a6, 0(s0)
  sw    s5, 0(s0)
  lw    s7, 0(s0)
  lwu   a4, 0(s0)
  lh    t1, 0(s0)
  lbu   a6, 0(s0)
  lr.d      a2, (s0)
  sc.d      s10, t5, (s0)
  amoadd.w  s8, s7, (s0)
  amoswap.d s8, t0, (s0)
  amoand.w  s2, a1, (s0)
  amoor.d   a6, a6, (s0)
  amoxor.w  t5, t3, (s0)
  amomax.d  s8, t0, (s0)
  amominu.w s5, s4, (s0)
  fmv.w.x   f7, s5
  fmv.d.x   f2, t6
  fadd.s    f1, f11, f9
  fsub.s    f0, f5, f4
  fmul.s    f2, f8, f3
  fdiv.s    f0, f18, f5
  fmin.s    f18, f4, f8
  fmax.s    f4, f19, f19
  fsgnj.s   f18, f20, f20
  fadd.d    f5, f1, f1
  fsub.d    f2, f9, f6
  fmul.d    f1, f21, f18
  fdiv.d    f0, f9, f0
  fsqrt.d   f7, f21
  fmadd.d   f19, f2, f11, f8
  fcvt.s.w  f20, s3
  fcvt.d.w  f11, a0
  fcvt.d.s  f9, f0
  fcvt.s.d  f0, f19
  fcvt.w.s  t3, f8, rtz
  fcvt.l.d  s4, f18, rtz
  feq.d     s2, f18, f1
  flt.s     t5, f11, f4
  fclass.d  s10, f8
  csrr  a1, mscratch
  csrw  mscratch, t1
  csrrw a4, mscratch, s9
  csrrs a3, mstatus, x0
  csrrc t2, mscratch, x0
  csrrwi a4, mscratch, 29
  fence
  fence.i
  c.addi a0, 24
  c.mv   a1, a2
  c.li   a3, -2
  c.add  a4, a5
  la    s0, tdat
  li    a0, 82
  li    t4, 1418
  add   s8, a4, s6
  sub   s2, a4, s7
  xor   s9, t3, a5
  or    a7, s6, s11
  and   t5, t5, a3
  addi  a1, s7, -1429
  andi  t4, s2, 1509
  ori   t2, a2, 1386
  xori  s7, a7, 1214
  slli  s9, s9, 63
  srli  a0, t5, 45
  srai  s6, t2, 7
  sllw  s8, s7, t6
  sraw  s10, a0, a3
  slt   t3, a3, s3
  sltu  a4, a3, t5
  sltiu s5, t5, 602
  lui   s3, 0xe7fa3
  auipc a2, 0xf3
  addw  s5, s11, s3
  subw  s5, t0, a2
  addiw a1, s5, 1693
  mul   a7, s3, t5
  mulh  t1, s10, a5
  mulhu t5, s8, a4
  mulw  t2, a3, a3
  div   a1, t2, a6
  divu  s6, t6, a7
  rem   s7, a0, t1
  remu  s11, a3, s10
  divw  s11, t2, t4
  remw  t1, s8, t4
  sd    s5, 0(s0)
  ld    s6, 0(s0)
  sw    a3, 0(s0)
  lw    a7, 0(s0)
  lwu   s4, 0(s0)
  lh    s3, 0(s0)
  lbu   s9, 0(s0)
  lr.d      a4, (s0)
  sc.d      s5, a2, (s0)
  amoadd.w  t4, s11, (s0)
  amoswap.d s9, s3, (s0)
  amoand.w  s4, a3, (s0)
  amoor.d   t2, a0, (s0)
  amoxor.w  a1, s9, (s0)
  amomax.d  t3, a2, (s0)
  amominu.w a3, t2, (s0)
  fmv.w.x   f1, s10
  fmv.d.x   f5, a7
  fadd.s    f20, f9, f18
  fsub.s    f8, f19, f4
  fmul.s    f10, f10, f1
  fdiv.s    f9, f0, f0
  fmin.s    f0, f0, f3
  fmax.s    f1, f2, f7
  fsgnj.s   f6, f8, f0
  fadd.d    f2, f3, f19
  fsub.d    f3, f7, f18
  fmul.d    f18, f10, f7
  fdiv.d    f7, f2, f8
  fsqrt.d   f1, f7
  fmadd.d   f6, f20, f3, f9
  fcvt.s.w  f6, t0
  fcvt.d.w  f8, s6
  fcvt.d.s  f2, f19
  fcvt.s.d  f4, f19
  fcvt.w.s  t1, f6, rtz
  fcvt.l.d  t2, f21, rtz
  feq.d     a1, f0, f0
  flt.s     a5, f8, f1
  fclass.d  a0, f3
  csrr  a7, mscratch
  csrw  mscratch, t4
  csrrw t4, mscratch, a5
  csrrs a5, mstatus, x0
  csrrc s11, mscratch, x0
  csrrwi s3, mscratch, 29
  fence
  fence.i
  c.addi a0, -19
  c.mv   a1, a2
  c.li   a3, -32
  c.add  a4, a5
  la    s0, tdat
  li    a6, 905
  li    t2, 1546
  add   s4, t5, t5
  sub   s4, s9, t6
  xor   a6, t2, s2
  or    s6, a3, s6
  and   s8, a4, t2
  addi  a7, s8, -1506
  andi  a4, s8, 459
  ori   s9, t6, 1904
  xori  t0, s9, -255
  slli  s6, s3, 61
  srli  s9, s9, 44
  srai  s7, a1, 28
  sllw  s7, t5, a3
  sraw  a3, s2, a5
  slt   s9, s8, a3
  sltu  s7, t5, s10
  sltiu t5, s8, 1182
  lui   t4, 0x79923
  auipc a5, 0xfc
  addw  s2, s3, t1
  subw  a5, t0, s8
  addiw t5, a1, -1010
  mul   s5, s7, a2
  mulh  t3, s8, t0
  mulhu t6, t3, a2
  mulw  s2, t0, t0
  div   a0, a2, a6
  divu  t2, a6, t2
  rem   t5, a3, a5
  remu  a2, t3, a2
  divw  s11, a0, s4
  remw  a3, t1, s9
  sd    a4, 0(s0)
  ld    a0, 0(s0)
  sw    a5, 0(s0)
  lw    t6, 0(s0)
  lwu   s11, 0(s0)
  lh    s9, 0(s0)
  lbu   a4, 0(s0)
  lr.d      a6, (s0)
  sc.d      a2, a7, (s0)
  amoadd.w  s11, a4, (s0)
  amoswap.d a4, s5, (s0)
  amoand.w  t0, s2, (s0)
  amoor.d   a4, t5, (s0)
  amoxor.w  t1, a2, (s0)
  amomax.d  t1, t6, (s0)
  amominu.w s10, s8, (s0)
  fmv.w.x   f5, a7
  fmv.d.x   f9, a4
  fadd.s    f19, f18, f19
  fsub.s    f21, f0, f7
  fmul.s    f3, f18, f9
  fdiv.s    f11, f8, f6
  fmin.s    f5, f9, f3
  fmax.s    f6, f6, f3
  fsgnj.s   f21, f1, f4
  fadd.d    f20, f9, f11
  fsub.d    f7, f3, f18
  fmul.d    f4, f10, f0
  fdiv.d    f6, f8, f18
  fsqrt.d   f2, f0
  fmadd.d   f6, f20, f1, f2
  fcvt.s.w  f18, a4
  fcvt.d.w  f18, s11
  fcvt.d.s  f18, f6
  fcvt.s.d  f11, f8
  fcvt.w.s  s8, f8, rtz
  fcvt.l.d  s4, f18, rtz
  feq.d     s2, f21, f2
  flt.s     t4, f5, f11
  fclass.d  s5, f3
  csrr  a4, mscratch
  csrw  mscratch, s7
  csrrw s10, mscratch, s5
  csrrs a4, mstatus, x0
  csrrc s2, mscratch, x0
  csrrwi a6, mscratch, 4
  fence
  fence.i
  c.addi a0, -2
  c.mv   a1, a2
  c.li   a3, -26
  c.add  a4, a5
  la    s0, tdat
  li    a5, 880
  li    a5, 890
  add   t1, s9, a0
  sub   s2, a3, a0
  xor   a6, t0, s7
  or    t3, a6, t5
  and   s6, t6, s11
  addi  a1, t1, 1620
  andi  s6, s10, 1361
  ori   s9, s5, 1358
  xori  a7, s9, -452
  slli  s10, s8, 16
  srli  t0, s2, 53
  srai  a0, s7, 10
  sllw  t5, s5, t5
  sraw  s4, s2, a4
  slt   a5, t3, s9
  sltu  s7, t2, s4
  sltiu s7, a5, 1759
  lui   s10, 0x3fc0b
  auipc t6, 0x1d
  addw  s11, s10, a3
  subw  t4, t4, a4
  addiw s4, a7, -371
  mul   s7, s10, a5
  mulh  s2, t2, s8
  mulhu s10, s6, a1
  mulw  s9, a2, s2
  div   t4, a7, s3
  divu  t4, a7, t0
  rem   t3, a6, s6
  remu  s8, s10, s10
  divw  t2, t4, s9
  remw  a3, s4, t0
  sd    a0, 0(s0)
  ld    t5, 0(s0)
  sw    s9, 0(s0)
  lw    s2, 0(s0)
  lwu   t4, 0(s0)
  lh    t2, 0(s0)
  lbu   s9, 0(s0)
  lr.d      s8, (s0)
  sc.d      a1, t5, (s0)
  amoadd.w  t1, s6, (s0)
  amoswap.d s3, a1, (s0)
  amoand.w  t6, s8, (s0)
  amoor.d   t0, s2, (s0)
  amoxor.w  a6, t4, (s0)
  amomax.d  s2, s8, (s0)
  amominu.w t0, t3, (s0)
  fmv.w.x   f1, a5
  fmv.d.x   f20, a1
  fadd.s    f19, f11, f18
  fsub.s    f20, f7, f10
  fmul.s    f1, f11, f3
  fdiv.s    f4, f6, f3
  fmin.s    f5, f0, f6

  li    a0, 0
  RVTEST_PASS

RVTEST_CODE_END

  .data
RVTEST_DATA_BEGIN

tdat:
  .dword 0x0000000000000000
  .dword 0xdeadbeefcafef00d

RVTEST_DATA_END