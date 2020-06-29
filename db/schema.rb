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

ActiveRecord::Schema.define(version: 2020_06_29_003621) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.bigint "customer_id"
    t.bigint "village_id"
    t.bigint "postal_code_id"
    t.text "full_address", null: false
    t.text "address_hint"
    t.boolean "is_active"
    t.boolean "is_default"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["customer_id"], name: "index_addresses_on_customer_id"
    t.index ["postal_code_id"], name: "index_addresses_on_postal_code_id"
    t.index ["village_id"], name: "index_addresses_on_village_id"
  end

  create_table "cities", force: :cascade do |t|
    t.bigint "province_id"
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["province_id"], name: "index_cities_on_province_id"
  end

  create_table "credit_card_lists", force: :cascade do |t|
    t.string "name", null: false
    t.string "detail", null: false
    t.boolean "is_active"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "customer_code", null: false
    t.string "name", null: false
    t.string "email", null: false
    t.string "password", null: false
    t.decimal "age", null: false
    t.string "gender", null: false
    t.time "verified_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_customers_on_email"
  end

  create_table "debit_card_lists", force: :cascade do |t|
    t.string "name", null: false
    t.string "detail", null: false
    t.boolean "is_active"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "digital_wallet_lists", force: :cascade do |t|
    t.string "name", null: false
    t.string "detail", null: false
    t.boolean "is_active"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "districts", force: :cascade do |t|
    t.bigint "city_id"
    t.string "CreateDistricts", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["city_id"], name: "index_districts_on_city_id"
  end

  create_table "postal_codes", force: :cascade do |t|
    t.bigint "village_id"
    t.string "post_code", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["village_id"], name: "index_postal_codes_on_village_id"
  end

  create_table "provinces", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sub_districts", force: :cascade do |t|
    t.bigint "district_id"
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["district_id"], name: "index_sub_districts_on_district_id"
  end

  create_table "villages", force: :cascade do |t|
    t.bigint "sub_district_id"
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["sub_district_id"], name: "index_villages_on_sub_district_id"
  end

  add_foreign_key "addresses", "customers"
  add_foreign_key "addresses", "postal_codes"
  add_foreign_key "addresses", "villages"
  add_foreign_key "cities", "provinces"
  add_foreign_key "districts", "cities"
  add_foreign_key "postal_codes", "villages"
  add_foreign_key "sub_districts", "districts"
  add_foreign_key "villages", "sub_districts"
end
