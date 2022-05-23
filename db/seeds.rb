# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

expertise = ["tech", "finance", "consulting"]

10.times do
  user = User.new(name: Faker::Name.name, email: Faker::Internet.email, password: "123456")
  user.save
  mentor = Mentor.new(title: Faker::Company.buzzword, expertise: "#{expertise.sample}", description: Faker::Company.catch_phrase, user: user)
  mentor.save
end
