set_property(DIRECTORY PROPERTY LABELS submodule)

add_subdirectory(hierarchy)
add_subdirectory(overspecified)

add_executable(new points.f90 geo.f90)
add_test(NAME PointsNew COMMAND new)

add_executable(minimal minimal.f90)
add_test(NAME SameFileMinimal COMMAND minimal)

add_library(math_const math_const.f90)  # for demoing external projects

add_executable(basic basic.f90 basic_sub.f90)
add_test(NAME TwoFiles COMMAND basic)

add_executable(points_basic points_basic.f90 geo_basic.f90)
add_test(NAME BasicPoints COMMAND points_basic)
