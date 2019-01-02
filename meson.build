project('Fortran Submodule', 'fortran',
  version : '1.0.0')
# broken at least through meson 0.49 
# https://github.com/mesonbuild/meson/issues/4704

fc = meson.get_compiler('fortran')
if fc.get_id() == 'gcc'
  add_global_arguments('-Wall', '-Wextra', '-Wpedantic', language : 'fortran')
endif

minimal = executable('minimal', 'minimal.f90')
test('Minimal same-file submodule', minimal)

basic = executable('basic', ['basic.f90', 'basic_sub.f90'])
test('Basic Submodule 2 files', basic)

points = executable('points', ['points.f90', 'geo.f90'])
test('another 2 file example', points)
