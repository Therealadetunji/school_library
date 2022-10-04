require './person'

class Teacher < Person
  def initialize(specialization, _name = 'Unknown')
    super(4, true)
    @specialization = specialization
  end

  def can_use_services?
    true if parent_permission == true || parent_permission == false
  end
end
