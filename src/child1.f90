SUBMODULE(parent) child
  IMPLICIT NONE

CONTAINS

  MODULE procedure mince
    b = -a
  END procedure mince

END SUBMODULE child
