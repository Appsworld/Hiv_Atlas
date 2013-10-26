class CreateClassifiedAd < ActiveRecord::Base
  attr_accessible :Make_this_post_private, :add_text, :add_title, :category, :country, :state, :user_id, :pic
  has_attached_file :pic
end
