# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_01_03_164209) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "city_as", force: :cascade do |t|
    t.string "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.float "latitude"
    t.float "longitude"
    t.string "country"
  end

  create_table "city_bs", force: :cascade do |t|
    t.string "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.float "latitude"
    t.float "longitude"
    t.string "country"
  end

  create_table "depositions", force: :cascade do |t|
    t.string "reason"
    t.string "dep_city"
    t.string "arr_city"
    t.string "alert_date"
    t.datetime "departure"
    t.datetime "arrival"
    t.boolean "forward"
    t.datetime "forward_dep"
    t.datetime "forward_arr"
    t.string "delay"
    t.string "excuse"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
