add_executable(hier grandchild.f90 child.f90 parent.f90 greatgrandchild.f90)
add_test(NAME Hierarchal COMMAND hier)

add_executable(new points.f90 geo.f90)
add_test(NAME PointsNew COMMAND new)

add_executable(minimal minimal.f90)
add_test(NAME SameFileMinimal COMMAND minimal)


set(_targets hier new minimal)

foreach(x ${_targets})
set_target_properties(${x} PROPERTIES
RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}
Fortran_MODULE_DIRECTORY ${CMAKE_BINARY_DIR})
endforeach()

add_library(ext external.f90)  # for demoing external projects
set_target_properties(ext PROPERTIES
  ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}
  LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}
  Fortran_MODULE_DIRECTORY ${CMAKE_BINARY_DIR})

if(false)
# CMake bug, at least through 3.16.2
# may work with Ninja but not Makefiles?

add_executable(repeated parent2.f90 child2.f90)
add_test(NAME Repeated COMMAND repeated)
set_target_properties(repeated PROPERTIES
  RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}
  Fortran_MODULE_DIRECTORY ${CMAKE_BINARY_DIR})

add_executable(basic basic.f90 basic_sub.f90)
add_test(NAME TwoFiles COMMAND basic)
set_target_properties(basic PROPERTIES
  RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}
  Fortran_MODULE_DIRECTORY ${CMAKE_BINARY_DIR})

add_executable(points_basic points_basic.f90 geo_basic.f90)
add_test(NAME BasicPoints COMMAND points_basic)
set_target_properties(points_basic PROPERTIES
  RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}
  Fortran_MODULE_DIRECTORY ${CMAKE_BINARY_DIR})

add_executable(overspec main1.f90 parent1.f90 child1.f90)
add_test(NAME OverSpecified COMMAND overspec)
set_target_properties(overspec PROPERTIES
  RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}
  Fortran_MODULE_DIRECTORY ${CMAKE_BINARY_DIR})

endif()