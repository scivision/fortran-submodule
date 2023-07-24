add_library(obj_hier OBJECT parent.f90 grandchild.f90 child.f90 greatgrandchild.f90)
target_include_directories(obj_hier INTERFACE ${PROJECT_BINARY_DIR}/include)
