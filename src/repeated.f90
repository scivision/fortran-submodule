!! Example that defines the procedure type in the submodule instead of the interface.
!! https://gitlab.kitware.com/cmake/cmake/issues/18427

module parent

interface
  module real function realf()
  end function

  module pure real function prealf()
  end function

end interface

end module parent



program cmake_check

use parent

end program
