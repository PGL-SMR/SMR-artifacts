#!/usr/bin/env python3

import subprocess
from pathlib import Path
import argparse
import filecmp
import shlex

ROOT = Path(".").resolve()
PATTERN_DIR = ROOT / "pat"
SERIALIZED_DIR = PATTERN_DIR / "serialized"


def run_capture(cmd, debug=False):

    if debug:
        print("[CMD]", " ".join(shlex.quote(str(c)) for c in cmd))

    result = subprocess.run(
        cmd,
        stdout=subprocess.PIPE,
        stderr=subprocess.STDOUT,
        text=True
    )

    return result.stdout, result.returncode


def get_patterns(skip_serialize, use_pat, debug):

    patterns = []

    if use_pat:
        print("Using .pat files directly (no serialization)")
        return list(PATTERN_DIR.glob("*.pat"))

    SERIALIZED_DIR.mkdir(exist_ok=True)

    for pat in PATTERN_DIR.glob("*.pat"):

        opat = SERIALIZED_DIR / (pat.stem + ".opat")

        if skip_serialize and opat.exists():
            print(f"[skip serialize] {pat.name}")
            patterns.append(opat)
            continue

        print(f"[serialize] {pat.name}")

        run_capture(
            ["smr", str(pat), f"--serialize={opat}"],
            debug
        )

        patterns.append(opat)

    return patterns


def source_dirs():

    for d in ROOT.iterdir():
        if d.is_dir() and d != PATTERN_DIR:
            yield d


def compile_c_files(src_dir, debug):

    c_files = list(src_dir.rglob("*.c"))

    if not c_files:
        return []

    print(f"Compiling {len(c_files)} C files in {src_dir}")

    cmd = ["smr", "--compile"] + [str(f) for f in c_files]

    run_capture(cmd, debug)

    mlir_files = [
        f.with_name(f.stem + "-compiled.mlir")
        for f in c_files
    ]

    return mlir_files


def process_directory(src_dir, patterns, debug, direct_c):

    print(f"\n=== DIRECTORY: {src_dir} ===")

    if direct_c:
        inputs = list(src_dir.rglob("*.c"))
    else:
        inputs = compile_c_files(src_dir, debug)

    if not inputs:
        print("No input files found.")
        return

    for pattern in patterns:

        print(f"\n--- PATTERN: {pattern.stem} ---")

        log_file = src_dir / f"{pattern.stem}.txt"

        with open(log_file, "w") as log:

            for file in inputs:

                if not file.exists():
                    continue

                print(f"Processing: {file.name}")

                log.write(f"\n===== FILE: {file} =====\n")

                out_mlir = file.with_name(
                    file.stem + f".{pattern.stem}.mlir"
                )

                cmd = [
                    "smr",
                    str(file),
                    str(pattern),
                    "-o",
                    str(out_mlir)
                ]

                out, code = run_capture(cmd, debug)

                log.write(out)

                if code != 0:
                    log.write("ERROR applying pattern\n")
                    continue

                if not direct_c and out_mlir.exists():

                    same = filecmp.cmp(file, out_mlir, shallow=False)

                    if same:
                        out_mlir.unlink()
                        log.write("No rewrite detected\n")
                    else:
                        log.write("Rewrite detected\n")

    # --- NOVA PARTE: Limpeza dos arquivos .mlir restantes ---
    print(f"\nCleaning up .mlir files in {src_dir}...")
    arquivos_removidos = 0
    for mlir_file in src_dir.rglob("*.mlir"):
        try:
            mlir_file.unlink(missing_ok=True)
            arquivos_removidos += 1
        except Exception as e:
            print(f"[ERROR] Could not remove {mlir_file.name}: {e}")
    
    if arquivos_removidos > 0:
        print(f"Removed {arquivos_removidos} .mlir file(s) from {src_dir.name}.")


def main():

    parser = argparse.ArgumentParser()

    parser.add_argument(
        "--skip-serialize",
        action="store_true"
    )

    parser.add_argument(
        "--use-pat",
        action="store_true",
        help="Use .pat directly without serialization"
    )

    parser.add_argument(
        "--debug",
        action="store_true"
    )

    parser.add_argument(
        "--direct-c",
        action="store_true",
        help="Skip compilation and run patterns directly on .c files"
    )

    args = parser.parse_args()

    print("Preparing patterns...")
    patterns = get_patterns(
        args.skip_serialize,
        args.use_pat,
        args.debug
    )

    print("\nProcessing directories...")

    for src_dir in source_dirs():
        process_directory(
            src_dir,
            patterns,
            args.debug,
            args.direct_c
        )


if __name__ == "__main__":
    main()