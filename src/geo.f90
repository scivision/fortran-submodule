submodule (points) geo

implicit none

contains

module procedure point_dist
point_dist = hypot(a%x - b%x, a%y - b%y)
end procedure point_dist

end submodule geo
