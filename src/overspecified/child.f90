submodule (parent1) child1

implicit none

contains

module procedure negate
b = -a
end procedure negate

end submodule child1
