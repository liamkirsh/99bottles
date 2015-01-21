class Auction < ActiveRecord::Base
  has_many :bids
  has_many :users, through: :bids
  has_many :orders
  belongs_to :product

  after_create :create_end_time

  scope :live, -> () { where('? < end_time', DateTime.current) }
  scope :dead, -> () { where('? > end_time', DateTime.current) }

  def create_end_time
    self.end_time = DateTime.now.tomorrow.beginning_of_hour
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

  def has_bids?
   false == self.bids.empty?
  end

  def is_live?
    DateTime.current < end_time
  end

  def is_dead?
    DateTime.current > end_time
  end

  def self.create_orders
    self.dead.map do |auction| 
      if auction.orders.empty? && auction.has_bids?
        Order.create(auction: auction, user: auction.highest_bidder) 
      end
    end
  end

  def self.hello
    # User.create(first_name: "test", last_name: "test", email: "lol@aol.com", password: "password")
    puts "=" * 100
  end
end