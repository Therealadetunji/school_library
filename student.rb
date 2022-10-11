require './person'

class Student < Person
  def initialize(age, parent_permission, name)
    super(age, name, parent_permission: true)
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
