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

ActiveRecord::Schema.define(version: 20140115004109) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "groups", force: true do |t|
    t.string  "group_id"
    t.integer "groupme_updated"
  end

  create_table "users", force: true do |t|
    t.string   "groupme_uid"
    t.string   "phone_number"
    t.string   "image_url"
    t.string   "name"
    t.string   "email"
    t.boolean  "sms_enabled"
    t.string   "access_token"
    t.string   "groupme_updated"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
