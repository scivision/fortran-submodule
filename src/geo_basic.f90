submodule (points_basic) geo

implicit none

contains

module procedure point_dist
point_dist = hypot(ax - bx, ay - by)
end procedure point_dist

end submodule geo
