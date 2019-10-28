module ext
implicit none
interface
  module real function get_pi() result(pi)
  end function get_pi
end interface
end module ext

submodule (ext) pi_getter
real :: pi
contains
module procedure get_pi

pi = 4*atan(1.)

end procedure get_pi
end submodule pi_getter
