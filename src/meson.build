hier = executable('hier', ['parent.f90', 'child.f90', 'greatgrandchild.f90', 'grandchild.f90'])
test('Hierarchal submodule', hier)

basic = executable('basic', 'basic.f90', 'basic_sub.f90')
test('Basic Submodule 2 files', basic)

points_basic = executable('points_basic', 'points_basic.f90', 'geo_basic.f90')
test('Points Basic', points_basic)

points = executable('points', ['points.f90', 'geo.f90'])
test('Points', points)

minimal = executable('minimal', 'minimal.f90')
test('Minimal same-file submodule', minimal)

repeat = executable('repeated', 'repeated.f90', 'repeated_child.f90')
test('Repeated interface in submodule', repeat)


overspec = executable('overspec', 'main1.f90', 'parent1.f90', 'child1.f90')
test('Overspecified', overspec)