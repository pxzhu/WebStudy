class Class1(object):
  def method1(self):
    return 'm1'

c1 = Class1()
print(c1, c1.method1())

class Class3(Class1):
  def method2(self):
    return 'm2'

c3 = Class3()
print(c3, c3.method1())
print(c3, c3.method2())

class Class2(object):
  def method1(self):
    return 'm1'
  def method2(self):
    return 'm2'

c2 = Class2()
print(c2, c2.method1())
print(c2, c2.method2())

class Cal(object):
  def __init__(self, v1, v2):
    if isinstance(v1, int):
      self.v1 = v1
    if isinstance(v2, int):
      self.v2 = v2
  def add(self):
    return self.v1 + self.v2
  def subtract(self):
    return self.v1 - self.v2
  def setV1(self, v):
    if isinstance(v, int):
      self.v1 = v
  def getV1(self, v):
    return self.v1

class CalMultiply(Cal):
  def multiply(self):
    return self.v1 * self.v2

class CalDivied(CalMultiply):
  def devide(self):
    return self.v1 / self.v2

c1 = CalMultiply(10, 10)
print(c1.add())
print(c1.subtract())
print(c1.multiply())
c2 = CalDivied(20, 10)
print(c2, c2.add())
print(c2, c2.subtract())
print(c2, c2.multiply())
print(c2, c2.devide())