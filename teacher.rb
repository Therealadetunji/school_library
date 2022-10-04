require './person'

class Teacher < Person
  def initialize(specialization, age, classroom, _name = 'Unknown', _parent_permission: true)
    super(age, classroom, parent_permission, name)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
