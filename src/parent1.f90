module parent1
implicit none

interface
module pure subroutine negate(a, b)
integer, intent(in)  :: a
integer, intent(out) :: b
end subroutine negate
end interface

end module parent1
