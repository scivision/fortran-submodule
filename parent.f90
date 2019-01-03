module parent

interface   ! this can be in ancestor or parent
  module subroutine hikid()
  end subroutine hikid
end interface

contains

end module parent


program hierarchy

use parent
implicit none


end program
