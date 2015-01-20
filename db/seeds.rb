# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.create(first_name: "Peter", last_name: "Sullivan", email: "admin@admin.com", password: "password", password_confirmation: "password")
# product = Product.create(name: "Blue Moon", description: Faker::Lorem.paragraph, image_link: "http://i.imgur.com/3SSTV48.jpg")
# auction = Auction.create(minimum_price: 10.00, product_id: product.id, quantity: 5, end_time: DateTime.now.tomorrow)
# bid = Bid.create(user: user, auction: auction, offer_price: 15)

20.times do
  password = Faker::Internet.password(8)
  User.create(email: Faker::Internet.email, password: password, password_confirmation: password, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end

# 4.times do
#   Auction.create(minimum_price: 10.00, product_id: product.id, quantity: 5, end_time: DateTime.now.tomorrow)
# end

Product.create(
name: "Cantillon Iris",
description: "Although it is a spontaneous fermentation beer, 
the Iris is very different from the Lambic. The amber colour and 
the bitter and slightly caramelized taste make it a complex beer.",
image_link: "http://i.imgur.com/hSxYdLV.jpg"
)

Product.create(
name: "Dark Penance",
description: "A heavy malt foundation includes Crystal malt for 
sweetness and just enough Midnight Wheat malt to push the color to 
black. The bitterness is huge, but balanced by malt sweetness and 
alcohol burn. The hop flavors and aromas range from citrus to floral 
to pine thanks to a delicious blend of hand-selected Chinook and Centennial hops.",
image_link: "http://i.imgur.com/BBrI0IC.png"
)

Product.create(
name: "Founders Breakfast",
description: "Brewed with flaked oats, bitter and 
sweetened imported chocolates, Sumatra and Kona coffee. ",
image_link: "http://i.imgur.com/NPVLbvI.jpg"
)

Product.create(
name: "Orval Trappist Ale",
description: "Many agree that the somewhat unpractical addition of 
this sometimes undesired yeast strain is what grants Orval its age worthiness, 
not to mention unique aroma, making it a one of the few beers worth cellaring.",
image_link: "http://i.imgur.com/HaMOjm3.png"
)

Product.create(
name: "Fuller's London Porter",
description: "Fuller's London Porter is an award-winning example of this historic 
English style; smooth and creamy with delicious chocolate and coffee flavors derived from the roasted malt. ",
image_link: "http://i.imgur.com/rK4DTkb.jpg"
)

Product.create(
name: "Samichlaus Classic Bier",
description: "The once strongest beer in the world is back! Brewed only once a 
year on December 6. Samichlaus is aged for 10 months before bottling. This beer is
 perhaps the rarest in the world. Samichlaus may be aged for many years to come. 
 Older vintages become more complex with a creamy warming finish. ",
image_link: "http://i.imgur.com/r6SfISm.jpg"
)

Product.create(
name: "Cane & Ebel - Two Brothers Brewery",
description: "Dry, but with a creamy touch of Thai Palm Sugar and the spicy tang 
of Rye, all balanced by loads of the wackiest new Hops we could lay our hands
on. Yep, it’s an Orignal. And that’s no Sin. ",
image_link: "http://i.imgur.com/1gZimTZ.jpg"
)

Product.create(
name: "Smoked Porter - O'Fallon Brewery",
description: "Dark, rich and smoky…this classic porter is brewed with 63% 
German smoked malt and makes a perfect after dinner (or anytime) sipper for 
those who love a “bigger” beer. Winner of the Gold Medal in the 2004 Great
 American Beer Festival® for best Smoked Beer in America! ",
image_link: "http://i.imgur.com/hEP1Pxl.jpg"
)

Product.all.each do |product|
  Auction.create(minimum_price: 10.00, product_id: product.id, quantity: 5, end_time: DateTime.now.tomorrow)
end

# 10.times do
#   Bid.create(user: User.first, auction: Auction.find_by(id: rand(1..4)), offer_price: rand(10..35))
# end

Order.create(product: Product.first, winning_price: 25, auction: Auction.first, user: User.first)