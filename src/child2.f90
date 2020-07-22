submodule (parent) child

implicit none

contains

module integer function intf()
intf = 2
end function intf

module pure integer function pintf()
pintf = 3
end function pintf

end submodule child
