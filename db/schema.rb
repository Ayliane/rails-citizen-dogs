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

ActiveRecord::Schema.define(version: 20170720103112) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.integer  "dog_walk_id"
    t.integer  "user_id"
    t.text     "content"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["dog_walk_id"], name: "index_comments_on_dog_walk_id", using: :btree
    t.index ["user_id"], name: "index_comments_on_user_id", using: :btree
  end

  create_table "dog_walks", force: :cascade do |t|
    t.date     "date"
    t.time     "hour"
    t.string   "title"
    t.text     "description"
    t.string   "meeting_point"
    t.integer  "available_spots"
    t.integer  "user_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["user_id"], name: "index_dog_walks_on_user_id", using: :btree
  end

  create_table "dogs", force: :cascade do |t|
    t.string   "name"
    t.string   "race"
    t.integer  "age"
    t.text     "description"
    t.string   "gender"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["user_id"], name: "index_dogs_on_user_id", using: :btree
  end

  create_table "inscriptions", force: :cascade do |t|
    t.integer  "dog_walk_id"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["dog_walk_id"], name: "index_inscriptions_on_dog_walk_id", using: :btree
    t.index ["user_id"], name: "index_inscriptions_on_user_id", using: :btree
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
    t.string   "first_name"
    t.string   "last_name"
    t.date     "birth_date"
    t.string   "pseudo"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "comments", "dog_walks"
  add_foreign_key "comments", "users"
  add_foreign_key "dog_walks", "users"
  add_foreign_key "dogs", "users"
  add_foreign_key "inscriptions", "dog_walks"
  add_foreign_key "inscriptions", "users"
end
