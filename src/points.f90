module points
implicit none
type :: point
real :: x, y
end type point

interface
module real function point_dist(a, b)
class(point), intent(in) :: a, b
end function point_dist
end interface

end module points


use, intrinsic :: iso_fortran_env, only: stderr=>error_unit
use points, only: point, point_dist
implicit none

type(point) :: a, b
real :: dist

a = point(1.,1.)
b = point(3.,5.)

dist = point_dist(a,b)

print *,'distance', dist

if (abs(dist-4.47213602) >= 1e-5) error stop 'excessive error in computation'

end program
