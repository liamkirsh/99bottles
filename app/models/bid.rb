class Bid < ActiveRecord::Base
  belongs_to :user
  belongs_to :auction

  validate :auction_is_live, on: :create

  def auction_is_live
    errors.add(:auction_id, "Cannot create bid after auction has ended.") if self.auction.is_dead?
  end
end
