class CommentsController < ApplicationController
	def create
		@dare = Dare.find(params[:dare_id])
		@comment = @dare.comments.create(params[:comment])
		respond_to do |format|
        	format.html { redirect_to dare_path(@dare) }
        	format.js 
    	end
	end
	def show
		@comments = Dare.find(params[:dare_id]).comments.all
	end
end
