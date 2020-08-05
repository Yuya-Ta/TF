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

ActiveRecord::Schema.define(version: 2020_07_31_091953) do

  create_table "likes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "to_id"
  end

  create_table "posts", force: :cascade do |t|
    t.text "good_content"
    t.integer "user_id"
    t.integer "workbook_id"
    t.integer "satisfaction"
    t.integer "detail"
    t.integer "volume"
    t.integer "ease"
    t.integer "difficulty"
    t.integer "period"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "bad_content"
    t.integer "points"
    t.integer "counts"
    t.date "start_date"
    t.date "finish_date"
  end

  create_table "scores", force: :cascade do |t|
    t.integer "user_id"
    t.integer "points_l"
    t.integer "points_r"
    t.date "month"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "points_sum"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_name"
    t.string "profession"
    t.string "gender"
    t.integer "age"
    t.date "start_date"
    t.text "profile"
  end

  create_table "workbooks", force: :cascade do |t|
    t.string "product"
    t.string "author"
    t.string "image"
    t.text "link"
    t.integer "all"
    t.integer "listening"
    t.integer "word"
    t.integer "grammer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "reading"
  end

end
