class CreateCreateJobPosts < ActiveRecord::Migration
  def change
    create_table :create_job_posts do |t|
      t.integer :user_id
      t.string :job_title
      t.string :email
      t.boolean :enabled
      t.boolean :true
      t.date :deadline_date
      t.time :deadline_time
      t.text :description
      t.string :city
      t.string :state
      t.string :country
      t.string :name
      t.string :website_url
      t.string :contact_person
      t.string :location
      t.string :country
      t.boolean :Make_post_private

      t.timestamps
    end
  end
end
