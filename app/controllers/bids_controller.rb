class BidsController < ApplicationController
  def create
    @bid = Bid.create(user: current_user, auction_id: params[:auction_id], offer_price: params[:offer_price])
    # binding.pry
    # redirect_to auction_path(params[:auction_id])
  end
end
