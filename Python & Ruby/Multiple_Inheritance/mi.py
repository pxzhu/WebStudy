class C1():
  def c1_m(self):
    print("c1_m")
  def m(self):
    print("c1 m")

class C2():
  def c2_m(self):
    print("c2_m")
  def m(self):
    print("c2 m")

class C3(C1, C2):
  pass

c = C3()
c.c1_m()
c.c2_m()
c.m()
print(C3.__mro__)

# class CalMultiply():
#   def multiply(self):
#     return self.v1 * self.v2

# class CalDivied():
#   def devide(self):
#     return self.v1 / self.v2

# class Cal(CalMultiply, CalDivied):
#   def __init__(self, v1, v2):
#     if isinstance(v1, int):
#       self.v1 = v1
#     if isinstance(v2, int):
#       self.v2 = v2
#   def add(self):
#     return self.v1 + self.v2
#   def subtract(self):
#     return self.v1 - self.v2
#   def setV1(self, v):
#     if isinstance(v, int):
#       self.v1 = v
#   def getV1(self, v):
#     return self.v1

# c = Cal(100, 10)
# print(c.add())
# print(c.subtract())
# print(c.multiply())
# print(c.devide())