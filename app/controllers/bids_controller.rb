class BidsController < ApplicationController
  def create
    Bid.create(user: current_user, auction_id: params[:auction_id], offer_price: params[:offer_price])
    redirect_to auction_path(params[:auction_id])
  end
end
