class LoginsController < ApplicationController

  def new
    @user = User.new
  end
  def create
    if user = User.authenticate(params[:name], params[:password])
      flash[:notice] = "You have been logged in"
      session[:current_user_id] = user.id
      redirect_to root_url
    end
  end

  def destroy
    @_current_user = session[:current_user_id] = nil
    flash[:notice] = "You have been logged out"
    redirect_to root_url
  end
end
