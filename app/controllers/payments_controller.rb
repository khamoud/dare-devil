class PaymentsController < ApplicationController

  def new
  end

  def create
    @payment = Payment.new(current_user.email, 100.0, params[:payment])
    if @payment.charge
      flash[:success] = 'Thanks for the moolah!'
      redirect_to root_path
    else
      flash[:error] = @payment.errors.first
      render :new
    end
  end

end