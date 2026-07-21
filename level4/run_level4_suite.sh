#!/usr/bin/env bash
set -u
set -o pipefail

ROOT=$(cd "$(dirname "$0")" && pwd -P)
cd "$ROOT"

: "${DESIGN_HOME:?Export DESIGN_HOME to the C-Class binary directory}"

SPIKE_TIMEOUT=${SPIKE_TIMEOUT:-15}
RTL_TIMEOUT=${RTL_TIMEOUT:-90}
RUN_VIRTUAL=${RUN_VIRTUAL:-1}

for tool in \
    riscv64-unknown-elf-gcc \
    riscv64-unknown-elf-objdump \
    spike \
    elf2hex \
    make \
    timeout \
    python3
do
    command -v "$tool" >/dev/null || {
        echo "ERROR: missing tool: $tool"
        exit 2
    }
done

if [[ ! -x "$DESIGN_HOME/out" ]]; then
    echo "ERROR: $DESIGN_HOME/out is unavailable"
    exit 2
fi

mkdir -p evidence

printf 'mode,test,status,diff\n' \
    > evidence/summary.csv

python3 generate_dependency_stress.py \
    --seed 0x4c1001 \
    --blocks 180 \
    --output tests/generated_dependency_4c1001.S

python3 generate_dependency_stress.py \
    --seed 0x4c2002 \
    --blocks 180 \
    --output tests/generated_dependency_4c2002.S

physical_tests=(
    baseline_add
    alu_word_edge
    pipeline_hazards
    branch_hazard
    control_memory_hazards
    load_store_edge
    mul_div_edge
    amo_deterministic
    csr_hazard
    compressed_edge
    fp_edge
    fence_i_patch
    generated_dependency_4c1001
    generated_dependency_4c2002
)

virtual_tests=(
    baseline_add
    alu_word_edge
    pipeline_hazards
    branch_hazard
    control_memory_hazards
    load_store_edge
    mul_div_edge
    compressed_edge
    generated_dependency_4c1001
)

run_one()
{
    local mode=$1
    local name=$2
    local test="./tests/${name}.S"
    local output="work/${mode}/${name}"
    local log="evidence/${mode}_${name}.log"

    echo "================================================"
    echo "MODE=${mode} TEST=${name}"
    echo "================================================"

    make clean \
        TEST="$test" \
        MODE="$mode" \
        >/dev/null 2>&1 || true

    make run_verif \
        TEST="$test" \
        MODE="$mode" \
        SPIKE_TIMEOUT="$SPIKE_TIMEOUT" \
        RTL_TIMEOUT="$RTL_TIMEOUT" \
        2>&1 | tee "$log"

    local status=${PIPESTATUS[0]}

    if [[ $status -eq 0 ]]; then
        printf '%s,%s,PASS,\n' \
            "$mode" "$name" \
            >> evidence/summary.csv

        return 0
    fi

    if [[ -s "$output/dump.diff" ]]; then
        printf '%s,%s,MISMATCH,%s\n' \
            "$mode" \
            "$name" \
            "$output/dump.diff" \
            >> evidence/summary.csv

        echo "CANDIDATE RTL MISMATCH: ${mode}/${name}"
        sed -n '1,100p' "$output/dump.diff"

        return 1
    fi

    if grep -q 'Error 124' "$log"; then
        printf '%s,%s,TIMEOUT,\n' \
            "$mode" "$name" \
            >> evidence/summary.csv

        echo "TIMEOUT: ${mode}/${name}"
        return 124
    fi

    printf '%s,%s,FLOW_ERROR,\n' \
        "$mode" "$name" \
        >> evidence/summary.csv

    echo "FLOW ERROR: inspect $log"
    return 2
}

for test_name in "${physical_tests[@]}"
do
    run_one p "$test_name"
    status=$?

    if [[ $status -ne 0 ]]; then
        cat evidence/summary.csv
        exit "$status"
    fi
done

if [[ "$RUN_VIRTUAL" == 1 ]]; then
    for test_name in "${virtual_tests[@]}"
    do
        run_one v "$test_name"
        status=$?

        if [[ $status -ne 0 ]]; then
            cat evidence/summary.csv
            exit "$status"
        fi
    done
fi

cat evidence/summary.csv
echo "No differential mismatch was found."
