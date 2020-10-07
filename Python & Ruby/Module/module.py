import math
print(math.ceil(2.1))
print(math.floor(2.1))
print(math.sqrt(16))

def pxzhu_a():
  return 'a'
# 엄청 많은 코드
def Matt_a():
  return 'B'
# 엄청 많은 코드
print(pxzhu_a())
print(Matt_a())

from pxzhu import a as z
import Matt as m
print(z())
print(m.a())

import auth
input_id = input("ID를 입력해주세요.\n")
if auth.login(input_id):
  print('Hello ' + input_id)
else:
  print('Who are you?')