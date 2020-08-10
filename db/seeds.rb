# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

User.destroy_all 
Event.destroy_all 
Attendance.destroy_all 

Faker::Config.locale = 'fr'


50.times do 
User.create(
    email:Faker::Internet.email(domain: 'yopmail.com'),
    encrypted_password:Faker::Internet.password,
    description:Faker::ChuckNorris.fact,
    first_name:Faker::Name.first_name, 
    last_name:Faker::Name.last_name)
end 

15.times do
    Event.create(start_date:Faker::Date.between(from: '2021-01-01',to: '2021-12-31'), 
     duration:rand(1..600),
     title:Faker::FunnyName.two_word_name, 
     description:Faker::GreekPhilosophers.quote, 
     price:rand(1..1000),
     location:Faker::Nation.capital_city)
end






