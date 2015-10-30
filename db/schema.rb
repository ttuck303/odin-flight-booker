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

ActiveRecord::Schema.define(version: 20151029231217) do

  create_table "airports", force: :cascade do |t|
    t.string   "name"
    t.string   "wac"
    t.string   "city"
    t.string   "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "billings", force: :cascade do |t|
    t.integer  "passenger_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "card_type"
    t.integer  "card_number"
    t.integer  "card_secret_code"
    t.date     "card_exp"
    t.integer  "street_num"
    t.string   "street_name"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "bookings", force: :cascade do |t|
    t.integer  "passenger_id"
    t.integer  "flight_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "bookings", ["passenger_id", "flight_id"], name: "index_bookings_on_passenger_id_and_flight_id", unique: true

  create_table "flights", force: :cascade do |t|
    t.date     "departure_date"
    t.time     "departure_time"
    t.date     "arrival_date"
    t.time     "arrival_time"
    t.integer  "origin_id"
    t.integer  "destination_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "passengers", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.date     "birthdate"
    t.integer  "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
