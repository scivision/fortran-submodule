module parent_hier

implicit none

interface   ! this can be in ancestor or parent
module subroutine hi1()
end subroutine hi1

module subroutine hi2()
end subroutine hi2

module subroutine hi3()
end subroutine hi3
end interface

end module parent_hier
