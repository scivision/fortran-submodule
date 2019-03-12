module b
interface
  module subroutine d
  end subroutine d

  module subroutine samename
  end subroutine samename
end interface
end module b

submodule (b) c
contains
module procedure d
print *,'hi from module b, submodule d'
end procedure d
end submodule c

submodule (b) b
contains
module procedure samename
print *,'hi from module b, submodule b'
end procedure samename
end submodule b

program a
use b
implicit none

call d
call samename
end program
