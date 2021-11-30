project(Example)

set(CMAKE_CXX_STANDARD 11)

add_executable(Example
    main.cpp
)

target_link_libraries(Example
  PUBLIC
    HelloLibrary
)

# Added in CMake 3.1
# set_property(TARGET Example
#   PROPERTY
#     CXX_STANDARD 11
# )

# Added in CMake 3.8
# target_compile_features(Example
#   PUBLIC
#     cxx_std_11
# )

# Question: What do you guys prefer?