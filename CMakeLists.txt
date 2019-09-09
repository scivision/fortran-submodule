cmake_minimum_required(VERSION 3.12)
project(f2008submod Fortran)
enable_testing()

option(FAIL "deliberately include code that triggers bugs that fail compilation" OFF)

include(cmake/compilers.cmake)

add_subdirectory(src)