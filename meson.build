project('Fortran Submodule', 'fortran',
  version : '1.0.0', meson_version : '>=0.50')

fc = meson.get_compiler('fortran')
fcid = fc.get_id()
if fcid == 'gcc'
  add_global_arguments('-fimplicit-none', '-Wextra', '-Wpedantic', language : 'fortran')
endif

if fcid != 'gcc'  # bugs at least through GCC-8 in general
  minimal = executable('minimal', 'minimal.f90')
  test('Minimal same-file submodule', minimal)
endif

repeat = executable('repeated', 'repeated.f90', 'repeated_child.f90')
test('Repeated interface in submodule', repeat)

hier = executable('hier', ['parent.f90', 'child.f90', 'greatgrandchild.f90', 'grandchild.f90'])
test('Hierarchal submodule', hier)

if fcid != 'pgi' and fcid != 'flang'  # bug flang 7, pgi 18.10
  points = executable('points', ['points.f90', 'geo.f90'])
  test('another 2 file example', points)
endif

basic = executable('basic', 'basic.f90', 'basic_sub.f90')
test('Basic Submodule 2 files', basic)

