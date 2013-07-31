class Dare < ActiveRecord::Base
  belongs_to :user
  has_many :backers
  has_many :challenges
  has_many :comments
  attr_accessible :completed, :current_price, :days_passed, :description, :funding_period, :target_price, :title, :url, :user_id, :finshedurl, :completed_funding, :funding_duration
  validates :title, :description, :url, :target_price, :funding_period, :presence => true
  
  def percent
  	average = (self.current_price/self.target_price)*100
  	if average >= 100
  		100
  	elsif average <= 5
  		average == 0
      5
    else 
      average
  	end
  end

  def inTime
   self.created_at.to_date+self.funding_period
  end

end
