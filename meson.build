project('Fortran Submodule', 'fortran',
  version : '1.0.0')
# https://github.com/mesonbuild/meson/issues/4704

FAIL = get_option('FAIL')

fc = meson.get_compiler('fortran')
if fc.get_id() == 'gcc'
  add_global_arguments('-fimplicit-none', '-Wall', '-Wextra', '-Wpedantic', language : 'fortran')
endif

minimal = executable('minimal', 'minimal.f90')
test('Minimal same-file submodule', minimal)

if FAIL  # Cmake at least through 3.13 and Meson at least through 0.49 can't handle explicit submodule procedures
explicit = executable('explicit', 'explicit.f90')
test('Explicit procedure in submodule', explicit)
endif

# Meson at least through 0.49 does not support submodule in separate files
if FAIL
hier = executable('hier', ['parent.f90', 'child.f90', 'grandchild.f90'])
test('Hierarchal submodule', hier)

points = executable('points', ['points.f90', 'geo.f90'])
test('another 2 file example', points)

basic = executable('basic', ['basic.f90', 'basic_sub.f90'])
test('Basic Submodule 2 files', basic)
endif




