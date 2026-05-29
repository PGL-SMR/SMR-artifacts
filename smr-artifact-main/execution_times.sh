#!/usr/bin/env bash

source utils.sh


#
# GLOBALS
#
KERNELS=("2mm" "3mm" "gemm" "syrk" "None" "atax" "bicg" "mvt") # kernels to be timed
DEF="-DLARGE_DATASET -DPOLYBENCH_TIME" # Polybench flags

# binaries folders
GFOR_DIR="bin/gfortran"
SMR_DIR="bin/smr"
FLANG_DIR="bin/flang"


#
# SCRIPT
#

# prepare CSV output file
echo '"Kernel","Flang -O3","SMR+BLAS","gFortran -O3"' > csv/execution_times.csv

# build utils library (uses utils.sh method)
buildPolybenchUtils

# time each kernel
for kernel in ${KERNELS[@]}; do

  # blank kernel: add blank line and skip to next kernel
  if [[ "$kernel" == "None" ]]
  then 
    echo "" >> csv/execution_times.csv
    continue
  fi

  # valid kernel: time it
  logKernel "Timming ${kernel^^} Kernel Binaries"

  input_file="polybench-fortran-1.0/linear-algebra/kernels/$kernel/$kernel.F90"
  mkdir -p $GFOR_DIR $FLANG_DIR $SMR_DIR
  TIMINGS="$kernel"

  # time Flang -O3 kernel
  logInfo "Timming Flang Binary"
  FlangBinary "$input_file" "$FLANG_DIR/$kernel"
  polybenchTimeToCsv "$FLANG_DIR/$kernel"

  # time SMR kernel
  logInfo "Timming SMR Binary"
  SMRBinary "$input_file" "patterns/$kernel.pat" "$SMR_DIR/$kernel"
  polybenchTimeToCsv "$SMR_DIR/$kernel"

  # time gFortran -O3 kernel
  logInfo "Timming gFortran Binary"
  gFortranBinary "$input_file" "$GFOR_DIR/$kernel"
  polybenchTimeToCsv "$GFOR_DIR/$kernel"

  # append kernel time to CSV file
  echo "$TIMINGS" >> csv/execution_times.csv

done

# plot results
gnuplot gnu-scripts/execution_times.gnu

echo "$DIVIDER"
