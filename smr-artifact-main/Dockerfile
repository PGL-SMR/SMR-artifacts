# set base image
FROM ubuntu:20.04

# install necessary tools for the image
RUN export DEBIAN_FRONTEND=noninteractive \
 && apt-get update \
 && apt-get install -y \
 bc \
 clang \
 cmake \
 flang \
 gfortran \
 git \
 gnuplot \
 lld \
 nano \
 ninja-build \
 python3.9 \
 wget

# go to builds directory
WORKDIR /root/builds

# build openblas 0.3.20
RUN git clone --depth 1 -b v0.3.20 https://github.com/xianyi/OpenBLAS.git \
 && cd OpenBLAS && mkdir install \
 && make && make PREFIX=$(pwd)/install install

# prepare MLIR build directories
RUN git clone --depth 1 -b release/11.x https://github.com/llvm/llvm-project.git \
 && mkdir mlir-build

# FIR frontend build information
ARG FIR_BRANCH='fir-dev'
ARG FIR_COMMIT='8abd290c2c791c26cd1237b218def1b85998d403'
ARG FIR_REPO='https://github.com/flang-compiler/f18-llvm-project.git'

# prepare FIR frontend build directories
RUN git clone --depth 1 -b ${FIR_BRANCH} ${FIR_REPO} \
 && cd f18-llvm-project \
 # fetch desired git commit
 && git fetch --depth=1 origin ${FIR_COMMIT} \
 # reset current branch head to desired git commit
 && git reset --hard FETCH_HEAD \
 && cd .. && mkdir -p fir-build

# prepare CIL frontend build directories
RUN git clone --depth 1 -b cil https://github.com/compiler-tree-technologies/cil.git cil-llvm-project \
 && mkdir -p cil-build

# prepare SMR source code
COPY ./pat-compiler ./pat-compiler
RUN mkdir -p ./pat-compiler/build


# move to MLIR build directory
WORKDIR /root/builds/mlir-build

# configure and build MLIR 11
RUN cmake -G Ninja ../llvm-project/llvm \
          -DLLVM_ENABLE_PROJECTS="mlir" \
          -DLLVM_TARGETS_TO_BUILD="X86" \
          -DCMAKE_BUILD_TYPE=Release \
          -DLLVM_ENABLE_ASSERTIONS=ON \
          -DCMAKE_C_COMPILER=clang \
          -DCMAKE_CXX_COMPILER=clang++ \
          -DLLVM_ENABLE_LLD=ON
RUN ninja install


# move to FIR build directory
WORKDIR /root/builds/fir-build

# configure FIR frontend build
RUN cmake ../f18-llvm-project/llvm \
 -G Ninja \
 -DLLVM_ENABLE_PROJECTS="clang;flang" \
 -DLLVM_TARGETS_TO_BUILD="X86" \
 -DCMAKE_BUILD_TYPE=Release \
 -DCMAKE_C_COMPILER=clang \
 -DCMAKE_CXX_COMPILER=clang++ \
 -DCMAKE_CXX_STANDARD=17 \
 -DLLVM_BUILD_TOOLS=On

# NOTE: the first build attempt usually fails, but continuing the build tends
#       to result in a sucessful build. Hence the loop below. Also, increasing
#       the number of parallel jobs can cause high memory usage (> 32G).
#
# build FIR frontend
RUN RESULT=1; \
 while [ $RESULT != 0 ]; \
 do ninja -j 6; RESULT=$?; \
 done;

# link binaries to folder in PATH
RUN ln -s $(pwd)/bin/bbc  /usr/local/bin/bbc \
 && ln -s $(pwd)/bin/tco  /usr/local/bin/tco


# move to CIL build directory
WORKDIR /root/builds/cil-build

# configure and build older MLIR build for CIL frontend
RUN cmake -G Ninja ../cil-llvm-project/llvm \
          -DLLVM_ENABLE_PROJECTS="mlir" \
          -DLLVM_TARGETS_TO_BUILD="X86" \
          -DCMAKE_BUILD_TYPE=Release \
          -DCMAKE_C_COMPILER=clang \
          -DCMAKE_CXX_COMPILER=clang++ \
          -DCMAKE_CXX_STANDARD=17 \
          -DLLVM_ENABLE_LLD=ON
RUN ninja install

# configure and build CIL frontend
RUN cmake -G Ninja ../cil-llvm-project/llvm \
          -DLLVM_PARALLEL_LINK_JOBS=2 \
          -DLLVM_ENABLE_PROJECTS="mlir;clang" \
          -DLLVM_TARGETS_TO_BUILD="X86" \
          -DCMAKE_BUILD_TYPE=Release \
          -DCMAKE_C_COMPILER=clang \
          -DCMAKE_CXX_COMPILER=clang++ \
          -DCMAKE_CXX_STANDARD=17 \
          -DLLVM_ENABLE_LLD=ON
RUN ninja cml

# link binaries to folder in path
RUN ln -s $(pwd)/bin/cml  /usr/local/bin/cml


# move to SMR build directory
WORKDIR /root/builds/pat-compiler/build

# configure and build SMR frontend
RUN cmake -G Ninja .. \
          -DCMAKE_BUILD_TYPE=Release \
          -DMLIR_DIR=/root/builds/mlir-build/lib/cmake/mlir \
          -DCMAKE_C_COMPILER=clang \
          -DCMAKE_CXX_COMPILER=clang++
RUN ninja SMR

# link SMR binary to folder in PATH
RUN ln -s $(pwd)/bin/SMR  /usr/local/bin/SMR

# reset working directory
WORKDIR /root

# patch gnuplot shared lib (error observed in some cases)
RUN strip --remove-section=.note.ABI-tag /usr/lib/x86_64-linux-gnu/libQt5Core.so.5

# add testing resources to container
ADD ./ /root/smr-artifact

# move into artifact directory
WORKDIR /root/smr-artifact

# install polybench fortran benchmark
ARG POLYBECH_FORTRAN="http://web.cse.ohio-state.edu/~pouchet.2/software/polybench/download/polybench-fortran-1.0.tar.gz"
RUN wget -q -nc --no-check-certificate ${POLYBECH_FORTRAN} && \
    tar -x -f polybench-fortran-1.0.tar.gz

# apply patches
RUN for i in patches/*.patch; do patch -p0 < $i; done;

# set required enviroment variables
ENV FIR_LIB='/root/builds/fir-build/lib'
