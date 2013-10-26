class CreateCreateEvents < ActiveRecord::Migration
  def change
    create_table :create_events do |t|
      t.integer :user_id
      t.string :title
      t.date :from_date
      t.date :to_date
      t.text :body
      t.string :location
      t.string :country
      t.boolean :Make_event_private

      t.timestamps
    end
  end
end
