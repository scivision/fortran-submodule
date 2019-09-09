module points_basic
implicit none

interface
module real function point_dist(ax, ay, bx, by)
real, intent(in) :: ax, ay, bx, by
end function point_dist
end interface

end module points_basic


use, intrinsic :: iso_fortran_env, only: stderr=>error_unit
use points_basic, only: point_dist
implicit none

real :: dist

dist = point_dist(1.,1., 3.,5.)

print *,'distance', dist

if (abs(dist - 4.47213602) >= 1e-5) error stop 'excessive error in computation'

end program
