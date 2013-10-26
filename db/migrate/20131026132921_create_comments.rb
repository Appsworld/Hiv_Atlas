class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :blog_id
      t.integer :user_id
      t.string :Leave_a_comment

      t.timestamps
    end
  end
end
