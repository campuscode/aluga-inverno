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

ActiveRecord::Schema.define(version: 20170708003944) do

  create_table "properties", force: :cascade do |t|
    t.integer "maximum_guests"
    t.integer "minimum_rent"
    t.integer "maximum_rent"
    t.decimal "daily_rate"
    t.string "property_type"
    t.string "rent_purpose"
    t.string "property_location"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "picture"
    t.string "owner"
    t.string "email"
    t.string "phone"
    t.string "rules"
  end

  create_table "proposals", force: :cascade do |t|
    t.date "start_date"
    t.date "end_date"
    t.decimal "total_amount"
    t.integer "total_guests"
    t.string "rent_purpose"
    t.string "name"
    t.string "email"
    t.string "cpf"
    t.string "phone"
    t.text "extra_info"
    t.integer "property_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["property_id"], name: "index_proposals_on_property_id"
  end

end
