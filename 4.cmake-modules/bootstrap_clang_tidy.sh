#!/bin/sh

rm -rf clang_tidy_build
mkdir clang_tidy_build
cd clang_tidy_build
cmake -G "Ninja" -DCMAKE_PREFIX_PATH="C:/Program Files (x86)/LLVM/bin/" -DENABLE_RUN_CLANG_TIDY=ON ../
cd ..
