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

ActiveRecord::Schema.define(:version => 20130722114427) do

  create_table "backers", :force => true do |t|
    t.float    "amount"
    t.integer  "user_id"
    t.integer  "dare_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "backers", ["dare_id"], :name => "index_backers_on_dare_id"
  add_index "backers", ["user_id"], :name => "index_backers_on_user_id"

  create_table "challenges", :force => true do |t|
    t.integer  "dare_id"
    t.integer  "challeng_sender_id"
    t.integer  "challenge_reciever_id"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  add_index "challenges", ["challeng_sender_id"], :name => "index_challenges_on_challeng_sender_id"
  add_index "challenges", ["challenge_reciever_id"], :name => "index_challenges_on_challenge_reciever_id"
  add_index "challenges", ["dare_id"], :name => "index_challenges_on_dare_id"

  create_table "dares", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.float    "target_price"
    t.float    "current_price"
    t.boolean  "completed"
    t.integer  "funding_period"
    t.integer  "days_passed"
    t.integer  "user_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "url"
  end

  add_index "dares", ["user_id"], :name => "index_dares_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "username"
    t.text     "bio"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "videos", :force => true do |t|
    t.integer  "dare_id"
    t.string   "url"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "videos", ["dare_id"], :name => "index_videos_on_dare_id"

end
