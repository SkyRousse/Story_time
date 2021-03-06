class LoginsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    user = User.where(:name => params[:name].downcase).first
    if user && user.authenticate(params[:password])
      flash[:notice] = "You have been logged in"
      session[:current_user_id] = user.id
      redirect_to root_url
    else
      flash[:notice] = "Fail!"
      render :new
    end
  end

  def destroy
    @_current_user = session[:current_user_id] = nil
    flash[:notice] = "You have been logged out"
    redirect_to root_url
  end
end
