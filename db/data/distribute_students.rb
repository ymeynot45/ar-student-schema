require_relative '../config.rb'
require_relative '../../app/models/teacher.rb'
require_relative '../../app/models/student.rb'
require_relative '../../app/models/teachers_students.rb'

Student.all.each do |student|
  (rand(5)).times do
    student.teachers << Teacher.all.sample
  end
  student.save
end
