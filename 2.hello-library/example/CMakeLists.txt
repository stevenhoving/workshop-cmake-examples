project(Example)

set(CMAKE_CXX_STANDARD 11)

add_executable(Example
    main.cpp
)

target_link_libraries(Example
  PUBLIC
    HelloLibrary
)
