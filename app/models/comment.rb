class Comment < ActiveRecord::Base
  attr_accessible :Leave_a_comment, :blog_id, :user_id
  belongs_to :blog 
  belongs_to :user
end
