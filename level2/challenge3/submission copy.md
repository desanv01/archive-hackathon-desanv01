# Level 2 Challenge 3 Submission

## Challenge Objective

This challenge used a table-driven assembly program to verify three addition cases on Spike. A correct test had to enter the pass path and return status zero, while an intentionally incorrect result had to enter the failure path and return a nonzero status.

## Problem Observed

The arithmetic loop in `challenge3.S` was already bounded and contained an explicit jump to `fail`. However, the program still reported failure when all three additions were correct.

The problem was hidden in the shared test harness rather than in the main assembly loop.

The original `RVTEST_PASS` macro contained failure behavior:

```asm
#define RVTEST_PASS
        fence
1:      beqz TESTNUM, 1b
        sll TESTNUM, TESTNUM, 1
        or TESTNUM, TESTNUM, 1
        li a7, 93
        addi a0, TESTNUM, 0
        ecall
```

This encoded the test number into a nonzero exit result.

At the same time, the original `RVTEST_FAIL` macro returned success:

```asm
#define RVTEST_FAIL
        fence
        li TESTNUM, 1
        li a7, 93
        li a0, 0
        ecall
```

Therefore, the pass and failure behaviors were reversed.

## Additional Issues Found

The assembly source declared:

```asm
RVTEST_RV32M
```

However, `run.sh` compiled the test using an RV64 architecture:

```text
-march=rv64imafdczicsr_zifencei
```

Spike also executed it using an RV64 ISA. The test declaration was therefore inconsistent with the build and simulation environment.

A further issue was found in `run.sh`. The script captured Spike’s return code and printed either `PASS` or `FAIL`, but it did not return that status to the terminal.

The original script ended after printing the artifact locations:

```bash
if [ "$rc" = "0" ]; then
    echo ">> PASS (exit 0)"
else
    echo ">> FAIL (exit $rc)"
fi

echo ">> disassembly: $OUT/$NAME.disass   commit log: $OUT/$NAME.dump"
```

Because the final `echo` succeeded, the script itself could return status zero even after Spike reported a failure. This could mislead an automated test or shell command into treating a failed run as successful.

## Root Cause

Three separate harness problems were present:

1. `RVTEST_PASS` contained the failure exit sequence.
2. `RVTEST_FAIL` contained the successful exit sequence.
3. `run.sh` printed Spike’s status but did not propagate it to the shell.

The architecture declaration in the assembly source also did not match the RV64 build.

The main arithmetic loop was not the source of this failure. It correctly checked these records:

```text
0x20 + 0x20 = 0x40
0x03034078 + 0x5d70344d = 0x607374c5
0xcafe + 0x1 = 0xcaff
```

## Fix Applied

The pass macro was restored to return status zero:

```asm
#define RVTEST_PASS
        fence
        li TESTNUM, 1
        li a7, 93
        li a0, 0
        ecall
```

The failure macro was restored to encode a nonzero test result:

```asm
#define RVTEST_FAIL
        fence
1:      beqz TESTNUM, 1b
        sll TESTNUM, TESTNUM, 1
        or TESTNUM, TESTNUM, 1
        li a7, 93
        addi a0, TESTNUM, 0
        ecall
```

The test declaration was changed to match the RV64 build:

```asm
RVTEST_RV64M
```

The final line of `run.sh` was changed to propagate Spike’s actual result:

```bash
exit "$rc"
```

This ensures that a successful test returns zero and a failed test returns a nonzero shell status.

## Original Failure Reproduction

The original files were executed before applying the corrections:

```bash
mkdir -p original_files work
cp -n challenge3.S riscv_test.h run.sh original_files/
chmod +x run.sh

./run.sh clean
set -o pipefail

./run.sh challenge3 2>&1 | tee original_run.log
original_status=${PIPESTATUS[0]}
echo "Original script status: $original_status"
```

The original run reported a failure even though the three arithmetic results were correct.

The script could still appear successful at the shell level because it did not exit using Spike’s recorded return code.

## Corrected Positive Test

The corrected challenge was run using:

```bash
chmod +x run.sh
mkdir -p work
./run.sh clean
set -o pipefail

./run.sh challenge3 2>&1 | tee fixed_run.log
fixed_status=${PIPESTATUS[0]}
echo "Fixed test status: $fixed_status"
```

The corrected positive test produced:

```text
>> PASS (exit 0)
Fixed test status: 0
```

This confirmed that the corrected `RVTEST_PASS` macro reports a successful test properly.

## Negative Test

A negative test was created to verify that the corrected failure path also worked.

The first expected result was deliberately changed from `0x40` to `0x41`:

```bash
cp challenge3.S challenge3_negative.S

sed -i '0,/\.word 0x40/{s/\.word 0x40/.word 0x41/}' \
  challenge3_negative.S
```

The negative test was executed with:

```bash
set -o pipefail

./run.sh challenge3_negative 2>&1 | tee negative_run.log
negative_status=${PIPESTATUS[0]}
echo "Negative test status: $negative_status"
```

The result was checked using:

```bash
test "$negative_status" -ne 0 \
  && echo "PASS: intentional mismatch reached the failure path" \
  || echo "FAIL: intentional mismatch was incorrectly accepted"
```

The observed result was:

```text
PASS: intentional mismatch reached the failure path
```

This confirmed that `RVTEST_FAIL` now returns a nonzero result and that `run.sh` correctly propagates it.

## Disassembly Verification

The generated control-flow and pass/fail labels were inspected using:

```bash
grep -nE '<loop>|<continue_loop>|<fail>|<pass>|ecall' \
  work/challenge3/challenge3.disass
```

The generated artifacts were:

```text
work/challenge3/challenge3.elf
work/challenge3/challenge3.disass
work/challenge3/challenge3.dump
```

## Evidence Captured

The original and corrected macros were compared with:

```bash
diff -u original_files/riscv_test.h riscv_test.h
```

The architecture correction was confirmed with:

```bash
grep -n 'RVTEST_RV64M' challenge3.S
```

The original, corrected, and negative test results were preserved in:

```text
original_run.log
fixed_run.log
negative_run.log
```

The generated ELF, disassembly, and Spike commit log were retained under:

```text
work/challenge3/
work/challenge3_negative/
```

## Final Result

The challenge contained problems in both the RISC-V test harness and its runner:

1. The pass macro performed a failure exit.
2. The failure macro performed a successful exit.
3. The assembly declared RV32 mode while being built as RV64.
4. The runner did not propagate Spike’s return status.

After applying the corrections:

```text
Positive test: PASS
Fixed test status: 0
Intentional negative test: FAIL as expected
Negative test status: nonzero
```

The test harness now distinguishes successful and failed arithmetic tests correctly, and the runner returns a reliable status to the terminal.


![alt text](image.png)
![alt text](image-1.png)
![alt text](image-2.png)
![alt text](image-3.png)
![alt text](image-4.png)
