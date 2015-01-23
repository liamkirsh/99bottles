class Order < ActiveRecord::Base
  belongs_to :auction
  belongs_to :user

  validate :auction_is_dead, :set_winning_price, on: :create
  after_create :send_email_order

  def product
    self.auction.product
  end

  private

  def auction_is_dead
    errors.add(:auction_id, "Auction is still live") unless self.auction.is_dead?
  end

  def set_winning_price
    self.winning_price = Bid.where(user: self.user_id, auction: self.auction_id).order("offer_price DESC").first.offer_price
  end

  def send_email_order
      UserMailer.auction_won(self.user).deliver_now
  end
end
