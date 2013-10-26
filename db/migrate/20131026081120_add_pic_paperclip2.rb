class AddPicPaperclip2 < ActiveRecord::Migration
  def up
  	add_column :create_classified_ads, :pic_file_name,    :string
    add_column :create_classified_ads, :pic_content_type, :string
    add_column :create_classified_ads, :pic_file_size,    :integer
    add_column :create_classified_ads, :pic_updated_at,   :datetime
  end

  def down
  	remove_column :create_classified_ads, :pic_file_name
    remove_column :create_classified_ads, :pic_content_type
    remove_column :create_classified_ads, :pic_file_size
    remove_column :create_classified_ads, :pic_updated_at
  end
end
