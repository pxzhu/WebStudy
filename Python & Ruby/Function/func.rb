# def a3()
#   puts('aaa')
# end
# a3()

# def a4()
#   return 'aaaa'
# end
# puts(a4())

# def a(num)
#   return 'a' * num
# end
# puts(a(10))

# def make_string(str, num)
#   return str * num
# end
# puts(make_string('abc', 2))

# puts("ID를 입력해주세요.")
# input_id = gets.chomp()

# def login(uid)
#   members = [
#     'pxzhu',
#     'Matt',
#     'pea'
#   ]
#   for member in members do
#     if member == uid
#       return true
#     end
#   end
#   return false
# end

# if login(input_id)
#   puts('Hello ' + input_id)
# else
#   puts('Who are you?')
# end

# def f1()
#   return 'f1'
# end
# puts(f1())

# def f2
#   return 'f2'
# end
# puts(f2())

# def f3
#   return 'f3'
# end
# puts(f3)

# def f4(a1)
#   return a1
# end
# puts(f4('f4'))

# def f5 a1
#   return a1
# end
# puts(f5 'f5')

# def f6
#   return 'f6'
# end
# puts f6

# def f7
#   'f7'
# end
# puts f7

# def f8
#   a = 1
#   b = 2
#   a + b
# end
# puts f8

# 5.times() {
#   puts '5times'
# }
# 2.times() {
#   puts '2times'
# }
# 3.upto(5) {
#   |i| puts i.to_s + ' 3 to 5 upto'
# }

# 5.times() {
#   |i| puts i
# }

# i = 0
# while i < 5
#   puts i
#   i += 1
# end

# arr = ['A', 'B', 'C']
# arr.each() {
#   |i| puts i
# }

# for value in arr
#   puts value
# end

arr = [1, 3, 56, 7, 13, 52]
arr.delete_if() do |i|
  i > 7
end
puts arr