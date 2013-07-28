class Dare < ActiveRecord::Base
  belongs_to :user
  has_many :backers
  has_many :challenges
  attr_accessible :completed, :current_price, :days_passed, :description, :funding_period, :target_price, :title, :url, :user_id

  def percent
  	average = (self.current_price/self.target_price)*100
  	if average >= 100
  		100
  	else
  		average
  	end
  end
end
