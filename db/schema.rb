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

ActiveRecord::Schema.define(version: 20181012060147) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actresses", force: :cascade do |t|
    t.text     "name"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.text     "category"
    t.string   "image_right_name"
    t.string   "image_left_name"
    t.string   "image_front_name"
    t.string   "image_back_name"
  end

  create_table "photos", force: :cascade do |t|
    t.string   "image_name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "actresses_id"
    t.string   "direction"
  end

  create_table "rooms", force: :cascade do |t|
    t.text     "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "seat_0_1"
    t.integer  "seat_1_1"
    t.integer  "seat_1_2"
    t.integer  "seat_1_3"
    t.integer  "seat_1_4"
    t.integer  "seat_1_5"
    t.integer  "seat_1_6"
    t.integer  "seat_1_7"
    t.integer  "seat_1_8"
    t.integer  "seat_2_1"
    t.integer  "seat_2_2"
    t.integer  "seat_2_3"
    t.integer  "seat_2_4"
    t.integer  "seat_2_5"
    t.integer  "seat_2_6"
    t.integer  "seat_2_7"
    t.integer  "seat_2_8"
    t.integer  "seat_3_1"
    t.integer  "seat_3_2"
    t.integer  "seat_3_3"
    t.integer  "seat_3_4"
    t.integer  "seat_3_5"
    t.integer  "seat_3_6"
    t.integer  "seat_3_7"
    t.integer  "seat_3_8"
    t.integer  "seat_4_1"
  end

end
