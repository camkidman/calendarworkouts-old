# encoding: UTF-8
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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130727234746) do

  create_table "body_parts", :force => true do |t|
    t.string   "name"
    t.string   "muscle_group"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "body_parts_exercises", :id => false, :force => true do |t|
    t.integer "body_part_id"
    t.integer "exercise_id"
  end

  add_index "body_parts_exercises", ["body_part_id", "exercise_id"], :name => "body_part_exercises_index"

  create_table "body_parts_muscle_groups", :id => false, :force => true do |t|
    t.integer "body_part_id"
    t.integer "muscle_group_id"
  end

  add_index "body_parts_muscle_groups", ["body_part_id", "muscle_group_id"], :name => "body_parts_muscle_group_index"

  create_table "exercises", :force => true do |t|
    t.string   "name"
    t.string   "movement_type"
    t.integer  "difficulty"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "muscle_group"
    t.string   "video_url"
    t.boolean  "gym_friendly"
  end

  create_table "exercises_muscle_groups", :id => false, :force => true do |t|
    t.integer "exercise_id"
    t.integer "muscle_group_id"
  end

  add_index "exercises_muscle_groups", ["exercise_id", "muscle_group_id"], :name => "exercisesmusclegroupsindex"

  create_table "exercises_workouts", :id => false, :force => true do |t|
    t.integer "exercise_id", :null => false
    t.integer "workout_id",  :null => false
  end

  add_index "exercises_workouts", ["exercise_id", "workout_id"], :name => "index_exercises_workouts_on_exercise_id_and_workout_id"

  create_table "muscle_groups", :force => true do |t|
    t.string   "name"
    t.string   "movement"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "personal_data", :force => true do |t|
    t.integer  "height"
    t.integer  "weight"
    t.integer  "age"
    t.string   "gender"
    t.string   "activity_level"
    t.integer  "user_id"
    t.integer  "bicep"
    t.integer  "waist"
    t.integer  "thighs"
    t.integer  "hips"
    t.integer  "chest"
    t.integer  "calves"
    t.integer  "shoulders"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.boolean  "gym"
  end

  create_table "personal_info", :force => true do |t|
    t.integer  "height"
    t.integer  "weight"
    t.integer  "age"
    t.string   "gender"
    t.string   "activity_level"
    t.integer  "user_id"
    t.integer  "bicep"
    t.integer  "waist"
    t.integer  "thighs"
    t.integer  "hips"
    t.integer  "chest"
    t.integer  "calves"
    t.integer  "shoulders"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "username"
    t.integer  "birthday"
    t.integer  "birthmonth"
    t.integer  "birthyear"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
    t.string   "email",                  :default => "",    :null => false
    t.string   "encrypted_password",     :default => "",    :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.boolean  "admin",                  :default => false
    t.boolean  "paid"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "versions", :force => true do |t|
    t.string   "item_type",  :null => false
    t.integer  "item_id",    :null => false
    t.string   "event",      :null => false
    t.string   "whodunnit"
    t.text     "object"
    t.datetime "created_at"
  end

  add_index "versions", ["item_type", "item_id"], :name => "index_versions_on_item_type_and_item_id"

  create_table "workouts", :force => true do |t|
    t.string   "name"
    t.integer  "exercise_id"
    t.integer  "body_part_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

end
