add_executable(hierarchy hierarchy.f90)
target_link_libraries(hierarchy PRIVATE obj_hier)
add_test(NAME Hierarchal COMMAND hierarchy)

add_executable(overspec overspec.f90)
target_link_libraries(overspec PRIVATE overspec_obj)
add_test(NAME OverSpecified COMMAND overspec)
