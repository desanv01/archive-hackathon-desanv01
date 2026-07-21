#!/usr/bin/env python3
"""Generate a deterministic RV64 integer differential stress test."""

from __future__ import annotations

import argparse
import random
from pathlib import Path

MASK = (1 << 64) - 1
MIN_SIGNED = -(1 << 63)


def u64(value: int) -> int:
    return value & MASK


def s64(value: int) -> int:
    value &= MASK
    return value - (1 << 64) if value & (1 << 63) else value


def trunc_div(a: int, b: int) -> int:
    quotient = abs(a) // abs(b)
    return -quotient if (a < 0) ^ (b < 0) else quotient


def model(op: str, a: int, b: int) -> int:
    shift = b & 0x3F
    if op == "add":
        return u64(a + b)
    if op == "sub":
        return u64(a - b)
    if op == "xor":
        return a ^ b
    if op == "and":
        return a & b
    if op == "or":
        return a | b
    if op == "sll":
        return u64(a << shift)
    if op == "srl":
        return a >> shift
    if op == "sra":
        return u64(s64(a) >> shift)
    if op == "slt":
        return int(s64(a) < s64(b))
    if op == "sltu":
        return int(a < b)
    if op == "mul":
        return u64(a * b)
    if op == "div":
        sa, sb = s64(a), s64(b)
        if sb == 0:
            return MASK
        if sa == MIN_SIGNED and sb == -1:
            return 1 << 63
        return u64(trunc_div(sa, sb))
    if op == "rem":
        sa, sb = s64(a), s64(b)
        if sb == 0:
            return a
        if sa == MIN_SIGNED and sb == -1:
            return 0
        return u64(sa - trunc_div(sa, sb) * sb)
    if op == "divu":
        return MASK if b == 0 else a // b
    if op == "remu":
        return a if b == 0 else a % b
    raise ValueError(f"unsupported operation: {op}")


def build(seed: int, cases: int) -> str:
    rng = random.Random(seed)
    ops = (
        "add", "sub", "xor", "and", "or", "sll", "srl", "sra",
        "slt", "sltu", "mul", "div", "rem", "divu", "remu",
    )
    edge = [
        0, 1, 2, MASK, 1 << 63, (1 << 63) - 1,
        0xAAAAAAAAAAAAAAAA, 0x5555555555555555,
        0x0123456789ABCDEF, 0xFEDCBA9876543210,
    ]

    lines = [
        '#include "riscv_test.h"',
        '#include "test_macros.h"',
        '',
        'RVTEST_RV64U',
        'RVTEST_CODE_BEGIN',
        '',
    ]

    for index in range(cases):
        op = ops[index % len(ops)]
        a = edge[index % len(edge)] if index < len(edge) * 2 else rng.getrandbits(64)
        b = edge[(index * 3 + 1) % len(edge)] if index < len(edge) * 2 else rng.getrandbits(64)
        if index % 47 == 0 and op in {"div", "rem", "divu", "remu"}:
            b = 0
        expected = model(op, a, b)
        lines.append(
            f'  TEST_RR_OP( {index + 2}, {op}, '
            f'0x{expected:016x}, 0x{a:016x}, 0x{b:016x} );'
        )

    lines.extend([
        '',
        '  TEST_PASSFAIL',
        'RVTEST_CODE_END',
        '',
        '  .data',
        'RVTEST_DATA_BEGIN',
        '  TEST_DATA',
        'RVTEST_DATA_END',
        '',
    ])
    return "\n".join(lines)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--seed", type=lambda value: int(value, 0), default=0xC1A554)
    parser.add_argument("--cases", type=int, default=300)
    parser.add_argument("--output", type=Path, default=Path("tests/generated_integer_stress.S"))
    args = parser.parse_args()
    if args.cases < 1:
        parser.error("--cases must be positive")
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(build(args.seed, args.cases), encoding="ascii")
    print(f"Generated {args.cases} cases in {args.output} with seed {args.seed}")


if __name__ == "__main__":
    main()
