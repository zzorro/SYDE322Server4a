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

ActiveRecord::Schema.define(:version => 20120331011355) do

  create_table "games", :force => true do |t|
    t.string   "name"
    t.boolean  "open"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "games", ["name"], :name => "index_games_on_name", :unique => true

  create_table "songs", :force => true do |t|
    t.string   "name"
    t.string   "artist"
    t.text     "lyrics",     :limit => 255
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  add_index "songs", ["name"], :name => "index_songs_on_name", :unique => true

  create_table "user_games", :force => true do |t|
    t.integer  "user_id"
    t.integer  "game_id"
    t.integer  "game_score"
    t.boolean  "isAdmin"
    t.boolean  "isWinner"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.integer  "games_played"
    t.integer  "games_won"
    t.integer  "running_score"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "users", ["name"], :name => "index_users_on_name", :unique => true

end
