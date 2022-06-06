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

ActiveRecord::Schema[7.0].define(version: 2022_06_06_141426) do
  create_table "games", force: :cascade do |t|
    t.string "name"
    t.text "discription"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tag_games_rerationships", force: :cascade do |t|
    t.integer "game_id", null: false
    t.integer "tag_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_tag_games_rerationships_on_game_id"
    t.index ["tag_id"], name: "index_tag_games_rerationships_on_tag_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "tag_games_rerationships", "games"
  add_foreign_key "tag_games_rerationships", "tags"
end
