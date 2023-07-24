add_executable(hierarchy hierarchy.f90)
target_link_libraries(hierarchy PRIVATE obj_hier)
add_test(NAME Hierarchal COMMAND hierarchy)
