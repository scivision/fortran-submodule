program hierarchy

use, intrinsic:: iso_fortran_env, only : compiler_version
use parent_hier, only: hi1, hi2, hi3

implicit none

print *,compiler_version()

call hi1()

call hi2()

call hi3()

end program
