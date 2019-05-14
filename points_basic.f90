module points
implicit none

interface
module real function point_dist(ax, ay, bx, by)
real, intent(in) :: ax, ay, bx, by
end function point_dist
end interface

end module points


use, intrinsic :: iso_fortran_env, only: stderr=>error_unit
use points, only: point_dist
implicit none

real :: dist, ax, ay, bx, by

ax = 1.
ay = 1.
bx = 3.
by = 5.

dist = point_dist(ax,ay,bx,by)

print *,'distance', dist

if (abs(dist-4.47213602) >= 1e-5) error stop 'excessive error in computation'

end program
