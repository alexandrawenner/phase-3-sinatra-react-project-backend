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

ActiveRecord::Schema.define(version: 2022_07_11_020411) do

  create_table "films", force: :cascade do |t|
    t.string "title"
    t.integer "year"
    t.integer "runtime"
    t.integer "rotten_tomatoes_score"
    t.string "director"
    t.string "starring"
    t.string "synopsis"
    t.string "critics_consensus"
    t.string "image_url"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "review_body"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "film_id"
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
  end

end
