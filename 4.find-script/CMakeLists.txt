cmake_minimum_required(VERSION 3.17)

list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake")

project("Hello")

set(CMAKE_INSTALL_PREFIX "${CMAKE_BINARY_DIR}/install")

find_package(HelloLibrary REQUIRED)
add_subdirectory(src)
