# SMR Artifacts

This repository contains the test suites and artifacts used to evaluate the
pattern-based rewriting tool [Source-Matching-and-Rewriting (SMR)](https://github.com/PGL-SMR/Source-Matching-and-Rewriting). The folders in this repository host benchmark
suites, pattern files, scripts and helper utilities used to run experiments
for matching, rewriting, validation and performance measurement.

## Test suites overview

Below is a concise explanation of each test-suite folder and how to run the
included tests or scripts.

### `angha_match`
- Purpose: Run SMR pattern matching across recovered C code (Angha samples).
- Contents: C source folders (e.g., `cello`, `darknet`, `ffmpeg`, `exploitdb`, ...)
	and a driver script `script.py` that serializes patterns and applies them to
	each directory.
- Run: from repository root:

```bash
python3 angha_match/script.py [--skip-serialize] [--use-pat] [--debug] [--direct-c]
```

Options:
- `--skip-serialize` : skip regenerating serialized pattern files when present
- `--use-pat` : use `.pat` files directly (no serialization)
- `--direct-c` : apply patterns directly to `.c` files (skip compilation step)

Outputs: per-directory log files named `<pattern>.txt` describing matches and
rewrites.

### `angha_rewrite`
- Collected rewritten source/examples produced from Angha/AnghaMatch
	experiments. 
- Each test contain its own makefile.

### `polybench-c-3.2`
- Purpose: C benchmark suite (PolyBench/C) used to evaluate SMR rewrites on
	standard kernels.
- Run (example): from the suite folder or repository root:

```bash
cd polybench-c-3.2
./test_smr.sh <pat.pat>
```

The `test_smr.sh` script compiles benchmarks with timing/dump flags,
generates MLIR baseline and rewritten MLIR, lowers to LLVM/objects and
compares execution times and numeric outputs (it includes a tolerant float
comparator).

### `polybench-fortran`
- Purpose: Fortran version of the PolyBench suite. Useful to reproduce the
	original SMR article experiments where Fortran kernels were used.

### `smr-artifact-main`
- Purpose: Scripts and resources used to reproduce the results shown in the
	SMR paper (execution time plots, compilation overhead, validation, Angha
	matches, Dockerfile, etc.).
- Key scripts:
	- `execution_times.sh` — reproduce execution-time experiment and plot
	- `compilation_times.sh` — measure SMR compilation overhead
	- `validate.sh` — validate correctness of rewrites (relative error check)
	- `angha_matches.sh` — run pattern matches against Angha C inputs
	- `compare.py` — helper to compare relative error
- Run (examples):

```bash
cd smr-artifact-main
bash execution_times.sh
bash compilation_times.sh
bash validate.sh
bash angha_matches.sh
```

The folder also contains a `Dockerfile` to recreate the experiment environment
and helper scripts for plotting and validation.

## Acknowledgments

We express our gratitude to [AnghaBench](https://github.com/brenocfg/AnghaBench)
and [Polybench](https://www.cs.colostate.edu/~pouchet/software/polybench/)
for providing benchmarks to support source-to-source compiler research and
pattern validation.