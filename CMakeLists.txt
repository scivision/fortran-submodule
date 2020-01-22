cmake_minimum_required(VERSION 3.14)
if(NOT CMAKE_BUILD_TYPE)
  set(CMAKE_BUILD_TYPE Release CACHE STRING "Debug or Release")
endif()

project(f2008submod
  LANGUAGES Fortran
  VERSION 1.2.0
  HOMEPAGE_URL https://github.com/scivision/fortran-submodule
  DESCRIPTION "examples of Fortran 2008 submodule")

enable_testing()

include(cmake/compilers.cmake)

add_subdirectory(src)
