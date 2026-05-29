#!/bin/bash

# polybech not set: download and patch
if [ ! -d "/root/smr-artifact/polybench-fortran-1.0" ]; then
  echo "Downloading and patching polybench ..."
  cd /root/smr-artifact
  POLYBENCH="http://web.cse.ohio-state.edu/~pouchet.2/software/polybench/download/polybench-fortran-1.0.tar.gz"
  wget -q -nc --no-check-certificate ${POLYBENCH} \
    && tar -x -f polybench-fortran-1.0.tar.gz && rm polybench-fortran-1.0.tar.gz
  for i in patches/*.patch; do patch -p0 < $i; done;
fi

echo "Development container ready..."

# leave container running
tail -f /dev/null
