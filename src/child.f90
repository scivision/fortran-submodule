submodule (parent_hier) child_hier

real, parameter :: pi=4.*atan(1.)

contains

module procedure hi1

print *,"I'm a child"

end procedure hi1

end submodule child_hier
