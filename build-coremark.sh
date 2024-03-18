#!/bin/bash

set -e

BASEDIR=$PWD
CM_FOLDER=coremark

cd $BASEDIR/$CM_FOLDER

# run the compile
echo "Start compilation"
make PORT_DIR=../riscv64 compile
mv coremark.riscv ../cm_riscv

make PORT_DIR=../riscv64-baremetal compile ITERATIONS=2
mv coremark.bare.riscv ../cm_riscv
