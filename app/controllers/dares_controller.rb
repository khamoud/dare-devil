class DaresController < ApplicationController
  def index
  	@dares = Dare.all
  end

  def show
  	@dare = Dare.find(params[:id])
  end

  def new
  end

  def edit
  end
end
