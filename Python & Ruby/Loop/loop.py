print('Hello world 0')
print('Hello world 9')
print('Hello world 18')
print('Hello world 27')
print('Hello world 36')
print('Hello world 45')
print('Hello world 54')
print('Hello world 63')
print('Hello world 72')
print('Hello world 81')

while False:
  print('Hello world')
print('After while')

i = 0
while i < 3:
  print('Hello world ' + str(i))
  i += 1
print('After while')

i = 0
while i < 10:
  print('print(\'Hello world ' + str(i * 9) + '\')')
  i += 1

i = 0
while i < 10:
  if i == 4:
    print(i)
  i += 1

i = 0
while i < 10:
  if i == 4:
    break
  print(i)
  i += 1
print('After while')