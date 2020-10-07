module Auth
  module_function()
  def login(uid)
    members = [
      'pxzhu',
      'Matt',
      'pea'
    ]
    for member in members do
      if member == uid
        return true
      end
    end
    return false
  end
end