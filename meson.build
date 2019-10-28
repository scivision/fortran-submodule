project('Fortran Submodule', 'fortran',
  version : '1.0.0',
  meson_version : '>=0.51.2',
  default_options :  ['default_library=static', 'buildtype=release', 'warning_level=3'])

fc = meson.get_compiler('fortran')

std18 = fc.first_supported_argument(['-std=f2018', '-stand f18', '/stand:f18'])
impnone = fc.first_supported_argument(['-fimplicit-none', '/warn:declarations', '-warn declarations', '-Mdclchk'])
if fc.get_id() == 'gcc'
  add_project_arguments(impnone, std18, language : 'fortran')
elif fcid == 'intel'
  add_project_arguments(impnone, std18, language : 'fortran')
elif fcid == 'intel-cl'
  add_project_arguments(impnone, std18, language : 'fortran')
endif

subdir('src')

hier = executable('hier', hier_src)
test('Hierarchal submodule', hier)

basic = executable('basic', basic_src)
test('Basic Submodule 2 files', basic)

points_basic = executable('points_basic', points_basic_src)
test('Points Basic', points_basic)

points = executable('points', points_src)
test('Points', points)

minimal = executable('minimal', minimal_src)
test('Minimal same-file submodule', minimal)

repeat = executable('repeated', repeat_src)
test('Repeated interface in submodule', repeat)

overspec = executable('overspec', overspec_src)
test('Overspecified', overspec)
