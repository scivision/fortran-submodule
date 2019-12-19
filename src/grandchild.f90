submodule (parent_hier:child_hier) grandchild_hier


contains

module procedure hi2

print *,"I'm a grandchild, pi=",pi

end procedure hi2


end submodule grandchild_hier
