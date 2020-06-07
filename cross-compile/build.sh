#!/bin/bash
rm -rf build

mkdir build

cd build

cmake -DANDROID_NDK=${NDK_HOME} \
        -DCMAKE_TOOLCHAIN_FILE=${NDK_HOME}/build/cmake/android.toolchain.cmake \
        -DANDROID_ABI="armeabi-v7a" \
        -DANDROID_NATIVE_ABI_LEVEL=19 \
        ..

make
