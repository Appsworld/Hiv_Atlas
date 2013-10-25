class Profile < ActiveRecord::Base
  attr_accessible :Default_send_interval, :contact_setting, :email, :email_setting, :language, :locale_setting, :user_id, :username, :pic
belongs_to :user

has_attached_file :pic
        
has_one :create_resume
end
