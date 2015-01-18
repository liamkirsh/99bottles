class AuctionsController < ApplicationController
  def index
    @auctions = Auction.where(live: true)
  end

  def show
    @auction = Auction.find_by(id: params[:id])
  end
end
