!! Example that defines the procedure type in the submodule instead of the interface.
!! https://gitlab.kitware.com/cmake/cmake/issues/18427

module parent

implicit none

interface
module integer function intf()
end function intf

module pure integer function pintf()
end function pintf
end interface

end module parent


submodule (parent) child

implicit none

contains

module integer function intf()
intf = 2
end function intf

module pure integer function pintf()
pintf = 3
end function pintf

end submodule child


program cmake_check
use parent, only : intf, pintf
implicit none

if (intf() + 1 /= pintf()) error stop 'incorrect integer values'

end program
