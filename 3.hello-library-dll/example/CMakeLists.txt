project(Example)

add_executable(Example
    main.cpp
)

target_link_libraries(Example
  PUBLIC
    HelloLibraryDll
)

target_compile_features(Example
  PUBLIC
    cxx_std_11
)

install(TARGETS Example)
