require_relative '../../db/config'

class Student < ActiveRecord::Base

  belongs_to :teacher

  validates :email, :uniqueness => :true
  validates :email, :format => { :with => /.+@.+\...+/, 
      :message => "Not a valid email."}
  validates :phone, :format => { :with => /\D*\d\D*\d\D*\d\D*\d\D*\d\D*\d\D*\d\D*\d\D*\d\D*\d\D*/, 
      :message => "Phone numbers must include 10 digits."}
      
  # validates :birthday, :numericality => { :greater_than }
  validates :age, :numericality => {:greater_than => 4}

  def assign_teacher(t)
    self.teacher = t
  end

  def name
    "#{first_name} #{last_name}"
  end

  def age
    ((Date.today - birthday)/365.25).floor.to_i
  end

  def check_email(email)
    email =~ /.+@.+\...+/
  end

  def check_age
    # errors.add_to_base('Must be at least 5 years old') if
     age > 4
  end
end
