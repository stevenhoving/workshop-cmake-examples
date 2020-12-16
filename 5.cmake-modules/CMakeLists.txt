cmake_minimum_required(VERSION 3.17)

list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake")

if (NOT CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "${CMAKE_BINARY_DIR}/install")
endif()

set(CMAKE_CXX_STANDARD 17)

include (GenerateExportHeader)
include (RunClangTidy)

project(HelloLibraryDll CXX)

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
