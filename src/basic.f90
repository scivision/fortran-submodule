module mother

implicit none
real, parameter :: pi = 4.*atan(1.)
real :: tau

interface
module real elemental function pi2tau(pi)
real, intent(in) :: pi
end function pi2tau
end interface

contains

end module mother


program hier1
use mother
implicit none

tau = pi2tau(pi)

print *,'pi=',pi, 'tau=', tau

end program
