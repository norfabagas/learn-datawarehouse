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

ActiveRecord::Schema.define(version: 2020_06_26_152702) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cities", force: :cascade do |t|
    t.bigint "province_id"
    t.string "name", null: false
    t.index ["province_id"], name: "index_cities_on_province_id"
  end

  create_table "districts", force: :cascade do |t|
    t.bigint "city_id"
    t.string "CreateDistricts", null: false
    t.index ["city_id"], name: "index_districts_on_city_id"
  end

  create_table "postal_codes", force: :cascade do |t|
    t.bigint "village_id"
    t.string "post_code", null: false
    t.index ["village_id"], name: "index_postal_codes_on_village_id"
  end

  create_table "provinces", force: :cascade do |t|
    t.string "name", null: false
  end

  create_table "sub_districts", force: :cascade do |t|
    t.bigint "district_id"
    t.string "name", null: false
    t.index ["district_id"], name: "index_sub_districts_on_district_id"
  end

  create_table "villages", force: :cascade do |t|
    t.bigint "sub_district_id"
    t.string "name", null: false
    t.index ["sub_district_id"], name: "index_villages_on_sub_district_id"
  end

  add_foreign_key "cities", "provinces"
  add_foreign_key "districts", "cities"
  add_foreign_key "postal_codes", "villages"
  add_foreign_key "sub_districts", "districts"
  add_foreign_key "villages", "sub_districts"
end
