class Person
  def initialize(age, name = 'Unknown', _parent_permission: true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @_parent_permission = parent_permission
  end
  attr_reader :id
  attr_accessor :name, :age

  def of_age?
    case @age
    when age >= 18
      true
    else
      false
    end
  end
end

def can_use_services?
  true if age >= 18 || parent_permission == true
end
