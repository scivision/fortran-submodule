project('Fortran Submodule', 'fortran',
  version : '1.1.0',
  meson_version : '>=0.51.2',
  default_options :  ['default_library=static', 'buildtype=release', 'warning_level=3'])

fc = meson.get_compiler('fortran')

subdir('src')

hier = executable('hier', hier_src)
test('Hierarchal submodule', hier,
  timeout: 10)

basic = executable('basic', basic_src)
test('Basic Submodule 2 files', basic,
  timeout: 10)

points_basic = executable('points_basic', points_basic_src)
test('Points Basic', points_basic,
  timeout: 10)

points = executable('points', points_src)
test('Points', points,
  timeout: 10)

minimal = executable('minimal', minimal_src)
test('Minimal same-file submodule', minimal,
  timeout: 10)

repeat = executable('repeated', repeat_src)
test('Repeated interface in submodule', repeat,
  timeout: 10)

overspec = executable('overspec', overspec_src)
test('Overspecified', overspec,
  timeout: 10)

ext_lib = library('ext', ext_src)  # for subproject demo
