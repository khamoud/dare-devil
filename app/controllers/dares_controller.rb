class DaresController < ApplicationController
  
  before_filter :require_permission, only: :edit
  def require_permission
    if current_user != Dare.find(params[:id]).user
      redirect_to root_path
      #Or do something else here
    end
  end


  def index
  	@dares = Dare.order("created_at DESC")
    
  end

  def show
  	@dare = Dare.find(params[:id])
    @comments = Dare.find(params[:id]).comments.all
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

  # GET /dares/1/edit
  def edit
    @dare = Dare.find(params[:id])
  end

  # PUT /dares/1
  # PUT /dares/1.json
  def update
    @dare = Dare.find(params[:dare_id])
    @dare.finishedurl = params[:updateDare]
    if @dare.update_attributes
      flash[:success] = "You have finished the dare! Now upon approval you will recieve your funds!"
      redirect_to @dare
    end
  end
end
