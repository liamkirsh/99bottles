class User < ActiveRecord::Base
  has_many :shipping_informations
  has_many :bids
  has_many :orders
  has_many :auctions, through: :bids

  validates_presence_of :first_name, :last_name, :email, :password_digest
  has_secure_password

  def cart
    self.orders.where(paid: false)
  end
end