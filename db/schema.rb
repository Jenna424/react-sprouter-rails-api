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

ActiveRecord::Schema.define(version: 2019_03_26_002030) do

  create_table "garden_plants", force: :cascade do |t|
    t.integer "garden_id"
    t.integer "plant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gardens", force: :cascade do |t|
    t.string "name"
    t.string "layout", default: "Square Foot Garden with Raised Beds"
    t.string "gardenType"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plants", force: :cascade do |t|
    t.string "name"
    t.string "family"
    t.integer "max_quantity"
    t.string "soil_specifications"
    t.string "sow_season"
    t.string "harvest_season"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
