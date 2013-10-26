class CreateEvent < ActiveRecord::Base
  attr_accessible :Make_event_private, :body, :country, :from_date, :location, :title, :to_date, :user_id
end
