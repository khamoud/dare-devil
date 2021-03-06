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

ActiveRecord::Schema.define(:version => 20130801213127) do

  create_table "backers", :force => true do |t|
    t.float    "amount"
    t.integer  "user_id"
    t.integer  "dare_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "backers", ["dare_id"], :name => "index_backers_on_dare_id"
  add_index "backers", ["user_id"], :name => "index_backers_on_user_id"

  create_table "bugs", :force => true do |t|
    t.text     "bug"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

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

  create_table "comments", :force => true do |t|
    t.text     "comment"
    t.integer  "user_id"
    t.integer  "dare_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "comments", ["dare_id"], :name => "index_comments_on_dare_id"
  add_index "comments", ["user_id"], :name => "index_comments_on_user_id"

  create_table "dares", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.float    "target_price"
    t.float    "current_price"
    t.boolean  "completed"
    t.integer  "funding_period"
    t.integer  "days_passed"
    t.integer  "user_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "url"
    t.string   "finshedurl"
    t.boolean  "completed_funding"
  end

  add_index "dares", ["user_id"], :name => "index_dares_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.string   "email"
  end

end
