# Fortran Submodule

[![DOI](https://zenodo.org/badge/163894637.svg)](https://zenodo.org/badge/latestdoi/163894637)
[![Actions Status](https://github.com/scivision/fortran-submodule/workflows/ci_cmake/badge.svg)](https://github.com/scivision/fortran-submodule/actions)
[![Actions Status](https://github.com/scivision/fortran-submodule/workflows/ci_meson/badge.svg)](https://github.com/scivision/fortran-submodule/actions)

Examples of modern Fortran 2008 `submodule`, using Meson or CMake.
Fortran submodules are a unique concept distinct from C++.
Fortran submodules allow easy switching in and out of features and extremely fast recompilation of large programs perhaps 100 times or more faster.
For example a program's file IO could use raw binary, HDF5, or NetCDF switched using Fortran submodule.
A simulation could have different proprietary or open source modules switched in and out via Fortran submodule.

In general, Fortran compilers have good submodule support.
This includes gfortran, Intel ifort, nagfor, flang, PGI, IBM, Cray, etc.

Meson and CMake are two build systems that support Fortran submodule.
Look inside each example to understand basic use of Fortran submodule.

CMake builds and tests by:

```sh
cmake -B build
cmake --build build
```

or use Meson:

```sh
meson build

meson test -C build
```

## Notes

* Steve Lionel (Intel) submodule [discussion](https://software.intel.com/en-us/blogs/2015/07/07/doctor-fortran-in-we-all-live-in-a-yellow-submodule)
