class ChargesController < ApplicationController
  def new
  end

def create
  # Set your secret key: remember to change this to your live secret key in production
  # See your keys here https://manage.stripe.com/account
  Stripe.api_key = "sk_test_XTxlbB0BPMwOYNLbOOiVkHOv"
  @dare = Dare.find(params[:dare_id])
  # Get the credit card details submitted by the form
  token = params[:stripeToken]
  @amount = params[:pay]
  @amount = @amount.to_i * 100
  # Create the charge on Stripe's servers - this will charge the user's card 
  begin
    charge = Stripe::Charge.create(
      :amount => @amount, # amount in cents, again
      :currency => "usd",
      :card => token,
      :description => "#{Dare.find(params[:dare_id]).id} #{Dare.find(params[:dare_id]).title}"
    )
    @dare = Dare.find(params[:dare_id])
    @dare.current_price = @dare.current_price+=(charge.amount/ 100)
    if (@dare.target_price - @dare.current_price) <= 0
      @dare.completed = TRUE
    end
    @dare.save!

    
  rescue Stripe::CardError => e
    # The card has been declined
  end
end
end
