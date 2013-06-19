require_relative '../../db/config'

class Teacher < ActiveRecord::Base

  has_many :teachers_students
  has_many :students, :through => :teachers_students

  validates :email, :uniqueness => :true

end
