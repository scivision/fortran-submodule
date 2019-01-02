[![Build Status](https://travis-ci.com/scivision/fortran-submodule.svg?branch=master)](https://travis-ci.com/scivision/fortran-submodule)

# Fortran Submodule

Examples of modern Fortran 2008 submodule, for Meson and CMake.


## Build
Meson at least through version 0.49 is not yet `submodule` aware.

CMake Fortran `submodule` works for GNU and Intel, but is broken for PGI and Flang at least through CMake 3.13 due to the distinct Fortran `submodule 
[file naming convention](https://www.scivision.co/fortran-compiler-submodule-file-naming/).

## Notes

* Steve Lionel (Intel) submodule [discussion](https://software.intel.com/en-us/blogs/2015/07/07/doctor-fortran-in-we-all-live-in-a-yellow-submodule)
