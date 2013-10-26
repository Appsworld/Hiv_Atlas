class Blog < ActiveRecord::Base
  attr_accessible :content, :like, :title, :user_id
  belongs_to :user                                                             
  has_many :comments
end
