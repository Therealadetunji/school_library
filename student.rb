require './person'

class Student < Person
  def initialize(age, classroom, _name = 'Unknown', _parent_permission: true)
    super(age, classroom, parent_permission, name)
    @classroom = classroom
  end
  attr_accessor :classroom

  def play_hooky
    '¯\(ツ)/¯'
  end

  def add_classroom(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end
end
