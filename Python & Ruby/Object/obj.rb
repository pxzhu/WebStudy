name1 = String.new('pxzhu')
name2 = String.new('Matt')
# String = class
# String.new('pxzhu') = instance
# String.new('Matt') = instance
puts(name1.reverse()) # uhzxp
puts(name2.reverse()) # ttaM
puts(name1.upcase()) # PXZHU
puts(name1.size()) # 5
names = Array.new()
names.push('pxzhu')
names.push('Matt')
puts(names)
puts(names.join(', '))