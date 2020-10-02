puts("입력해주세요.")
in_str = gets.chomp()
puts(in_str.upcase() + " World!")

real_pxzhu = "11"
real_Matt = "ab"
puts("ID를 입력해주세요.")
in_str = gets.chomp()
if real_pxzhu == in_str
  puts("Hello!, pxzhu")
elsif real_Matt == in_str
  puts("Hello!, Matt")
else
  puts("Who are you?")
end