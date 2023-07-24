cmake_minimum_required(VERSION 3.13...3.27)

if(CMAKE_SOURCE_DIR STREQUAL CMAKE_BINARY_DIR)
  message(FATAL_ERROR "cmake -B build    instead of in source build")
endif()

file(STRINGS ${CMAKE_CURRENT_SOURCE_DIR}/VERSION PROJECT_VERSION
  REGEX "^([0-9]+\.[0-9]+\.[0-9]+)" LIMIT_INPUT 16 LENGTH_MAXIMUM 16 LIMIT_COUNT 1)

project(f2008submod
LANGUAGES Fortran
VERSION ${PROJECT_VERSION}
HOMEPAGE_URL https://github.com/scivision/fortran-submodule
DESCRIPTION "examples of Fortran 2008 submodule"
)

enable_testing()

set(CMAKE_Fortran_MODULE_DIRECTORY ${PROJECT_BINARY_DIR}/include)

message(STATUS "CMake ${CMAKE_VERSION}  Fortran module directory ${CMAKE_Fortran_MODULE_DIRECTORY}")

add_subdirectory(src)
add_subdirectory(test)

file(GENERATE OUTPUT .gitignore CONTENT "*")
