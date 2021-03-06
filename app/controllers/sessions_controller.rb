class SessionsController < ApplicationController
  include SessionsHelper

  def new
    @current_user = current_user
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    @successful = false
    if user && user.authenticate(params[:session][:password])
      log_in user
      @successful = true
    end
  end

  def destroy
    session.clear
    redirect_to root_url
  end

end
