program main1

use parent1, only : negate

implicit none

integer :: b

call negate(1, b)

if (b /= -1) error stop 'should have gotten -1 = -1'

end program
