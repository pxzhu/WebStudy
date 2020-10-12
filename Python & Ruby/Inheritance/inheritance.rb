class Class1
  def method1()
    return 'm1'
  end
end

c1 = Class1.new()
p c1, c1.method1()

class Class3 < Class1
  def method2()
    return 'm2'
  end
end

c3 = Class3.new()
p c3, c3.method1()
p c3, c3.method2()

class Cal
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
  def setV1(v)
    if v.is_a?(Integer)
      @v1 = v
    end
  end
  def getV1()
    return @v1
  end
end

class CalMultiply < Cal
  def multiply()
    return @v1 * @v2
  end
end

class CalDevide < CalMultiply
  def devide()
    return @v1 / @v2
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