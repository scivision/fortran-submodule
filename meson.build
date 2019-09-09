project('Fortran Submodule', 'fortran',
  version : '1.0.0',
  meson_version : '>=0.51.2',
  default_options :  ['default_library=static', 'buildtype=release'])

fc = meson.get_compiler('fortran')
fcid = fc.get_id()
if fcid == 'gcc'
  add_project_arguments('-fimplicit-none', '-Wextra', '-Wpedantic', language : 'fortran')
  if fc.version().version_compare('>=8')
    add_project_arguments('-std=f2018', language : 'fortran')
  endif
elif fcid == 'intel'
  add_project_arguments('-warn', '-heap-arrays', '-stand f18', language : 'fortran')
  quiet = ['-nowarn']
elif fcid == 'intel-cl'
  add_project_arguments('/warn', '/heap-arrays', '/stand:f18', language : 'fortran')
  quiet = ['/nowarn']
elif fcid == 'pgi'
  add_project_arguments('-C', '-Mdclchk', language : 'fortran')
endif

subdir('src')
