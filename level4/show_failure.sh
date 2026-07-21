#!/usr/bin/env bash
set -euo pipefail

if [[ $# -ne 2 ]]; then
    echo "Usage: $0 <p|v> <test-name-without-.S>"
    exit 2
fi

mode=$1
name=$2
out="work/${mode}/${name}"

for file in "${name}.elf" "${name}.disass" "${name}.dump" rtl.raw.dump rtl.normalized.dump dump.diff; do
    if [[ -f "$out/$file" ]]; then
        ls -lh "$out/$file"
    fi
done

echo
if [[ -s "$out/dump.diff" ]]; then
    echo "First Spike/RTL differences:"
    sed -n '1,160p' "$out/dump.diff"
else
    echo "No dump.diff exists for ${mode}/${name}."
fi
