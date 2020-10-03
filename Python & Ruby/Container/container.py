print(type('pxzhu'))
name = 'pxzhu'
print(name)
names = [
  'pxzhu',
  'Matt',
  'pea'
]
print(names)
print(names[2])
pxzhu = [
  'programmer',
  'daejeon',
  24,
  False
]
pxzhu[1] = 'busan'
print(pxzhu)

alpha = [
  'A',
  'B',
  'C'
]
print('A' in alpha) # True
print('D' in alpha) # False
beta = [
  1,
  100,
  12312312
]
print(len(beta)) # 3
print(min(beta)) # 1
print(max(beta)) # 12312312
del(beta[0])
print(beta) # [100, 12312312]
beta.append(1004)
print(beta)
# [100, 12312312, 1004]
beta.reverse()
print(beta)
# [1004, 12312312, 100]