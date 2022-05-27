#!/bin/bash

##### linux host system with gcc/g++
mkdir -p build-host-gcc-linux
pushd build-host-gcc-linux
cmake -DNCNN_BUILD_TOOLS=ON -DCMAKE_TOOLCHAIN_FILE=../toolchains/host.gcc.toolchain.cmake ..
make -j8
make install
popd

