#!/usr/bin/env bash
set -euo pipefail

LEVEL_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SPIKE_TIMEOUT="${SPIKE_TIMEOUT:-60}"

run_challenge() {
    local challenge="$1"
    local isa="$2"
    local dir="${LEVEL_DIR}/${challenge}"

    printf '\n============================================================\n'
    printf 'Running Level 1 %s\n' "${challenge}"
    printf '============================================================\n'

    cd "${dir}"
    make clean
    make compile
    make disass

    set +e
    timeout --foreground "${SPIKE_TIMEOUT}s" \
        spike --log-commits \
        --log work/test_spike.dump \
        --isa="${isa}" \
        +signature=work/test_spike_signature.log \
        work/test.elf \
        2>&1 | tee work/spike_console.log
    local status=${PIPESTATUS[0]}
    set -e

    if [[ ${status} -eq 124 ]]; then
        echo "FAIL: ${challenge} exceeded ${SPIKE_TIMEOUT} seconds"
        return 124
    fi
    if [[ ${status} -ne 0 ]]; then
        echo "FAIL: ${challenge} returned status ${status}"
        return "${status}"
    fi

    test -s work/test.elf
    test -s work/test.disass
    test -s work/test_spike.dump
    test -e work/test_spike_signature.log

    echo "PASS: ${challenge} compiled and completed on Spike"
    ls -lh work/test.elf work/test.disass \
        work/test_spike.dump work/test_spike_signature.log
}

run_challenge challenge1 rv64gc
run_challenge challenge2 rv64g
run_challenge challenge3 rv64g

echo
echo "PASS: all Level 1 challenges completed"
