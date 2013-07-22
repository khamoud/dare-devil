class Backer < ActiveRecord::Base
  belongs_to :user
  belongs_to :dare
  attr_accessible :amount
end
