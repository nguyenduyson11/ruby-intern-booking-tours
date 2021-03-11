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

ActiveRecord::Schema.define(version: 2021_03_09_093713) do

  create_table "book_tours", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "tour_id", null: false
    t.integer "quantity"
    t.datetime "start_date"
    t.datetime "end_date"
    t.string "customer_name"
    t.string "phone_number"
    t.string "email"
    t.integer "status", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["tour_id"], name: "index_book_tours_on_tour_id"
    t.index ["user_id"], name: "index_book_tours_on_user_id"
  end

  create_table "reviews", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "tour_id", null: false
    t.text "content"
    t.integer "like"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["tour_id"], name: "index_reviews_on_tour_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "tour_types", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.integer "deleted", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tours", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "title"
    t.integer "tour_type_id"
    t.string "location"
    t.float "price"
    t.integer "day"
    t.integer "person"
    t.string "image"
    t.text "description"
    t.integer "quatity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone_number"
    t.string "password_digest"
    t.string "remember_digest"
    t.string "image"
    t.datetime "birthday"
    t.integer "role", default: 0
    t.integer "deleted", default: 0
    t.boolean "activated", default: false
    t.datetime "activated_at"
    t.string "activation_digest"
    t.string "reset_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "book_tours", "tours"
  add_foreign_key "book_tours", "users"
  add_foreign_key "reviews", "tours"
  add_foreign_key "reviews", "users"
end
