#!/usr/bin/env python3
"""Generate deterministic register and forwarding dependency tests."""

from __future__ import annotations

import argparse
import random
from pathlib import Path

MASK64 = (1 << 64) - 1
MASK32 = (1 << 32) - 1

REGISTERS = list(range(5, 31))

OPERATIONS = (
    "add",
    "sub",
    "xor",
    "and",
    "or",
    "sll",
    "srl",
    "sra",
    "slt",
    "sltu",
    "addw",
    "subw",
    "sllw",
    "srlw",
    "sraw",
    "mul",
)


def u64(value: int) -> int:
    return value & MASK64


def signed(value: int, width: int) -> int:
    mask = (1 << width) - 1
    value &= mask
    sign_bit = 1 << (width - 1)

    if value & sign_bit:
        return value - (1 << width)

    return value


def sign_extend_word(value: int) -> int:
    return u64(signed(value, 32))


def model(operation: str, lhs: int, rhs: int) -> int:
    lhs = u64(lhs)
    rhs = u64(rhs)

    if operation == "add":
        return u64(lhs + rhs)

    if operation == "sub":
        return u64(lhs - rhs)

    if operation == "xor":
        return lhs ^ rhs

    if operation == "and":
        return lhs & rhs

    if operation == "or":
        return lhs | rhs

    if operation == "sll":
        return u64(lhs << (rhs & 0x3F))

    if operation == "srl":
        return lhs >> (rhs & 0x3F)

    if operation == "sra":
        return u64(signed(lhs, 64) >> (rhs & 0x3F))

    if operation == "slt":
        return int(signed(lhs, 64) < signed(rhs, 64))

    if operation == "sltu":
        return int(lhs < rhs)

    if operation == "addw":
        return sign_extend_word(
            (lhs & MASK32) + (rhs & MASK32)
        )

    if operation == "subw":
        return sign_extend_word(
            (lhs & MASK32) - (rhs & MASK32)
        )

    if operation == "sllw":
        return sign_extend_word(
            (lhs & MASK32) << (rhs & 0x1F)
        )

    if operation == "srlw":
        return sign_extend_word(
            (lhs & MASK32) >> (rhs & 0x1F)
        )

    if operation == "sraw":
        word = signed(lhs, 32)
        return sign_extend_word(word >> (rhs & 0x1F))

    if operation == "mul":
        return u64(lhs * rhs)

    raise ValueError(f"Unsupported operation: {operation}")


def instruction(
    operation: str,
    destination: int,
    source1: int,
    source2: int,
) -> str:
    return (
        f"  {operation} x{destination}, "
        f"x{source1}, x{source2}"
    )


def build(seed: int, blocks: int) -> str:
    rng = random.Random(seed)

    state = {
        register: rng.getrandbits(64)
        for register in REGISTERS
    }

    lines = [
        '#include "riscv_test.h"',
        '#include "test_macros.h"',
        "",
        "RVTEST_RV64U",
        "RVTEST_CODE_BEGIN",
        "",
        "dependency_initialization:",
        "  li TESTNUM, 2",
    ]

    for register in REGISTERS:
        lines.append(
            f"  li x{register}, 0x{state[register]:016x}"
        )

    test_number = 3

    for block in range(blocks):
        destination1, destination2, destination3 = (
            rng.sample(REGISTERS, 3)
        )

        source1 = rng.choice(REGISTERS)
        source2 = rng.choice(REGISTERS)
        source3 = rng.choice(REGISTERS)

        operation1 = rng.choice(OPERATIONS)
        operation2 = rng.choice(OPERATIONS)
        operation3 = rng.choice(OPERATIONS)
        operation4 = rng.choice(OPERATIONS)

        lines.extend(
            [
                "",
                f"dependency_block_{block}:",
                f"  li TESTNUM, {test_number}",
            ]
        )

        lines.append(
            instruction(
                operation1,
                destination1,
                source1,
                source2,
            )
        )

        state[destination1] = model(
            operation1,
            state[source1],
            state[source2],
        )

        lines.append(
            instruction(
                operation2,
                destination2,
                destination1,
                source3,
            )
        )

        state[destination2] = model(
            operation2,
            state[destination1],
            state[source3],
        )

        lines.append(
            instruction(
                operation3,
                destination3,
                destination2,
                destination1,
            )
        )

        state[destination3] = model(
            operation3,
            state[destination2],
            state[destination1],
        )

        # Write destination1 again to introduce a WAW dependency.
        lines.append(
            instruction(
                operation4,
                destination1,
                destination3,
                destination2,
            )
        )

        state[destination1] = model(
            operation4,
            state[destination3],
            state[destination2],
        )

        for register in (
            destination1,
            destination2,
            destination3,
        ):
            lines.extend(
                [
                    f"  li x31, 0x{state[register]:016x}",
                    f"  bne x{register}, x31, fail",
                ]
            )

        test_number += 1

    lines.extend(
        [
            "",
            "  TEST_PASSFAIL",
            "",
            "RVTEST_CODE_END",
            "",
            "  .data",
            "RVTEST_DATA_BEGIN",
            "  TEST_DATA",
            "RVTEST_DATA_END",
            "",
        ]
    )

    return "\n".join(lines)


def main() -> None:
    parser = argparse.ArgumentParser()

    parser.add_argument(
        "--seed",
        type=lambda value: int(value, 0),
        default=0x4C1001,
    )

    parser.add_argument(
        "--blocks",
        type=int,
        default=180,
    )

    parser.add_argument(
        "--output",
        type=Path,
        default=Path(
            "tests/generated_dependency_stress.S"
        ),
    )

    args = parser.parse_args()

    if args.blocks < 1:
        parser.error("--blocks must be positive")

    args.output.parent.mkdir(
        parents=True,
        exist_ok=True,
    )

    args.output.write_text(
        build(args.seed, args.blocks),
        encoding="ascii",
    )

    print(
        f"Generated {args.blocks} dependency blocks "
        f"with seed 0x{args.seed:x} in {args.output}"
    )


if __name__ == "__main__":
    main()
