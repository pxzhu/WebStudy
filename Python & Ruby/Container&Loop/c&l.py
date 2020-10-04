members = [
  'pxzhu',
  'Matt',
  'pea'
]
i = 0
while i < len(members):
  print(members[i])
  i += 1

members = [
  'pxzhu',
  'Matt',
  'pea'
]
for member in members:
  print(member)

for item in range(5, 11):
  print(item)

input_id = input("ID를 입력해주세요.\n")
members = [
  'pxzhu',
  'Matt',
  'pea'
]
for member in members:
  if member == input_id:
    print("Hello!, " + input_id)
    import sys
    sys.exit()
print("Who are you?")