class AuctionsController < ApplicationController
  def index
    @auctions = Auction.where(live: true)
  end
end
