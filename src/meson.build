subdir('hierarchy')
subdir('overspecified')

basic = executable('basic',
sources: ['basic.f90', 'basic_sub.f90']
)
test('Basic Submodule 2 files', basic)

points_basic = executable('points_basic',
sources: ['points_basic.f90', 'geo_basic.f90']
)
test('Points Basic', points_basic)

points = executable('points',
sources: ['points.f90', 'geo.f90']
)
test('Points', points)

minimal = executable('minimal', 'minimal.f90')
test('Minimal same-file submodule', minimal)

ext_lib = library('math_const', 'math_const.f90')  # for subproject demo
