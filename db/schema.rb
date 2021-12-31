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

ActiveRecord::Schema.define(version: 2021_12_29_181856) do

  create_table "guests", force: :cascade do |t|
    t.integer "reservation_id"
    t.string "first_name"
    t.string "last_name"
    t.integer "party_size"
    t.string "reason_for_stay"
  end

  create_table "hotels", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.integer "fireplaces"
    t.integer "rooms"
    t.integer "max_guests"
    t.boolean "has_modern_amenities"
    t.boolean "is_lakeside"
  end

  create_table "reservations", force: :cascade do |t|
    t.integer "hotel_id"
    t.integer "guest_id"
    t.integer "room_id"
    t.string "date_start"
    t.string "date_end"
  end

  create_table "rooms", force: :cascade do |t|
    t.integer "reservation_id"
    t.integer "floor_number"
    t.integer "num_of_beds"
    t.string "bed_size"
    t.boolean "has_ensuite"
  end

end
