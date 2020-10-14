# module M1
#   def m1_m
#     p "m1_m"
#   end
# end
# module M2
#   def m2_m
#     p "m2_m"
#   end
# end

# class C
#   include M1, M2
# end
# c = C.new()
# c.m1_m
# c.m2_m

module Multiply
  def multiply()
    return @v1 * @v2
  end
end

module Devide
  def devide()
    return @v1 / @v2
  end
end

class Cal
  include Multiply, Devide
  def initialize(v1, v2)
    @v1 = v1
    @v2 = v2
  end
  def add()
    return @v1 + @v2
  end
  def subtract()
    return @v1 - @v2
  end
end

c = Cal.new(100, 10)
p c.add()
p c.subtract()
p c.multiply()
p c.devide()