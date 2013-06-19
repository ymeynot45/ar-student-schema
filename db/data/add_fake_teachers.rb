require_relative '../config.rb'
require_relative '../../app/models/teacher.rb'
require 'faker'

9.times do
  Teacher.create({
    :name => Faker::Name.name, 
    :email => Faker::Internet.email, 
    :phone => Faker::PhoneNumber.phone_number, 
    :address => Faker::Address.street_address}
    )
end
