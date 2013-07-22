class Challenge < ActiveRecord::Base
  belongs_to :dare
  belongs_to :challeng_sender, :class_name => 'User'
  belongs_to :challenge_reciever, :class_name => 'User'
  # attr_accessible :title, :body
end
