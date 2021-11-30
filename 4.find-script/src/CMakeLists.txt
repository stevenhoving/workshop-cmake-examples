project(Example CXX)

add_executable(Example
    main.cpp
)

target_link_libraries(Example
  PUBLIC
    HelloLibrary::HelloLibrary
)

target_compile_features(Example
  PUBLIC
    cxx_std_11
)

install(TARGETS Example)
