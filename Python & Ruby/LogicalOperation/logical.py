print(True and True)
print(True and False)
print(False and True)
print(False and False)

print(True or True)
print(True or False)
print(False or True)
print(False or False)

print(not True)
print(not False)

real_pxzhu = "pxzhu"
real_Matt = "Matt"
in_str = input("ID를 입력해주세요.\n")
if real_pxzhu == in_str or real_Matt == in_str:
  print("Hello! " + in_str)
else:
  print("Who are you?")

real_id = "pxzhu"
real_pw = "11"
input_id = input("ID를 입력해주세요.\n")
input_pw = input("PW를 입력해주세요.\n")
if real_id == input_id:
  if real_pw == input_pw:
    print("Hello! " + input_id)
  else:
    print("Wrong Password!!!")
else:
  print("Wrong ID")

real_id = "pxzhu"
real_pw = "11"
input_id = input("ID를 입력해주세요.\n")
input_pw = input("PW를 입력해주세요.\n")
if real_id == input_id and real_pw == input_pw:
  print("Hello! " + input_id)
else:
  print("Login Failure")