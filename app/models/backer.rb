class Backer < ActiveRecord::Base
  belongs_to :user
  belongs_to :dare
  attr_accessible :amount
  validates :user_id, :dare_id, :presence => true
end
