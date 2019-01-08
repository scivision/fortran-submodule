module b
interface
  module subroutine d
  end subroutine d
end interface
end module b

submodule (b) c
contains
module procedure d
end procedure d
end submodule c

program a
end program
