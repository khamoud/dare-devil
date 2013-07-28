class DaresController < ApplicationController
  def index
  	@dares = Dare.all
  end

  def show
  	@dare = Dare.find(params[:id])
    #@comment = Dare.find(params[:id]).comments.all
  end

  def new
    @dare = Dare.new
  end

  def create
    @dare = Dare.new(params[:dare])
    @dare.current_price = 0
    @dare.completed = FALSE
    @dare.days_passed = 0
    if @dare.save
      redirect_to @dare
    else
      flash[:failure] = @user.errors.full_messages
      render :new
    end
  end

  def edit
  end
end
