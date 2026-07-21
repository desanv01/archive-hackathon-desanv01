#!/usr/bin/env python3

import argparse
import difflib
import re
from pathlib import Path


def normalize(line):
    line = line.rstrip()
    return re.sub(
        r"(c2_frm\s+\S+)\s+(c1_fflags\s+\S+)",
        r"\2 \1",
        line,
    )


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--spike", type=Path, required=True)
    parser.add_argument("--rtl", type=Path, required=True)
    parser.add_argument("--rtl-skip", type=int, default=0)
    parser.add_argument("--output-dir", type=Path, required=True)
    args = parser.parse_args()

    if not args.spike.is_file():
        parser.error(f"Missing Spike dump: {args.spike}")

    if not args.rtl.is_file():
        parser.error(f"Missing RTL dump: {args.rtl}")

    spike = args.spike.read_text(errors="replace").splitlines()
    rtl = args.rtl.read_text(errors="replace").splitlines()

    if args.rtl_skip:
        if len(rtl) <= args.rtl_skip:
            parser.error("RTL dump is too short")
        rtl = rtl[:-args.rtl_skip]

    spike = [normalize(line) for line in spike]
    rtl = [normalize(line) for line in rtl]

    args.output_dir.mkdir(parents=True, exist_ok=True)

    spike_out = args.output_dir / "spike.normalized.dump"
    rtl_out = args.output_dir / "rtl.normalized.dump"
    diff_out = args.output_dir / "dump.diff"

    spike_out.write_text("\n".join(spike) + "\n")
    rtl_out.write_text("\n".join(rtl) + "\n")

    difference = list(
        difflib.unified_diff(
            spike,
            rtl,
            fromfile=str(spike_out),
            tofile=str(rtl_out),
            lineterm="",
        )
    )

    if difference:
        diff_out.write_text("\n".join(difference) + "\n")
        print(f"FAIL: Spike and RTL differ: {diff_out}")
        return 1

    diff_out.unlink(missing_ok=True)
    print("PASS: normalized Spike and RTL logs match")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
