def login(uid):
  members = [
    'pxzhu',
    'Matt',
    'pea'
  ]
  for member in members:
    if member == uid:
      return True
  return False