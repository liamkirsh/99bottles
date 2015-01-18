class Auction < ActiveRecord::Base
  has_many :bids
  has_many :users, through: :bids
  belongs_to :product

  #callback that sets auction live status to false after end time
end
