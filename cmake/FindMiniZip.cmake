# Find the MiniZip library
# Defines:

#  MINIZIP_INCLUDE_DIR - MiniZip includes
#  MINIZIP_LIBRARY     - MiniZip libraries
#  MINIZIP_FOUND       - TRUE if minizip is found


if (MINIZIP_INCLUDE_DIR)
  #check cache 
  set(MINIZIP_FIND_QUIETLY TRUE)
endif ()


if (NOT MINIZIP_INCLUDE_DIR)
    find_path(MINIZIP_INCLUDE_DIR NAMES unzip.h zip.h PATH_SUFFIXES minizip)
    set(MINIZIP_INCLUDE_DIR ${MINIZIP_INCLUDE_DIR}/minizip CACHE PATH "MiniZip includes")
endif ()

find_library(MINIZIP_LIBRARY NAMES minizip)

if (MINIZIP_INCLUDE_DIR AND MINIZIP_LIBRARY)
   set(MINIZIP_FOUND TRUE)
endif ()

if (MINIZIP_FOUND)
   if (NOT MINIZIP_FIND_QUIETLY)
      message(STATUS "Found MiniZip: ${MINIZIP_LIBRARY}")
   endif ()
else ()
    if (MINIZIP_FIND_REQUIRED)
      message(FATAL_ERROR "Could NOT find MiniZip")
    else ()
      message(STATUS "Could NOT find MiniZip")
    endif ()
endif ()


