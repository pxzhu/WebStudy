names = [
  'pxzhu',
  'Matt',
  'pea'
]
puts(names.class)
puts(names[2])
names[0] = 'phs'
puts(names)
# phs
# Matt
# pea
print(names)
# ["phs", "Matt", "pea"]

alpha = [
  'A',
  'B',
  'C',
  'D'
]
puts(alpha.length) # 4
alpha.push('E')
print(alpha)
# ["A", "B", "C", "D", "E"]
alpha.delete_at(0)
print("\n")
print(alpha)
# ["B", "C", "D", "E"]