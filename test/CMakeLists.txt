add_executable(hierarchy hierarchy.f90)
target_link_libraries(hierarchy PRIVATE obj_hier)
add_test(NAME Hierarchal COMMAND hierarchy)

add_executable(overspec overspec.f90)
target_link_libraries(overspec PRIVATE overspec_obj)
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
