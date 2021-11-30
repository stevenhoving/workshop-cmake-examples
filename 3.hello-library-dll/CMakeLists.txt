cmake_minimum_required(VERSION 3.17)

set(CMAKE_CXX_STANDARD 17)

set(CMAKE_INSTALL_PREFIX ${CMAKE_BINARY_DIR}/install)

include(GenerateExportHeader)

project(Hello CXX)

add_library(HelloLibraryDll SHARED
  include/HelloLibraryDll/hello.h
  src/hello.cpp
)

generate_export_header(HelloLibraryDll)

target_include_directories(HelloLibraryDll
  PUBLIC
    include
    ${CMAKE_CURRENT_BINARY_DIR}
)

install(TARGETS HelloLibraryDll)

add_subdirectory(example)

# For additional info on "packagable libraries", please see https://www.youtube.com/watch?v=_5weX5mx8hc