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

ActiveRecord::Schema.define(version: 2020_06_29_011344) do

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

  create_table "cart_details", force: :cascade do |t|
    t.bigint "receive_order_detail_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["receive_order_detail_id"], name: "index_cart_details_on_receive_order_detail_id", unique: true
  end

  create_table "carts", force: :cascade do |t|
    t.decimal "discount"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cashier_sessions", force: :cascade do |t|
    t.bigint "cashier_user_id"
    t.bigint "store_id"
    t.datetime "start_at", null: false
    t.datetime "end_at", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cashier_user_id"], name: "index_cashier_sessions_on_cashier_user_id"
    t.index ["store_id"], name: "index_cashier_sessions_on_store_id"
  end

  create_table "cashier_users", force: :cascade do |t|
    t.string "identity_number", null: false
    t.string "name", null: false
    t.string "username", null: false
    t.string "password", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
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

  create_table "credit_cards", force: :cascade do |t|
    t.bigint "credit_card_list_id"
    t.bigint "customer_id"
    t.string "holder_name", null: false
    t.string "card_number", null: false
    t.string "cvc", null: false
    t.date "valid_until", null: false
    t.boolean "is_active"
    t.boolean "is_default"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["credit_card_list_id"], name: "index_credit_cards_on_credit_card_list_id"
    t.index ["customer_id"], name: "index_credit_cards_on_customer_id"
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

  create_table "debit_cards", force: :cascade do |t|
    t.bigint "debit_card_list_id"
    t.bigint "customer_id"
    t.string "holder_name", null: false
    t.string "card_number", null: false
    t.boolean "is_active"
    t.boolean "is_default"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["customer_id"], name: "index_debit_cards_on_customer_id"
    t.index ["debit_card_list_id"], name: "index_debit_cards_on_debit_card_list_id"
  end

  create_table "digital_wallet_lists", force: :cascade do |t|
    t.string "name", null: false
    t.string "detail", null: false
    t.boolean "is_active"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "digital_wallets", force: :cascade do |t|
    t.bigint "digital_wallet_list_id"
    t.bigint "customer_id"
    t.string "name", null: false
    t.string "detail", null: false
    t.boolean "is_active"
    t.boolean "is_default"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["customer_id"], name: "index_digital_wallets_on_customer_id"
    t.index ["digital_wallet_list_id"], name: "index_digital_wallets_on_digital_wallet_list_id"
  end

  create_table "districts", force: :cascade do |t|
    t.bigint "city_id"
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["city_id"], name: "index_districts_on_city_id"
  end

  create_table "item_categories", force: :cascade do |t|
    t.string "category_name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "items", force: :cascade do |t|
    t.bigint "item_category_id"
    t.string "name", null: false
    t.decimal "sap_code", null: false
    t.boolean "is_active", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["item_category_id"], name: "index_items_on_item_category_id"
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

  create_table "receive_order_details", force: :cascade do |t|
    t.bigint "receive_order_id"
    t.bigint "item_id"
    t.decimal "cogs", null: false
    t.decimal "price", null: false
    t.decimal "quantity", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["item_id"], name: "index_receive_order_details_on_item_id"
    t.index ["receive_order_id"], name: "index_receive_order_details_on_receive_order_id"
  end

  create_table "receive_orders", force: :cascade do |t|
    t.bigint "store_id"
    t.datetime "receive_date", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["store_id"], name: "index_receive_orders_on_store_id"
  end

  create_table "stores", force: :cascade do |t|
    t.string "name", null: false
    t.text "description", null: false
    t.boolean "is_active", null: false
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

  create_table "transaction_payment_details", force: :cascade do |t|
    t.bigint "transaction_payment_id"
    t.time "invoice_date"
    t.string "invoice_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["transaction_payment_id"], name: "index_transaction_payment_details_on_transaction_payment_id", unique: true
  end

  create_table "transaction_payments", force: :cascade do |t|
    t.decimal "payment_sum", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "transaction_statuses", force: :cascade do |t|
    t.string "status_name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "transaction_types", force: :cascade do |t|
    t.string "transaction_name", null: false
    t.boolean "is_active", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "transactions", force: :cascade do |t|
    t.bigint "customer_id"
    t.bigint "cart_id"
    t.bigint "transaction_type_id"
    t.bigint "transaction_status_id"
    t.bigint "transaction_payment_id"
    t.bigint "cashier_session_id"
    t.string "transaction_code", null: false
    t.string "transaction_reference"
    t.time "commited_at"
    t.time "void_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cart_id"], name: "index_transactions_on_cart_id"
    t.index ["cashier_session_id"], name: "index_transactions_on_cashier_session_id"
    t.index ["customer_id"], name: "index_transactions_on_customer_id"
    t.index ["transaction_payment_id"], name: "index_transactions_on_transaction_payment_id"
    t.index ["transaction_status_id"], name: "index_transactions_on_transaction_status_id"
    t.index ["transaction_type_id"], name: "index_transactions_on_transaction_type_id"
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
  add_foreign_key "cart_details", "receive_order_details"
  add_foreign_key "cashier_sessions", "cashier_users"
  add_foreign_key "cashier_sessions", "stores"
  add_foreign_key "cities", "provinces"
  add_foreign_key "credit_cards", "credit_card_lists"
  add_foreign_key "credit_cards", "customers"
  add_foreign_key "debit_cards", "customers"
  add_foreign_key "debit_cards", "debit_card_lists"
  add_foreign_key "digital_wallets", "customers"
  add_foreign_key "digital_wallets", "digital_wallet_lists"
  add_foreign_key "districts", "cities"
  add_foreign_key "items", "item_categories"
  add_foreign_key "postal_codes", "villages"
  add_foreign_key "receive_order_details", "items"
  add_foreign_key "receive_order_details", "receive_orders"
  add_foreign_key "receive_orders", "stores"
  add_foreign_key "sub_districts", "districts"
  add_foreign_key "transaction_payment_details", "transaction_payments"
  add_foreign_key "transactions", "carts"
  add_foreign_key "transactions", "cashier_sessions"
  add_foreign_key "transactions", "customers"
  add_foreign_key "transactions", "transaction_payments"
  add_foreign_key "transactions", "transaction_statuses"
  add_foreign_key "transactions", "transaction_types"
  add_foreign_key "villages", "sub_districts"
end
