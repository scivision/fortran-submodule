if(CMAKE_BUILD_TYPE STREQUAL Debug)
  add_compile_options(-g -O0)
else()
  add_compile_options(-O3)
endif()

include(CheckFortranSourceCompiles)

check_fortran_source_compiles("
module b
interface
module subroutine d
end subroutine d
end interface
end

submodule (b) c
contains
module procedure d
end
end

program a
end"
  f08submod SRC_EXT f90)

              
if(CMAKE_Fortran_COMPILER_ID STREQUAL Intel)
  set(FFLAGS -stand f18 -implicitnone -traceback -warn)
  
  if(CMAKE_BUILD_TYPE STREQUAL Debug)
    list(APPEND FFLAGS -debug extended -check all)
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
  set(FFLAGS -C)
elseif(CMAKE_Fortran_COMPILER_ID STREQUAL Flang)
  set(CFLAGS -W)
elseif(CMAKE_Fortran_COMPILER_ID STREQUAL NAG)
  # https://www.nag.co.uk/nagware/np/r62_doc/manual/compiler_2_4.html#OPTIONS
  list(APPEND FFLAGS -f2008 -C -colour -gline -nan -info -u)
endif()

