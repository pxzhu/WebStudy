class C
  def initialize(v)
    @value = v
  end
  def show()
    p @value
  end
end

c1 = C.new(10)
# p c1.value
# c1.value = 20
c1.show()

class C
  def initialize(v)
    @value = v
  end
  def show()
    p @value
  end
  def getValue()
    return @value
  end
  def setValue(v)
    @value = v
  end
end

c1 = C.new(10)
# p c1.value
p c1.getValue()
# c1.value = 20
c1.setValue(20)
p c1.getValue()

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

c1 = Cal.new(10, 10)
p c1.add()
p c1.subtract()
c1.setV1('one')
p c1.add()
p c1.getV1()

class C
  # attr_reader :value
  # attr_writer :value
  # 위 두개와 아래 기능은 같다.
  attr_accessor :value
  def initialize(v)
    @value = v
  end
  def show()
    p @value
  end
end

c1 = C.new(10)
p c1.value
c1.value = 20
p c1.value