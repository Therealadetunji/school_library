require './nameable'

class Person < Nameable
  def initialize(age, name = 'Unknown', parent_permission: true)
    super()
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end
  attr_reader :id
  attr_accessor :name, :age, :rentals

  def correct_name
    name
  end

  def add_rental(date, book)
    Rental.new(date, book, self)
  end

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
