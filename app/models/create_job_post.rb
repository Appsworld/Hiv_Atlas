class CreateJobPost < ActiveRecord::Base
  attr_accessible :Make_post_private, :city, :contact_person, :country, :country, :deadline_date, :deadline_time, :description, :email, :enabled, :job_title, :location, :name, :state, :true, :user_id, :website_url, :attach
  has_attached_file :attach
end
