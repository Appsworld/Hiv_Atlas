class AddAttachPaperclip1 < ActiveRecord::Migration
  def up
  	add_column :create_job_posts, :attach_file_name,    :string
    add_column :create_job_posts, :attach_content_type, :string
    add_column :create_job_posts, :attach_file_size,    :integer
    add_column :create_job_posts, :attach_updated_at,   :datetime
  end

  def down
  	remove_column :create_job_posts, :attach_file_name
    remove_column :create_job_posts, :attach_content_type
    remove_column :create_job_posts, :attach_file_size
    remove_column :create_job_posts, :attach_updated_at
  end
end
