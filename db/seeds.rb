# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.create(first_name: "Peter", last_name: "Sullivan", email: "admin@admin.com", password: "password", password_confirmation: "password")

20.times do
  password = Faker::Internet.password(8)
  User.create(email: Faker::Internet.email, password: password, password_confirmation: password, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end


