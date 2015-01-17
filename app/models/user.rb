class User < ActiveRecord::Base
  has_many :shipping_informations
  has_many :bids
  has_many :auctions, through: :bids

  has_secure_password
end
