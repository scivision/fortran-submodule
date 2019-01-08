!! Example that defines the procedure type in the submodule instead of the interface.
!! https://gitlab.kitware.com/cmake/cmake/issues/18427

module parent

interface
  module function realf()
  end function
  
  module pure function prealf()
  end function
  
end interface

end module parent


submodule (parent) child

contains

module real function realf()
end

module pure real function prealf()
end

end submodule child


program cmake_check

use parent

end program
