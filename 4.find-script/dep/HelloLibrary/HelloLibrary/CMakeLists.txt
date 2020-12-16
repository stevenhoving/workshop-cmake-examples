
include(GenerateExportHeader)

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

set_target_properties(HelloLibraryDll PROPERTIES
  DEBUG_POSTFIX d
)

install(TARGETS HelloLibraryDll
    RUNTIME DESTINATION bin
    LIBRARY DESTINATION lib
    ARCHIVE DESTINATION lib
)

install(DIRECTORY include/HelloLibraryDll
  DESTINATION
    include
)

install(FILES
  ${PROJECT_BINARY_DIR}/HelloLibraryDll_export.h
  DESTINATION include/HelloLibraryDll
)
