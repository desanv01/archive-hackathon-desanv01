#!/bin/bash
# Day 9, Assignment 2: assemble a named .S, run it on Spike, dump the disassembly.
# Usage:
#   ./run.sh <name>   assemble & run <name>.S, output goes to work/<name>/
#   ./run.sh clean    delete everything under work/
set -e
cd "$(dirname "$0")"

GCC=riscv64-unknown-elf-gcc
OBJDUMP=riscv64-unknown-elf-objdump
SPIKE=spike
ISA=rv64gcZicsr_Zifencei
CFLAGS="-march=rv64imafdczicsr_zifencei -mabi=lp64 -static -mcmodel=medany \
        -fvisibility=hidden -nostdlib -nostartfiles -std=gnu99 -O2 -I.. -T./link.ld"

usage() {
    echo "Usage: $0 <name>   (assembles <name>.S, output in work/<name>/)"
    echo "       $0 clean    (deletes everything under work/)"
    exit 1
}

[ $# -eq 1 ] || usage

if [ "$1" = "clean" ]; then
    find work -mindepth 1 ! -name '.gitkeep' -exec rm -rf {} +
    echo ">> cleaned work/"
    exit 0
fi

NAME=$1
SRC="$NAME.S"
[ -f "$SRC" ] || { echo "error: $SRC not found"; exit 1; }

OUT="work/$NAME"; ELF="$OUT/$NAME.elf"; mkdir -p "$OUT"

# 1. assemble the .S into a bare-metal ELF
echo ">> [1/3] assembling $SRC"
$GCC $CFLAGS "$SRC" -o "$ELF"

# 2. disassemble
echo ">> [2/3] disassembly -> $OUT/$NAME.disass"
$OBJDUMP -d "$ELF" > "$OUT/$NAME.disass"

# 3. run on Spike (bare metal, no pk)
echo ">> [3/3] running on spike (bare metal)"
timeout --foreground 3s $SPIKE --isa=$ISA --log-commits --log "$OUT/$NAME.dump" "$ELF" && rc=0 || rc=$?

if [ "$rc" = "0" ]; then echo ">> PASS (exit 0)"; else echo ">> FAIL (exit $rc)"; fi
echo ">> disassembly: $OUT/$NAME.disass   commit log: $OUT/$NAME.dump"
