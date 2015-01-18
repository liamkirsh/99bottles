class OrdersController < ApplicationController
  def index
    @orders = current_user.cart
  end
end
