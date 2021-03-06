# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20131026132921) do

  create_table "blogs", :force => true do |t|
    t.integer  "user_id"
    t.string   "title"
    t.text     "content"
    t.boolean  "like"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "comments", :force => true do |t|
    t.integer  "blog_id"
    t.integer  "user_id"
    t.string   "Leave_a_comment"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "create_classified_ads", :force => true do |t|
    t.integer  "user_id"
    t.string   "add_title"
    t.string   "category"
    t.string   "state"
    t.string   "country"
    t.text     "add_text"
    t.boolean  "Make_this_post_private"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
    t.string   "pic_file_name"
    t.string   "pic_content_type"
    t.integer  "pic_file_size"
    t.datetime "pic_updated_at"
  end

  create_table "create_events", :force => true do |t|
    t.integer  "user_id"
    t.string   "title"
    t.date     "from_date"
    t.date     "to_date"
    t.text     "body"
    t.string   "location"
    t.string   "country"
    t.boolean  "Make_event_private"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "create_job_posts", :force => true do |t|
    t.integer  "user_id"
    t.string   "job_title"
    t.string   "email"
    t.boolean  "enabled"
    t.boolean  "true"
    t.date     "deadline_date"
    t.time     "deadline_time"
    t.text     "description"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "name"
    t.string   "website_url"
    t.string   "contact_person"
    t.string   "location"
    t.boolean  "Make_post_private"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.string   "attach_file_name"
    t.string   "attach_content_type"
    t.integer  "attach_file_size"
    t.datetime "attach_updated_at"
  end

  create_table "create_resumes", :force => true do |t|
    t.integer  "user_id"
    t.string   "title"
    t.string   "profession"
    t.string   "job_status"
    t.string   "language"
    t.text     "body"
    t.string   "location"
    t.string   "country"
    t.boolean  "make_post_private"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.string   "attach_file_name"
    t.string   "attach_content_type"
    t.integer  "attach_file_size"
    t.datetime "attach_updated_at"
  end

  create_table "profiles", :force => true do |t|
    t.integer  "user_id"
    t.string   "username"
    t.string   "Default_send_interval"
    t.string   "language"
    t.string   "email_setting"
    t.string   "contact_setting"
    t.string   "locale_setting"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.string   "pic_file_name"
    t.string   "pic_content_type"
    t.integer  "pic_file_size"
    t.datetime "pic_updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
