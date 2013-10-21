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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20131020182746) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "enclosures", force: true do |t|
    t.integer  "feed_id"
    t.string   "media_type"
    t.string   "url"
    t.string   "upload_status"
    t.string   "title"
    t.string   "artist"
    t.string   "album"
    t.string   "year"
    t.text     "comm"
    t.string   "tcom"
    t.string   "tcon"
    t.string   "tcop"
    t.text     "tit2"
    t.text     "tit3"
    t.string   "tcat"
    t.string   "trck"
    t.string   "tyer"
    t.string   "tgid"
    t.string   "wfed"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "feeds", force: true do |t|
    t.integer "user_id"
    t.string  "title"
    t.string  "url"
  end

  create_table "users", force: true do |t|
    t.string   "provider"
    t.string   "email"
    t.integer  "uid"
    t.string   "name"
    t.string   "oauth_token"
    t.string   "oauth_expires_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
