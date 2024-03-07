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

ActiveRecord::Schema[7.1].define(version: 2024_03_07_041031) do
  create_table "murojaahs", force: :cascade do |t|
    t.string "LU"
    t.string "LL"
    t.string "LW"
    t.string "ST"
    t.string "SQ"
    t.string "SH"
    t.string "ZT"
    t.string "ZQ"
    t.string "ZB"
    t.string "AT"
    t.string "AA"
    t.string "MT"
    t.string "MA"
    t.string "MB"
    t.string "IT"
    t.string "IA"
    t.string "IB"
    t.integer "total_rakaat"
    t.integer "total_page"
    t.integer "no_surah"
    t.integer "grade"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_murojaahs_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "name", null: false
    t.integer "age", null: false
    t.string "education", null: false
    t.string "job", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "role", default: "USER"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
