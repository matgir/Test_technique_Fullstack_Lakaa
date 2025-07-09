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

ActiveRecord::Schema[8.0].define(version: 2025_07_09_145805) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "food_collections", force: :cascade do |t|
    t.date "collect_date"
    t.string "association_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "description"
  end

  create_table "indicator_names", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "indicator_values", force: :cascade do |t|
    t.string "value"
    t.bigint "indicator_name_id", null: false
    t.bigint "food_collection_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["food_collection_id"], name: "index_indicator_values_on_food_collection_id"
    t.index ["indicator_name_id"], name: "index_indicator_values_on_indicator_name_id"
  end

  add_foreign_key "indicator_values", "food_collections"
  add_foreign_key "indicator_values", "indicator_names"
end
