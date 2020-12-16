#!/bin/sh

rm -rf ninja_build
mkdir ninja_build
cd ninja_build
cmake ../ -G "Ninja"
cd ..
