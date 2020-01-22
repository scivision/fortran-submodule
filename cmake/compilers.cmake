if(NOT PROJECT_SOURCE_DIR STREQUAL CMAKE_SOURCE_DIR)
  # this will NOT return for ExternalProject
  # this will return for FetchContent
  return()
endif()

if(CMAKE_Fortran_COMPILER_ID STREQUAL Intel)
  set(CMAKE_Fortran_FLAGS $<IF:WIN32,"/stand:f18 /traceback /warn /heap-arrays ","-stand f18 -traceback -warn -heap-arrays ">)

  if(CMAKE_BUILD_TYPE STREQUAL Debug)
    string(APPEND CMAKE_Fortran_FLAGS $<IF:WIN32,"/debug /check:all ","-debug extended -check all ">)
  endif()
elseif(CMAKE_Fortran_COMPILER_ID STREQUAL GNU)
  if(CMAKE_Fortran_COMPILER_VERSION VERSION_GREATER_EQUAL 8)
    set(CMAKE_Fortran_FLAGS "-std=f2018 ")
  endif()
  string(APPEND CMAKE_Fortran_FLAGS "-march=native -Wall -Wextra -fimplicit-none ")

  if(CMAKE_BUILD_TYPE STREQUAL Debug)
    string(APPEND CMAKE_Fortran_FLAGS "-Werror=array-bounds -fcheck=all ")
  endif()
elseif(CMAKE_Fortran_COMPILER_ID STREQUAL PGI)
  set(CMAKE_Fortran_FLAGS "-C -Mdclchk ")
elseif(CMAKE_Fortran_COMPILER_ID STREQUAL NAG)
  # https://www.nag.co.uk/nagware/np/r70_doc/manual/compiler_2_4.html#OPTIONS
  set(CMAKE_Fortran_FLAGS "-f2018 -C -colour -gline -nan -info -u ")
endif()
