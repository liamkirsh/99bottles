class Order < ActiveRecord::Base
  belongs_to :auction
  belongs_to :user

  validate :auction_is_dead, on: :create

  #create only if auction is dead
  def auction_is_dead
    errors.add(:auction_id, "Auction is still live") unless self.auction.is_dead?
  end
  
  def product
    self.auction.product
  end
end
