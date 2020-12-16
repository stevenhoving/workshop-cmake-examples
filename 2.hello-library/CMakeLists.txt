cmake_minimum_required(VERSION 3.17)

set(CMAKE_CXX_STANDARD 17)

project(HelloLibrary CXX)

add_library(HelloLibrary STATIC
  include/HelloLibrary/hello.h
  src/hello.cpp
)

target_include_directories(HelloLibrary
  PUBLIC
    include
)

add_subdirectory(example)
