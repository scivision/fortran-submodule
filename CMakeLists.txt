cmake_minimum_required(VERSION 3.17...3.22)

file(STRINGS ${CMAKE_CURRENT_SOURCE_DIR}/VERSION PROJECT_VERSION
  REGEX "^([0-9]+\.[0-9]+\.[0-9]+)" LIMIT_INPUT 16 LENGTH_MAXIMUM 16 LIMIT_COUNT 1)

project(f2008submod
LANGUAGES Fortran
VERSION ${PROJECT_VERSION}
HOMEPAGE_URL https://github.com/scivision/fortran-submodule
DESCRIPTION "examples of Fortran 2008 submodule"
)

include(CTest)

add_subdirectory(src)
