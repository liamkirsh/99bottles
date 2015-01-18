class OrdersController < ApplicationController
  def index
    # binding.pry
    @orders = current_user.cart
  end
end
