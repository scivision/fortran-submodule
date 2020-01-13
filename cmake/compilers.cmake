if(NOT PROJECT_SOURCE_DIR STREQUAL CMAKE_SOURCE_DIR)
  # this will NOT return for ExternalProject
  # this will return for FetchContent
  return()
endif()

if(CMAKE_Fortran_COMPILER_ID STREQUAL Intel)
  if(NOT WIN32)
    set(FFLAGS -stand f18 -traceback -warn -heap-arrays)
  else()
    set(FFLAGS /stand:f18 /traceback /warn /heap-arrays)
    # Note: -g is /debug:full for ifort Windows
  endif()
elseif(CMAKE_Fortran_COMPILER_ID STREQUAL GNU)
  if(CMAKE_Fortran_COMPILER_VERSION VERSION_GREATER_EQUAL 8)
    set(FFLAGS -std=f2018)
  endif()
  list(APPEND FFLAGS -march=native -Wall -Wextra -Wpedantic -Werror=array-bounds -fimplicit-none)

  if(CMAKE_BUILD_TYPE STREQUAL Debug)
    list(APPEND FFLAGS -fcheck=all)
  endif()
elseif(CMAKE_Fortran_COMPILER_ID STREQUAL PGI)
  set(FFLAGS -C -Mdclchk)
elseif(CMAKE_Fortran_COMPILER_ID STREQUAL Flang)
  set(FFLAGS -W)
elseif(CMAKE_Fortran_COMPILER_ID STREQUAL NAG)
  # https://www.nag.co.uk/nagware/np/r62_doc/manual/compiler_2_4.html#OPTIONS
  list(APPEND FFLAGS -f2008 -C -colour -gline -nan -info -u)
endif()
