module parent

interface   ! this can be in ancestor or parent
  module subroutine hi1()
  end subroutine hi1
  
  module subroutine hi2()
  end subroutine hi2
  
  module subroutine hi3()
  end subroutine hi3
end interface

contains

end module parent


program hierarchy
use, intrinsic:: iso_fortran_env
use parent
implicit none

print *,compiler_version()
call hi1()

call hi2()

call hi3()


end program
