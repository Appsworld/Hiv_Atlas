class CreateCreateResumes < ActiveRecord::Migration
  def change
    create_table :create_resumes do |t|
      t.integer :user_id
      t.string :title
      t.string :profession
      t.string :job_status
      t.string :language
      t.text :body
      t.string :location
      t.string :country
      t.boolean :make_post_private

      t.timestamps
    end
  end
end
