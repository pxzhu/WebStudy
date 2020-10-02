puts(true && true)
puts(true && false)
puts(false && true)
puts(false && false)

puts(true || true)
puts(true || false)
puts(false || true)
puts(false || false)

puts(! true)
puts(! false)

real_pxzhu = "pxzhu"
real_Matt = "Matt"
puts("ID를 입력해주세요.")
in_str = gets.chomp()
if real_pxzhu == in_str or real_Matt == in_str
  puts("Hello! " + in_str)
else
  puts("Who are you?")
end

real_id = "pxzhu"
real_pw = "11"
puts("ID를 입력해주세요.")
input_id = gets.chomp()
puts("PW를 입력해주세요.")
input_pw = gets.chomp()
if real_id == input_id
  if real_pw == input_pw
    puts("Hello! " + input_id)
  else
    puts("Wrong Password!!!")
  end
else
  puts("Wrong ID")
end

real_id = "pxzhu"
real_pw = "11"
puts("ID를 입력해주세요.")
input_id = gets.chomp()
puts("PW를 입력해주세요.")
input_pw = gets.chomp()
if real_id == input_id and real_pw == input_pw
  puts("Hello! " + input_id)
else
  puts("Login Failure")
end