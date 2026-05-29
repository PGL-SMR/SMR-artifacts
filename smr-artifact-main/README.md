# SMR Artifact

This repository contains the required resources to reproduce SMR's article 
results.


## Repository Contents


### Folders

- `utilities/` - Polybench benchmark utility library.
- `patterns/` - SMR PAT files used to rewrite Polybench kernels.
- `blas-replacements/` - Source code examples of the desired rewrites.
- `gnu-scripts/` - Gnuplot scripts used for ploting CSV files.
- `angha/` - C input files which were recovered from GitHub using Angha.

### Bash Scripts

- `utils.sh` - Utilitary bash fuctions used by others scripts.
- `validate.sh` - Compares polybench gFortran reference results against SMR results.
- `execution_times.sh` - Generates a plot comparing gFortran, Flang and SMR benchmark times.
- `compilation_times.sh` - Generates a plot evaluating SMR rewrite time overhead.
- `angha_matches.sh` - Uses SMR to match C PAT files against C code in `angha`.

### Others

- `Dockerfile` - Contains all steps to recreate the container.
- `fpolybench.patch` - Patch for PolyBench to compile it with Clang.
- `compare.py` - Python script to compare relative error.
- `angha/angha.pat` - C code PAT file to be used with Agha's C input code.

## Reproducing Results

The SMR article contains three set of results: execution times, compilation
overhead and coverage.

**Note:** Coverage involves generating and crawling through several lines of code
from several GitHub repositories. Due to the computational heft of the coverage 
experiment, it will not be reproducible in this artifact.


### Running Pre-Built the Container

Start by cloning this repository, then move into the cloned folder.

```bash
docker pull sitio/smr-artifact
docker run -it --name smr-container sitio/smr-artifact bash
```

### Building the Container

To build the container, you must have a recent and working docker installation 
and execute the following commands:

```bash
git clone --recurse-submodules https://gitlab.com/parlab/smr-artifact.git
cd <cloned repository path>
DOCKER_BUILDKIT=1 docker build . -t your/smr-artifact
docker run -it --name smr-container your/smr-artifact bash
```

**Some stages of the build can use large amounts of memory depending on the amount
of threads utilized**, to prevent the host machine from crashing, you can use
Docker build command options flags to limit the amount of CPUs and memory used.


### Execution Times Results

SMR rewrites PolyBench Fortran kernels by using the PAT language files in 
`patterns/`. These rewrites use highly optimized openblas library calls, which 
greatly reduces execution times of codes with standard `-O3` flag optimization.

Use the following commands to reproduce this experiment:

```bash
cd /root/smr-artifact
bash execution_times.sh
```

A PDF file (`/root/smr-artifact/execution_times.sh`) will be generated.
It should contain a plot comparing regular Flang and gFortran optimized codes
against SMR rewritten code.

Run the following command on your host machine to extract the PDF file from the
container (replace `<target-folder>` with a folder from your host machine):

```bash
docker cp smr-container:/root/smr-artifact/execution_times.pdf <target-folder>
```

### Compilation Times Results

Although SMR can greatly improve execution times through rewrites, the algorithm
applied to inteprete the PAT language, recognize patterns, and rewrite the code,
adds overhead to the compilation time of a program.

Use the following commands to reproduce this experiment:

```bash
cd /root/smr-artifact
bash compilation_times.sh
```

A PDF file (`/root/smr-artifact/compilation_times.sh`) will be generated.
It should contain a plot comparing regular FIR toolchain compilation times
with and without SMR's rewrite overhead.


Run the following command on your host machine to extract the PDF file from the
container (replace `<target-folder>` with a folder from your host machine):

```bash
docker cp smr-container:/root/smr-artifact/compilation_times.pdf <target-folder>
```

### SMR Rewrite Correctness

An extra script is available to validate correctness of said SMR rewrites.
SMR will automate the rewrites exemplified inside `blas-replacements/`.
For example, **`blas-replacements/gemm.F90` shows how we can manually 
replace** the polybench kernel by a blas call. In essence, **SMR applies this
same rewrite, but does so automatically at MLIR IR level** using the source
codes in the PAT files at `patterns/`.

The validation method uses a relative error comparison. The acceptable error 
margin is 10<sup>-7</sup>, which is equivalent to a maximum diference of
0.00001% against polybench's original value.

Use the following commands to validate SMR rewrites:

```bash
cd /root/smr-artifact
bash validate.sh
```

### Angha Matches

SMR aims for flexibility to be used with multiple dialects and frontends. While
the previous experiments are all done using the FIR dialect, here we exhibit
SMR functioning with C source code through the CIL dialect.

The original experiment involved using Angha, a tool which can crawl through
GitHub repositories and reconstruct snippets of C codes, allowing us to use a
more "human-like" code as benchmark. This experiment takes 9 idioms as pattenrs
from `angha/angha.pat` and attempts to match them against snippets of codes
from well-known tools such as FFmpeg and Darknet. Due to the computational heft
of this experiment, the webcrawling and code reconstruction steps were skiped,
also, the only files kept in `angha` are the ones which have one or more matches
with one of the patterns from `angha/angha.pat`, several other files in which
no matches were found were left out to shorten the experiment reproduction.

Use the following commands to reproduce this experiment:

```bash
cd /root/smr-artifact
bash angha_matches.sh
```

The output consists only on the stdout logs informing which and how many matches
were found in each C file.
