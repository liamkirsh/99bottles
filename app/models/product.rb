class Product < ActiveRecord::Base
  has_many :auctions
  has_many :orders
end
