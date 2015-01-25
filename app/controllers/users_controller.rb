class UsersController < ApplicationController
  include SessionsHelper

  def create
    @user = User.new(user_params)
    if @user.save
      log_in(@user)
      redirect_to '/auctions'
    else
      redirect_to root_url
    end
  end

  def welcome
    
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name,:email, :password, :password_confirmation)
  end
end
