module parent_hier

implicit none

interface   ! this can be in ancestor or parent
module subroutine hi1()
end subroutine hi1

module subroutine hi2()
end subroutine hi2

module subroutine hi3()
end subroutine hi3
end interface

end module parent_hier


program hierarchy
use, intrinsic:: iso_fortran_env
use parent_hier, only: hi1, hi2, hi3
implicit none

print *,compiler_version()
call hi1()

call hi2()

call hi3()

end program
