cmake_minimum_required(VERSION 3.12)
project(f2008submod Fortran)
enable_testing()

option(FAIL "deliberately include code that triggers bugs that fail compilation" OFF)

include(cmake/compilers.cmake)

add_executable(hier grandchild.f90 child.f90 parent.f90 greatgrandchild.f90)
add_test(NAME Hierarchal COMMAND hier)

add_executable(basic basic.f90 basic_sub.f90)
add_test(NAME TwoFiles COMMAND basic)

add_executable(points_basic points_basic.f90 geo_basic.f90)
add_test(NAME BasicPoints COMMAND points_basic)

add_executable(new points.f90 geo.f90)
add_test(NAME PointsNew COMMAND new)

add_executable(minimal minimal.f90)
add_test(NAME SameFileMinimal COMMAND minimal)



if(FAIL)
# This is a bug with CMake even though 3.15
add_executable(repeated repeated.f90 repeated_child.f90)
add_test(NAME Repeated COMMAND repeated)

add_executable(overspec main1.f90 parent1.f90 child1.f90)
add_test(NAME OverSpecified COMMAND overspec)
endif(FAIL)
