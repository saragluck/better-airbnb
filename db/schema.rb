ActiveRecord::Schema[7.0].define(version: 2022_11_23_180255) do
ActiveRecord::Schema[7.0].define(version: 2022_11_23_180248) do
  enable_extension "plpgsql"

  create_table "reservations", force: :cascade do |t|
    t.integer "user_id"
    t.integer "room_id"
    t.string "start_date"
    t.string "end_date"
    t.decimal "price"
    t.decimal "total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "days"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "reservation_id"
    t.decimal "rating"
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "room_images", force: :cascade do |t|
    t.integer "room_id"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.integer "user_id"
    t.string "address"
    t.string "city"
    t.string "state"
    t.decimal "price"
    t.text "description"
    t.string "home_type"
    t.string "room_type"
    t.integer "total_occupancy"
    t.integer "total_bedrooms"
    t.decimal "total_bathrooms"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
