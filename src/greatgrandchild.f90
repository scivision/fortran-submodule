submodule (parent_hier:child_hier) greatgrandchild_hier

implicit none

contains

module procedure hi3

print *,"I'm a greatgrandchild, tau=",2*pi

end procedure hi3

end submodule greatgrandchild_hier
