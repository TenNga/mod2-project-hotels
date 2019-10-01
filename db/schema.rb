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

ActiveRecord::Schema.define(version: 2019_10_01_171900) do

  create_table "bookings", force: :cascade do |t|
    t.string "check_in_date"
    t.string "check_out_date"
    t.integer "number_of_guest"
    t.string "booking_date"
    t.integer "cost"
    t.integer "guest_id", null: false
    t.integer "room_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["guest_id"], name: "index_bookings_on_guest_id"
    t.index ["room_id"], name: "index_bookings_on_room_id"
  end

  create_table "guests", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_digest"
  end

  create_table "hotels", force: :cascade do |t|
    t.string "image"
    t.string "name"
    t.string "city"
    t.string "country"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "star"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "title"
    t.integer "star"
    t.string "content"
    t.integer "hotel_id", null: false
    t.integer "guest_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["guest_id"], name: "index_reviews_on_guest_id"
    t.index ["hotel_id"], name: "index_reviews_on_hotel_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.string "image"
    t.string "room_type"
    t.integer "rate"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "hotel_id"
  end

  add_foreign_key "bookings", "guests"
  add_foreign_key "bookings", "rooms"
  add_foreign_key "reviews", "guests"
  add_foreign_key "reviews", "hotels"
end
