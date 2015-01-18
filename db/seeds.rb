# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.create(first_name: "Peter", last_name: "Sullivan", email: "admin@admin.com", password: "password", password_confirmation: "password")
product = Product.create(name: "Blue Moon", description: Faker::Lorem.paragraph, image_link: "http://i.imgur.com/3SSTV48.jpg")
auction = Auction.create(minimum_price: 10.00, product_id: product.id, quantity: 5, end_time: DateTime.now.tomorrow)
bid = Bid.create(user: user, auction: auction, offer_price: 15)

20.times do
  password = Faker::Internet.password(8)
  User.create(email: Faker::Internet.email, password: password, password_confirmation: password, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end

4.times do
  Auction.create(minimum_price: 10.00, product_id: product.id, quantity: 5, end_time: DateTime.now.tomorrow)
end