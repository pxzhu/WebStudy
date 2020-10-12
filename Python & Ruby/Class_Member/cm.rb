# require 'date'
# d1 = Date.new(2000, 1, 1)
# d2 = Date.new(2010, 1, 1)
# p d1.year()
# p d2.year()
# p Date.today()

# class Cs
#   def Cs.class_method()
#     p "Class method"
#   end
#   def instanace_method()
#     p "Instance method"
#   end
# end

# i = Cs.new()
# Cs.class_method()
# i.instanace_method()
# # Cs.instanace_method()
# # i.class_method()

# class Cs
#   @@count = 0
#   def initialize()
#     @@count += 1
#   end
#   def Cs.getCount()
#     return @@count
#   end
# end
# i1 = Cs.new()
# i2 = Cs.new()
# i3 = Cs.new()
# i4 = Cs.new()
# p Cs.getCount()

class Cal
  @@_history = []
  def initialize(v1, v2)
    @v1 = v1
    @v2 = v2
  end
  def add()
    result = @v1 + @v2
    @@_history.push("add: #{@v1} + #{@v2} = #{result}")
    return result
  end
  def subtract()
    result = @v1 - @v2
    @@_history.push("subtract: #{@v1} - #{@v2} = #{result}")
    return result
  end
  def setV1(v)
    if v.is_a?(Integer)
      @v1 = v
    end
  end
  def getV1()
    return @v1
  end
  def Cal.history()
    for item in @@_history
      p item
    end
  end
end

class CalMultiply < Cal
  def multiply()
    result = @v1 * @v2
    @@_history.push("multiply: #{@v1} * #{@v2} = #{result}")
    return result
  end
end

class CalDevide < CalMultiply
  def devide()
    result = @v1 / @v2
    @@_history.push("devide: #{@v1} / #{@v2} = #{result}")
    return result
  end
end

c1 = CalMultiply.new(10, 10)
p c1.add()
p c1.subtract()
p c1.multiply()
c2 = CalDevide.new(20, 10)
p c2, c2.add()
p c2, c2.subtract()
p c2, c2.multiply()
p c2, c2.devide()
Cal.history()