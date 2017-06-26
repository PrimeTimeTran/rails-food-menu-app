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

ActiveRecord::Schema.define(version: 20170626080412) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "food_items", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.decimal  "price"
    t.string   "image_url"
    t.integer  "section_id"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.integer  "view_count"
    t.integer  "user_id"
    t.boolean  "active"
    t.decimal  "unit_price",  precision: 12, scale: 3
    t.index ["section_id"], name: "index_food_items_on_section_id", using: :btree
  end

  create_table "order_items", force: :cascade do |t|
    t.integer  "food_item_id"
    t.integer  "order_id"
    t.decimal  "unit_price",   precision: 12, scale: 3
    t.integer  "quantity"
    t.decimal  "total_price",  precision: 12, scale: 3
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.index ["food_item_id"], name: "index_order_items_on_food_item_id", using: :btree
    t.index ["order_id"], name: "index_order_items_on_order_id", using: :btree
  end

  create_table "order_statuses", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string   "name"
    t.string   "phone"
    t.text     "address"
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.integer  "user_id"
    t.decimal  "subtotal",        precision: 12, scale: 3
    t.decimal  "tax",             precision: 12, scale: 3
    t.decimal  "shipping",        precision: 12, scale: 3
    t.decimal  "total",           precision: 12, scale: 3
    t.integer  "order_status_id"
    t.integer  "order_item_id"
    t.index ["order_status_id"], name: "index_orders_on_order_status_id", using: :btree
  end

  create_table "reviews", force: :cascade do |t|
    t.text     "review"
    t.integer  "stars"
    t.integer  "food_item_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "user_id"
    t.index ["food_item_id"], name: "index_reviews_on_food_item_id", using: :btree
  end

  create_table "sections", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_sections_on_name", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "phone_number"
    t.string   "address"
    t.string   "city"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "food_items", "sections"
  add_foreign_key "order_items", "food_items"
  add_foreign_key "order_items", "orders"
  add_foreign_key "orders", "order_statuses"
  add_foreign_key "reviews", "food_items"
end
