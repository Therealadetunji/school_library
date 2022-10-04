require './person'

class Student < Person
  def initialize(classroom, _name = 'Unknown')
    super(4, true)
    @classroom = classroom
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end
