!! Demo that can use the same name for subomdule and module.
!! Is this in Fortran standard?

module same

interface
module subroutine hello()
end subroutine hello
end interface

end module same


submodule (same) same

contains

module procedure hello

print *, "submodule same has parent module same"

end procedure hello

end submodule same


program same_name

use same
implicit none

call hello()

end program
