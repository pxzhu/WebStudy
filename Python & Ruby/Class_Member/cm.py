# class Cs:
#   @staticmethod
#   def static_method():
#     print("Static method")
#   @classmethod
#   def class_method(cls):
#     print("Class method")
#   def instance_method(self):
#     print("Instance method")

# i = Cs()
# Cs.static_method()
# Cs.class_method()
# i.instance_method()

# class Cs:
#   count = 0
#   def __init__(self):
#     Cs.count += 1
#   @classmethod
#   def getCount(cls):
#     return Cs.count

# i1 = Cs()
# i2 = Cs()
# i3 = Cs()
# i4 = Cs()
# print(Cs.getCount())

class Cal(object):
  _history = []
  def __init__(self, v1, v2):
    if isinstance(v1, int):
      self.v1 = v1
    if isinstance(v2, int):
      self.v2 = v2
  def add(self):
    result = self.v1 + self.v2
    Cal._history.append("add: %d + %d = %d" % (self.v1, self.v2, result))
    return result
  def subtract(self):
    result = self.v1 - self.v2
    Cal._history.append("subtract: %d - %d = %d" % (self.v1, self.v2, result))
    return result
  def setV1(self, v):
    if isinstance(v, int):
      self.v1 = v
  def getV1(self, v):
    return self.v1
  @classmethod
  def history(cls):
    for item in Cal._history:
      print(item)

class CalMultiply(Cal):
  def multiply(self):
    result = self.v1 * self.v2
    Cal._history.append("multiply: %d * %d = %d" % (self.v1, self.v2, result))
    return result

class CalDivied(CalMultiply):
  def devide(self):
    result = self.v1 / self.v2
    Cal._history.append("devide: %d / %d = %d" % (self.v1, self.v2, result))
    return result

c1 = CalMultiply(10, 10)
print(c1.add())
print(c1.subtract())
print(c1.multiply())
c2 = CalDivied(20, 10)
print(c2, c2.add())
print(c2, c2.subtract())
print(c2, c2.multiply())
print(c2, c2.devide())
Cal.history()