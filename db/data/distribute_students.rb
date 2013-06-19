require_relative '../config.rb'
require_relative '../../app/models/teacher.rb'
require_relative '../../app/models/student.rb'

Student.all.each do |student|
  student.teacher = Teacher.all.sample
  student.save
end
