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

ActiveRecord::Schema.define(version: 2020_09_24_211741) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "groups", force: :cascade do |t|
    t.string "map"
    t.integer "num_of_impostors"
    t.boolean "confirm_ejects"
    t.integer "num_of_meetings"
    t.integer "em_cd"
    t.integer "discussion_time"
    t.integer "voting_time"
    t.float "player_speed"
    t.float "crew_vis"
    t.float "impos_vision"
    t.integer "kill_cd"
    t.string "kill_distance"
    t.boolean "visual_tasks"
    t.integer "common_tasks"
    t.integer "long_tasks"
    t.integer "short_tasks"
    t.integer "creator_id"
    t.integer "user_id"
    t.string "skill_level"
    t.boolean "mic_required"
    t.integer "player_limit"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "avatar"
    t.string "discord"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
