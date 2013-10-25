class RemoveColumnPictureFromProfiles < ActiveRecord::Migration
  def up
    remove_column :profiles, :picture
  end

  def down
    add_column :profiles, :picture, :string
  end
end
