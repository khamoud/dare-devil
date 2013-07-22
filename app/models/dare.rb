class Dare < ActiveRecord::Base
  belongs_to :user
  has_many :backers
  has_many :challenges
  attr_accessible :completed, :current_price, :days_passed, :description, :funding_period, :target_price, :title
end
