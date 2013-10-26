class CreateCreateClassifiedAds < ActiveRecord::Migration
  def change
    create_table :create_classified_ads do |t|
      t.integer :user_id
      t.string :add_title
      t.string :category
      t.string :state
      t.string :country
      t.text :add_text
      t.boolean :Make_this_post_private

      t.timestamps
    end
  end
end
