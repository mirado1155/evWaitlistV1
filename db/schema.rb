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

ActiveRecord::Schema[8.0].define(version: 2024_11_21_191924) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "chargers", force: :cascade do |t|
    t.bigint "station_id", null: false
    t.integer "level"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["station_id"], name: "index_chargers_on_station_id"
  end

  create_table "errors", force: :cascade do |t|
    t.bigint "charger_id", null: false
    t.integer "error_code"
    t.text "details"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["charger_id"], name: "index_errors_on_charger_id"
  end

  create_table "positions", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "station_id", null: false
    t.integer "list_type"
    t.integer "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["station_id"], name: "index_positions_on_station_id"
    t.index ["user_id", "station_id", "list_type"], name: "index_positions_on_user_id_and_station_id_and_list_type", unique: true
    t.index ["user_id"], name: "index_positions_on_user_id"
  end

  create_table "stations", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.bigint "station_id", null: false
    t.integer "waitlist_level_preference"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["station_id"], name: "index_users_on_station_id"
  end

  create_table "vehicles", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "make"
    t.string "model"
    t.integer "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_vehicles_on_user_id"
  end

  add_foreign_key "chargers", "stations"
  add_foreign_key "errors", "chargers"
  add_foreign_key "positions", "stations"
  add_foreign_key "positions", "users"
  add_foreign_key "users", "stations"
  add_foreign_key "vehicles", "users"
end
