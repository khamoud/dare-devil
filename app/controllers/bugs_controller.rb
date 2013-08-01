class BugsController < ApplicationController
  def index
  	@bugs = Bug.all
  end

  def new
  	@bug = Bug.new
  end

  def create
  	@bug = Bug.new(params[:bug])
  	if @bug.save
  		flash[:success] = "Successfully submitted a bug"
  		redirect_to 
  	else
  		flash[:failure] = @bug.errors.full_messages
  		render :new
  	end
  end
end
