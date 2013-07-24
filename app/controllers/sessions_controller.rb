class SessionsController < ApplicationController
  def create
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    redirect_to root_url
  end
  
  def destroy
  	session[:user_id] = nil
    flash[:notice] = "You are now logged out"
    redirect_to root_url
  end
end