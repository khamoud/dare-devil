class Bug < ActiveRecord::Base
  attr_accessible :bug
  validates :bug, :presence => true
  validates :bug, :length => {:minimum => 5}
end
