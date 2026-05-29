#!/usr/bin/env bash
##
## Utilitary bash functions.
##

#
# GLOBALS
#
FIR_LIB='/root/builds/fir-build/lib'
LIB_OPENBLAS='/root/builds/OpenBLAS/install/lib'
DEF="-DLARGE_DATASET -DPOLYBENCH_TIME"
DIVIDER="======================================================================"
SUBDIVIDER="-------------------------------------------"
RESULT=""
POLY_UTILS="polybench-fortran-1.0/utilities"


#
# CODE
#

# create required directories
mkdir -p bin/ csv/ tmp/


function logKernel()
{
  echo $DIVIDER
  echo "    $1"
  echo $SUBDIVIDER
}


function logInfo()
{
  echo "[INFO] $1"
}


# Compiles a PolyBench utilitaries library
#
function buildPolybenchUtils()
{
  rm $POLY_UTILS/fpolybench.o
  gcc -c -O3 $POLY_UTILS/fpolybench.c -o $POLY_UTILS/fpolybench.o $DEF 
}


# Compiles a Fotran input file using FIR's toolchain
#
# $1 - Input file to be compiled (must be .f90 or .mlir)
# $2 - Output binary file path
#
function FIRBinary()
{
  # fetch input file extension
  extension=${1##*.}

  # input is source code: lower to MLIR
  if [[ "${extension^^}" == "F90" ]]
  then

    # digest preprocessor directives
    flang $1 -E $DEF > tmp/input.f90

    # lower Fortran to MLIR
    bbc tmp/input.f90 -emit-fir -o tmp/input.mlir

  # input is already MLIR: copy and rename input file
  elif [[ "${extension^^}" == "MLIR" ]]
  then
    cp $1 tmp/input.mlir
  fi

  # lower MLIR to LLVM IR
  tco tmp/input.mlir -o tmp/input.ll

  # lower LLVM IR to assembly
  llc tmp/input.ll -O3 -filetype=obj -o tmp/input.o

  # fix FIR symbols to match GCC
  objcopy tmp/input.o \
    --redefine-sym _QPcheck_err=check_err_ \
    --redefine-sym _QPpolybench_timer_start=polybench_timer_start_ \
    --redefine-sym _QPpolybench_timer_stop=polybench_timer_stop_ \
    --redefine-sym _QPpolybench_timer_print=polybench_timer_print_

  # fix FIR BLAS symbols to match BLAS library
  objcopy tmp/input.o \
    --redefine-sym _QPdgemm=dgemm_ \
    --redefine-sym _QPdgemv=dgemv_ \
    --redefine-sym _QPdsymm=dsymm_ \
    --redefine-sym _QPdsyr2k=dsyr2k_ \
    --redefine-sym _QPdtrmm=dtrmm_

  # link GCC polybench utils with FIR kernel
  clang tmp/input.o \
    ./$POLY_UTILS/fpolybench.o \
    $FIR_LIB/libFortran_main.a \
    $FIR_LIB/libFortranRuntime.a \
    $FIR_LIB/libFortranDecimal.a \
    $LIB_OPENBLAS/libopenblas.a \
    -lpthread -lstdc++ -lm -o $2
}


# Compiles a Fotran input file and rewrites it with the specified kernel
#
# $1 - Input file to be compiled
# $2 - PAT file to be used
# $3 - Optimized binary file path
#
function SMRBinary ()
{
  # process compiler directives with flang
  flang -I$POLY_UTILS $1 -E $DEF > tmp/input.f90

  # replace polybench kernel with BLAS call using SMR
  SMR tmp/input.f90 --pat=$2 -d fir -o tmp/rewritten.mlir

  # remove module_terminator operations (unsupported by TCO)
  sed -i "/\bmodule_terminator\b/d" tmp/rewritten.mlir

  # compile rewritten MLIR code with FIR toolchain
  FIRBinary "tmp/rewritten.mlir" "$3"
}


# Compiles a Polybench Fortran input file using GFortran
#
# $1 - Input file to be compiled
# $2 - Output binary file path
#
function gFortranBinary()
{
  gfortran $DEF -O3 \
    $LIB_OPENBLAS/libopenblas.a \
    ./$POLY_UTILS/fpolybench.o $1 -o $2 \
    -ffree-line-length-none \
    -I$POLY_UTILS
}


# Compiles a Polybench Fortran input file using Flang
#
# $1 - Input file to be compiled
# $2 - Output binary file path
#
function FlangBinary()
{
  flang $DEF -O3 \
    $LIB_OPENBLAS/libopenblas.a \
    $POLY_UTILS/fpolybench.o \
    $1 -o $2 -I$POLY_UTILS
}


# Compiles a Polybench Fortran input file using Flang
#
# $1 - Compilation path to be timed (flang or smr)
# $2 - Kernel compilation to be timed
#
function timeExecution()
{
  # set argument variables
  input_file="polybench-fortran-1.0/linear-algebra/kernels/$2/$2.F90"
  pattern_file="patterns/$2.pat"
  binary_file="tmp/bin"

  # chose which compilation to time
  if [[ "$1" == "fir" ]]
  then command="FIRBinary $input_file $binary_file"
  elif [[ "$1" == "smr" ]]
  then command="SMRBinary $input_file $pattern_file $binary_file"
  fi

  # time compilation command and print to stdout
  ts=$(date +%s%N)
  OUTPUT=$($command)
  echo "scale=7; ($(date +%s%N) - $ts)/1000000" | bc
}


# Executes polybench time_benchmark and appends output time in a CSV format
#
# $1 - Executable file to be timed by polybench's time_benchmark.sh
#
function polybenchTimeToCsv()
{
  # set polybench benchmark script
  BENCHMARK="$POLY_UTILS/time_benchmark.sh"

  # set regex to fetch benchmark time
  REGEX="Normalized time: ([0-9.]+)"

  # print and capture benchmark output
  exec 5>&1
  result=$(stdbuf -oL ./$BENCHMARK $1 2> /dev/null | tee >(cat - >&5))

  # append capture and append benchmark time to variable
  if [[ "$result" =~ $REGEX ]]
  then
    TIMINGS="$TIMINGS,${BASH_REMATCH[1]}"
  fi
}
