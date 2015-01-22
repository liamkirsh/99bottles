class AuctionsController < ApplicationController
  def index
    @auctions = Auction.live.limit(8)
  end

  def show
    @auction = Auction.find_by(id: params[:id])
  end
end
