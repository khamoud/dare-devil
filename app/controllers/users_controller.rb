class UsersController < ApplicationController
  def new
  end

  def edit
  	@user = User.find(params[:id])
  end

  def update
  	@user = User.find(params[:id])
  	if @user.update_attributes(:email => params[:email])
  		flash[:success] = "You can now start recieving money!"
  		redirect_to @user
  	else
  		flash[:failure] = "Something wasn't correct. Please try again."
  		render "edit"
  	end
  end

  def show
  	@user = User.find(params[:id])
  end
end
