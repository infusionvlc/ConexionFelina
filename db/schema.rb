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

ActiveRecord::Schema.define(version: 2019_05_13_134308) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "adoptions", force: :cascade do |t|
    t.date "date"
    t.integer "user_id"
    t.integer "cat_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "assignments", force: :cascade do |t|
    t.integer "colony_id"
    t.integer "task_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cats", force: :cascade do |t|
    t.string "name"
    t.text "bio"
    t.text "avatar"
    t.date "birthday_date"
    t.integer "gender"
    t.integer "sterilized"
    t.date "abandoned_date"
    t.string "document"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "colony_id"
    t.string "saved_state"
  end

  create_table "colonies", force: :cascade do |t|
    t.string "name"
    t.text "bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "location_id"
    t.string "location"
  end

  create_table "colonies_users", force: :cascade do |t|
    t.integer "user_id"
    t.integer "colony_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "donations", force: :cascade do |t|
    t.integer "amount"
    t.date "date"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "illnesses", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "priority"
    t.text "treatment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posessions", force: :cascade do |t|
    t.date "date"
    t.integer "user_id"
    t.integer "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.integer "stock"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sponsorship", force: :cascade do |t|
    t.date "start_date"
    t.date "last_payment_date"
    t.integer "amount"
    t.boolean "renovate"
    t.integer "user_id"
    t.integer "cat_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sufferings", force: :cascade do |t|
    t.date "diagnosis_date"
    t.text "notes"
    t.boolean "chronic"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "cat_id"
    t.integer "illness_id"
    t.datetime "dischargement_date"
  end

  create_table "tasks", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "treatment_entries", force: :cascade do |t|
    t.date "date"
    t.integer "treatment"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "suffering_id"
  end

  create_table "turns", force: :cascade do |t|
    t.date "start_date"
    t.date "end_date"
    t.integer "assignment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "turns_users", force: :cascade do |t|
    t.integer "user_id"
    t.integer "turn_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.integer "role"
    t.text "bio"
    t.string "avatar"
    t.integer "purrs"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
