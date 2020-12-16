
######## find #######

# include
find_path(HELLOLIBRARY_INCLUDE_DIR
  NAMES
    HelloLibraryDll/hello.h
  PATH_SUFFIXES
    include
  REQUIRED
)
    
# libs
find_library(HELLOLIBRARY_LIBRARY_RELEASE
  NAMES
    HelloLibraryDll
  PATH_SUFFIXES
    lib
  REQUIRED
)

find_library(HELLOLIBRARY_LIBRARY_DEBUG
  NAMES
    HelloLibraryDlld
  PATH_SUFFIXES
    lib
  REQUIRED
)

# dll
find_program(HELLOLIBRARY_BIN_RELEASE NAMES HelloLibraryDll.dll PATH_SUFFIXES bin REQUIRED)
find_program(HELLOLIBRARY_BIN_DEBUG NAMES HelloLibraryDlld.dll PATH_SUFFIXES bin REQUIRED)


######## error handling #######

# if we can't find the header the following variable is set
# HELLOLIBRARY_INCLUDE_DIR_NOTFOUND

# if we can't find the libs the following variables are set
# HELLOLIBRARY_LIBRARY_RELEASE_NOTFOUND and HELLOLIBRARY_LIBRARY_DEBUG_NOTFOUND

# if we can't find the libs the following variables are set
# HELLOLIBRARY_BIN_RELEASE_NOTFOUND or HELLOLIBRARY_BIN_DEBUG_NOTFOUND


mark_as_advanced(
    HELLOLIBRARY_LIBRARY_RELEASE
    HELLOLIBRARY_LIBRARY_DEBUG
    HELLOLIBRARY_BIN_RELEASE
    HELLOLIBRARY_BIN_DEBUG
)


if(NOT TARGET HelloLibrary::HelloLibrary)

  add_library(HelloLibrary::HelloLibrary UNKNOWN IMPORTED)
  
  set_property(TARGET HelloLibrary::HelloLibrary APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
  set_property(TARGET HelloLibrary::HelloLibrary APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
  
  set_target_properties(HelloLibrary::HelloLibrary PROPERTIES
    INTERFACE_INCLUDE_DIRECTORIES "${HELLOLIBRARY_INCLUDE_DIR}"
    IMPORTED_LOCATION_RELEASE "${HELLOLIBRARY_LIBRARY_RELEASE}"
    IMPORTED_LOCATION_DEBUG "${HELLOLIBRARY_LIBRARY_DEBUG}"
  )
endif()