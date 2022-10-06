class Classroom
  def initialize(label, _students)
    @label = label
    @_students = []
  end
  attr_accessor :label

  def add_students(student)
    @students.push(student)
  end
end
