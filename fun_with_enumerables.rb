#Fun with enums
class Student
  attr_accessor :name, :gpa

  def initialize(name)
    @name = name
    @gpa = rand(1..4)
  end
end

student_body = [
  Student.new("Matt")
  Student.new("Rob")
  Student.new("Ahkeem")
  Student.new("Kate")
]

student_names = []
student_body.each do |student|
  student_names.push(student.name)
end
puts student_names

student_gpa = []
student_body.each do |student|
  if student.gpa > 2
    student_gpa.push(student.gpa)
  end
end
puts student_gpa

student_set = Array.new
student_body.each do |student|
  if student.name.length >= 4
    student_set.push(student)
  end
end
puts student_set


is_true = false
student_body.each do |s|
  if s.gpa >= 4
    is_true = true
    break
  end
end
puts high_gpa

is_true = true
student_body.each do |s|
  unless s.gpa > 0
    is_true = false
  end
end
puts is_true


long_name_students = []
short_name_students = []
student_body.each do |student|
  if student.name.length > 3
    long_name_students << student
  else
    short_name_students << student
  end
end
puts long_name_students, short_name_students

group_gpa
student_body.group_by do |s|
  if s.gpa
    group_gpa.push(group_gpa)
  end
end
puts group_gpa
