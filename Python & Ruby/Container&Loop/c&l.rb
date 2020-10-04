members = [
  'pxzhu',
  'Matt',
  'pea'
]
i = 0
while i < members.length do
  puts(members[i])
  i += 1
end

members = [
  'pxzhu',
  'Matt',
  'pea'
]
for member in members do
  puts(member)
end

for item in (5..10) do
  puts(item)
end

puts("ID를 입력해주세요.")
input_id = gets.chomp()
members = [
  'pxzhu',
  'Matt',
  'pea'
]
for member in members do
  if member == input_id
    puts("Hello, " + input_id)
    exit
  end
end
puts("Who are you?")