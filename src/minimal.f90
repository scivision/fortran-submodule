module b

implicit none

interface
module subroutine d
end subroutine d

module subroutine samename
end subroutine samename
end interface

end module b

submodule (b) c
implicit none
contains
module procedure d
print *,'hi from module b, submodule d'
end procedure d
end submodule c

submodule (b) bs
implicit none
contains
module procedure samename
print *,'hi from module b, submodule bs'
end procedure samename
end submodule bs

program a
use b
implicit none

call d
call samename
end program
