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

ActiveRecord::Schema.define(version: 2019_05_05_222805) do

  create_table "user_workouts", force: :cascade do |t|
    t.integer "user_id"
    t.integer "workout_id"
    t.integer "user_sets"
    t.integer "user_reps"
    t.integer "user_weight"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_sets2"
    t.integer "user_reps2"
    t.integer "user_weight2"
    t.integer "user_sets3"
    t.integer "user_reps3"
    t.integer "user_weight3"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.text "image"
  end

  create_table "workouts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "workout_name"
    t.string "exercise_name"
    t.integer "sets"
    t.integer "reps"
    t.integer "weight"
    t.integer "user_id"
    t.string "user_name"
    t.text "description"
    t.string "exercise_name2"
    t.integer "sets2"
    t.integer "reps2"
    t.integer "weight2"
    t.string "exercise_name3"
    t.integer "sets3"
    t.integer "reps3"
    t.integer "weight3"
  end

end
