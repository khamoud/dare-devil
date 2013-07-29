class CommentsController < ApplicationController
	def create
		@comment = Comment.new(params[:comment])
		if @comment.save
			redirect_to Dare.find(params[:dare_id])
		else
			redirect_to Dare.find(params[:dare_id])
		end
	end
end
