submodule (parent_hier:grandchild_hier) greatgrandchild_hier

contains

module procedure hi3

print *,"I'm a greatgrandchild, tau=",2*pi

end procedure hi3

end submodule greatgrandchild_hier
