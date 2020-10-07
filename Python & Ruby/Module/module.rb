puts(Math.sqrt(16))

def pxzhu_a()
  return 'a'
end
# 엄청 많은 코드
def Matt_a()
  return 'B'
end
# 엄청 많은 코드
puts(pxzhu_a())
puts(Matt_a())

require_relative './Pxzhu'
require_relative './Matt'
puts(Pxzhu.a())
puts(Matt.a())

require_relative 'Auth'
puts("ID를 입력해주세요.")
input_id = gets.chomp()

if Auth.login(input_id)
  puts('Hello ' + input_id)
else
  puts('Who are you?')
end