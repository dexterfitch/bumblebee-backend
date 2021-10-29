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

ActiveRecord::Schema.define(version: 2021_10_26_171337) do

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.string "description"
  end

  create_table "category_palettes", force: :cascade do |t|
    t.integer "category_id"
    t.integer "palette_id"
  end

  create_table "palettes", force: :cascade do |t|
    t.string "title"
    t.string "username"
    t.string "color1"
    t.string "color2"
    t.string "color3"
    t.string "color4"
    t.string "color5"
    t.string "url"
    t.string "image"
  end

end
