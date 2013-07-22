class Video < ActiveRecord::Base
  belongs_to :dare
  attr_accessible :url
end
