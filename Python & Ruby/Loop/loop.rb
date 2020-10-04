puts('Hello world 0')
puts('Hello world 9')
puts('Hello world 18')
puts('Hello world 27')
puts('Hello world 36')
puts('Hello world 45')
puts('Hello world 54')
puts('Hello world 63')
puts('Hello world 72')
puts('Hello world 81')

while false do
  puts('Hello world')
end
puts('After while')

i = 0
while i < 3 do
  puts('Hello world ' + i.to_s)
  i += 1
end
puts('After while')

i = 0
while i < 10 do
  puts('print(\'Hello world ' + (i * 9).to_s + '\')')
  i += 1
end

i = 0
while i < 10 do
  if i == 4
    puts(i)
  end
  i += 1
end

i = 0
while i < 10 do
  if i == 4
    break
  end
  puts(i)
  i += 1
end
puts('After while')