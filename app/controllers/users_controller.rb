class UsersController < ApplicationController
  include SessionsHelper

  def create
    @user = User.new(user_params)
    @successful = false
    if @user.save
      log_in(@user)
      @successful = true
    end
  end

  def welcome
    
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name,:email, :password, :password_confirmation)
  end
end
