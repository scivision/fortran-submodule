cmake_minimum_required(VERSION 3.12)
project(f2008submod Fortran)
enable_testing()

option(FAIL "deliberately include code that triggers bugs that fail compilation" OFF)

include(cmake/compilers.cmake)

if(NOT f08submod)
  message(FATAL_ERROR ${CMAKE_Fortran_COMPILER_ID} ${CMAKE_Fortran_COMPILER_VERSION} " does not support Fortran 2008 SUBMODULE")
endif()

add_executable(hier grandchild.f90 child.f90 parent.f90 greatgrandchild.f90)
add_test(NAME Hierarchy COMMAND hier)

add_executable(basic basic.f90 basic_sub.f90)
add_test(NAME BasicSubmod COMMAND basic)

add_executable(points_basic points_basic.f90 geo_basic.f90)
add_test(NAME BasicPoints COMMAND points_basic)

set(basic_submod PGI Flang) # FIXME probably fixed after Flang 7 and PGI 18.10
if(NOT CMAKE_Fortran_COMPILER_ID IN_LIST basic_submod)
  add_executable(new points.f90 geo.f90)
  add_test(NAME PointsNew COMMAND new)

  add_executable(old points.f90 geo_legacy.f90)
  add_test(NAME PointsOld COMMAND old)
endif()

add_executable(minimal minimal.f90)
add_test(NAME minimal COMMAND minimal)

add_executable(overspec main1.f90 parent1.f90 child1.f90)
add_test(NAME OverSpec COMMAND overspec)

if(FAIL)
add_executable(repeated repeated.f90 repeated_child.f90)
endif(FAIL)
