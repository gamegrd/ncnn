#!/usr/bin/env bash

#### android aarch64 vulkan
mkdir -p build-android-aarch64-vulkan
pushd build-android-aarch64-vulkan
cmake -DCMAKE_TOOLCHAIN_FILE=$ANDROID_NDK/build/cmake/android.toolchain.cmake -DANDROID_ABI="arm64-v8a" -DANDROID_PLATFORM=android-26 -DNCNN_VULKAN=ON ..
make -j8
make install
popd
