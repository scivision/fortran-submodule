cmake_minimum_required(VERSION 3.12)
if(NOT CMAKE_BUILD_TYPE)
  set(CMAKE_BUILD_TYPE Release CACHE STRING "Debug or Release")
endif()
project(f2008submod Fortran)
enable_testing()

include(cmake/compilers.cmake)

add_subdirectory(src)
