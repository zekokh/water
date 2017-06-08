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

ActiveRecord::Schema.define(version: 20170608093207) do

  create_table "drivers", force: :cascade do |t|
    t.string   "name"
    t.string   "login"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string   "shop"
    t.string   "address"
    t.integer  "pure_water"
    t.integer  "empty_bottle"
    t.integer  "empty_bottle_back"
    t.integer  "dirty_bottle"
    t.integer  "dirty_bottle_back"
    t.string   "date_of_completion"
    t.string   "driver"
    t.boolean  "is_completed",       default: false
    t.boolean  "is_a_live",          default: true
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "shops", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stocks", force: :cascade do |t|
    t.integer  "pure_water"
    t.integer  "empty_bottle"
    t.integer  "dirty_bottle"
    t.string   "who_makes_changes"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "login"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
