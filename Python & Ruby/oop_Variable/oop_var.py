class C:
  def __init__(self, v):
    self.value = v
  def show(self):
    print(self.value)

c1 = C(10)
print(c1.value)
c1.value = 20
print(c1.value)
c1.show()

class C:
  def __init__(self, v):
    self.value = v
  def show(self):
    print(self.value)
  def getValue(self):
    return self.value
  def setValue(self, v):
    self.value = v

c1 = C(10)
print(c1.getValue())
c1.setValue(20)
print(c1.getValue())

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
    
c1 = Cal(10, 10)
print(c1.add())
print(c1.subtract())

c1.setV1 = 'one'
c1.v2 = 30
print(c1.add())
print(c1.subtract())

class C:
  def __init__(self, v):
    self.__value = v
  def show(self):
    print(self.__value)

c1 = C(10)
# print(c1.__value)
c1.show()