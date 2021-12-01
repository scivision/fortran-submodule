hier = executable('hier',
sources: ['parent.f90', 'child.f90', 'greatgrandchild.f90', 'grandchild.f90']
)
test('Hierarchal', hier, suite: 'submodule', timeout: 10)

basic = executable('basic',
sources: ['basic.f90', 'basic_sub.f90']
)
test('Basic Submodule 2 files', basic, suite: 'submodule', timeout: 10)

points_basic = executable('points_basic',
sources: ['points_basic.f90', 'geo_basic.f90']
)
test('Points Basic', points_basic, suite: 'submodule', timeout: 10)

points = executable('points',
sources: ['points.f90', 'geo.f90']
)
test('Points', points, suite: 'submodule', timeout: 10)

minimal = executable('minimal', 'minimal.f90')
test('Minimal same-file submodule', minimal, suite: 'submodule', timeout: 10)

repeat = executable('repeated', 'repeated.f90')
test('Repeated interface in submodule', repeat, suite: 'submodule', timeout: 10)

overspec = executable('overspec',
sources: ['main1.f90', 'parent1.f90', 'child1.f90']
)
test('Overspecified', overspec, suite: 'submodule', timeout: 10)

ext_lib = library('math_const', 'math_const.f90')  # for subproject demo
