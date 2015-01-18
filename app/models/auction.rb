class Auction < ActiveRecord::Base
  has_many :bids
  has_many :users, through: :bids
  has_many :order
  belongs_to :product

  after_create :create_end_time

  #callback that sets auction live status to false after end time

  def create_end_time
    self.end_time = DateTime.now.tomorrow
  end

  def higest_bid
    self.bids.pluck(:offer_price).max || self.minimum_price - 1
  end

  def highest_bidder
    highest_bidder = self.bids.order("offer_price DESC").first
    if highest_bidder
      return highest_bidder.user
    else
      return false
    end
  end

  # def some_method
  #   puts 'hello'
  # end
  # handle_asynchronously :some_method
end