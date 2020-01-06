# Fortran Submodule

[![DOI](https://zenodo.org/badge/163894637.svg)](https://zenodo.org/badge/latestdoi/163894637)
[![Actions Status](https://github.com/scivision/fortran-submodule/workflows/ci_cmake/badge.svg)](https://github.com/scivision/fortran-submodule/actions)
[![Actions Status](https://github.com/scivision/fortran-submodule/workflows/ci_meson/badge.svg)](https://github.com/scivision/fortran-submodule/actions)

Examples of modern Fortran 2008 `submodule`, using Meson or CMake.
Fortran submodules are a unique concept distinct from C++.
Fortran submodules allow easy switching in and out of features and extremely fast recompilation of large programs perhaps 100 times or more faster.


## Build

```sh
meson build

meson test -C build
```

OR

```sh
cmake -B build

cmake --build build --parallel

cd build

ctest -V
```

## Notes

* Steve Lionel (Intel) submodule [discussion](https://software.intel.com/en-us/blogs/2015/07/07/doctor-fortran-in-we-all-live-in-a-yellow-submodule)
