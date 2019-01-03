submodule (parent) child

real, parameter :: pi=4.*atan(1.)

interface
  module subroutine higkid()
  end subroutine higkid
end interface

contains

module procedure hikid

print *,"I'm a child"

end procedure hikid

end submodule child
