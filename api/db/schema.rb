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

ActiveRecord::Schema.define(version: 2021_09_16_053314) do

  create_table "employee_auths", charset: "utf8mb4", force: :cascade do |t|
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "jti", null: false
    t.string "employee_login_id", null: false
    t.index ["employee_login_id"], name: "index_employee_auths_on_employee_login_id", unique: true
    t.index ["jti"], name: "index_employee_auths_on_jti", unique: true
    t.index ["reset_password_token"], name: "index_employee_auths_on_reset_password_token", unique: true
  end

  create_table "employees", charset: "utf8mb4", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.bigint "store_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "employee_auth_id"
    t.index ["employee_auth_id"], name: "index_employees_on_employee_auth_id"
    t.index ["store_id"], name: "index_employees_on_store_id"
  end

  create_table "messages", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "store_id", null: false
    t.bigint "employee_id", null: false
    t.text "message_text"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["employee_id"], name: "index_messages_on_employee_id"
    t.index ["store_id"], name: "index_messages_on_store_id"
  end

  create_table "store_auths", charset: "utf8mb4", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "jti", null: false
    t.index ["email"], name: "index_store_auths_on_email", unique: true
    t.index ["jti"], name: "index_store_auths_on_jti", unique: true
    t.index ["reset_password_token"], name: "index_store_auths_on_reset_password_token", unique: true
  end

  create_table "stores", charset: "utf8mb4", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "employees", "employee_auths"
  add_foreign_key "employees", "stores"
  add_foreign_key "messages", "employees"
  add_foreign_key "messages", "stores"
end
