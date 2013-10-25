class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.string :username
      t.string :email
      t.string :Default_send_interval
      t.string :picture
      t.string :language
      t.string :email_setting
      t.string :contact_setting
      t.string :locale_setting

      t.timestamps
    end
  end
end
