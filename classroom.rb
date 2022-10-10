class Classroom
  def initialize(label, _students)
    @label = label
    @_students = []
  end
  attr_accessor :label
  attr_reader :students

  def add_students(student)
    @students << student
    @students.classroom = self
  end
end
