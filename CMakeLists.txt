cmake_minimum_required(VERSION 3.12...3.20)

project(f2008submod
  LANGUAGES Fortran
  VERSION 1.2.2
  HOMEPAGE_URL https://github.com/scivision/fortran-submodule
  DESCRIPTION "examples of Fortran 2008 submodule")

include(CTest)

include(cmake/compilers.cmake)

add_subdirectory(src)
