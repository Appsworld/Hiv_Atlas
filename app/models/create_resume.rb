class CreateResume < ActiveRecord::Base
  attr_accessible :body, :country, :job_status, :language, :location, :make_post_private, :profession, :title, :user_id, :attach

 belongs_to :profle
 has_attached_file :attach
end
