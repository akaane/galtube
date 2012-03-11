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

ActiveRecord::Schema.define(:version => 20120311101254) do

  create_table "actors", :force => true do |t|
    t.string   "name_en"
    t.string   "name_zh"
    t.date     "birthday"
    t.integer  "location_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "actors", ["location_id"], :name => "index_actors_on_location_id"

  create_table "binaries", :force => true do |t|
    t.integer  "guid"
    t.string   "name"
    t.integer  "size",       :limit => 8
    t.string   "mime"
    t.binary   "data",       :limit => 16777215
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
  end

  add_index "binaries", ["guid"], :name => "index_binaries_on_guid"

  create_table "categories", :force => true do |t|
    t.string   "title_en"
    t.string   "title_zh"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "categories_videos", :id => false, :force => true do |t|
    t.integer  "category_id", :null => false
    t.integer  "video_id",    :null => false
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "categories_videos", ["category_id", "video_id"], :name => "index_categories_videos_on_category_id_and_video_id", :unique => true

  create_table "covers", :force => true do |t|
    t.string   "binary_guid"
    t.string   "mime"
    t.integer  "length"
    t.integer  "width"
    t.integer  "height"
    t.integer  "video_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "covers", ["video_id"], :name => "index_covers_on_video_id"

  create_table "locations", :force => true do |t|
    t.string   "name_en"
    t.string   "name_zh"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "operators", :force => true do |t|
    t.string   "email"
    t.string   "password"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "reviews", :force => true do |t|
    t.integer  "rank"
    t.integer  "video_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "reviews", ["video_id"], :name => "index_reviews_on_video_id"

  create_table "tags", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "videos", :force => true do |t|
    t.string   "title_en"
    t.string   "title_zh"
    t.text     "description"
    t.integer  "duration"
    t.integer  "width"
    t.integer  "height"
    t.integer  "current_review"
    t.boolean  "published"
    t.integer  "hits"
    t.string   "binary_guid"
    t.integer  "actor_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "videos", ["actor_id"], :name => "index_videos_on_actor_id"

  create_table "videos_tags", :id => false, :force => true do |t|
    t.integer  "video_id",   :null => false
    t.integer  "tag_id",     :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "videos_tags", ["tag_id", "video_id"], :name => "index_videos_tags_on_tag_id_and_video_id", :unique => true

end
