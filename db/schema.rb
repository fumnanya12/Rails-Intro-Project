# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.1].define(version: 2026_07_10_052053) do
  create_table "coin_details", force: :cascade do |t|
    t.decimal "change"
    t.string "coin_uuid", null: false
    t.datetime "created_at", null: false
    t.string "description"
    t.integer "no_exchange"
    t.integer "no_market"
    t.datetime "updated_at", null: false
    t.string "website_url"
    t.index ["coin_uuid"], name: "index_coin_details_on_coin_uuid", unique: true
  end

  create_table "coins", force: :cascade do |t|
    t.decimal "change_24"
    t.string "color"
    t.datetime "created_at", null: false
    t.string "icon_url"
    t.decimal "market_cap"
    t.string "name"
    t.decimal "price"
    t.integer "rank"
    t.string "symbol"
    t.integer "tier"
    t.datetime "updated_at", null: false
    t.string "uuid", null: false
    t.decimal "volume_24h"
    t.index ["uuid"], name: "index_coins_on_uuid", unique: true
  end

  create_table "trending_coins", force: :cascade do |t|
    t.decimal "change_24h"
    t.string "color"
    t.datetime "created_at", null: false
    t.string "icon_url"
    t.decimal "market_cap"
    t.string "name"
    t.decimal "price"
    t.integer "rank"
    t.string "symbol"
    t.integer "tier"
    t.datetime "updated_at", null: false
    t.string "uuid"
    t.decimal "volume_24h"
    t.index ["uuid"], name: "index_trending_coins_on_uuid", unique: true
  end

  add_foreign_key "coin_details", "coins", column: "coin_uuid", primary_key: "uuid"
end
