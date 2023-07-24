set_directory_properties(PROPERTIES labels submodule)

add_executable(hier grandchild.f90 child.f90 parent.f90 greatgrandchild.f90)
add_test(NAME Hierarchal COMMAND hier)

add_executable(new points.f90 geo.f90)
add_test(NAME PointsNew COMMAND new)

add_executable(minimal minimal.f90)
add_test(NAME SameFileMinimal COMMAND minimal)

add_library(math_const math_const.f90)  # for demoing external projects

add_executable(basic basic.f90 basic_sub.f90)
add_test(NAME TwoFiles COMMAND basic)

add_executable(points_basic points_basic.f90 geo_basic.f90)
add_test(NAME BasicPoints COMMAND points_basic)

add_executable(overspec main1.f90 parent1.f90 child1.f90)
add_test(NAME OverSpecified COMMAND overspec)

if(CMAKE_GENERATOR MATCHES "Makefiles$")
  message(STATUS "Please use Ninja for the 'repeated' example
    cmake -G Ninja")
  set(broken_gen 1)
else()
  set(broken_gen 0)
endif()

add_executable(repeated repeated.f90)
set_property(TARGET repeated PROPERTY EXCLUDE_FROM_ALL ${broken_gen})
add_test(NAME Repeated COMMAND repeated)
set_property(TEST Repeated PROPERTY DISABLED ${broken_gen})
