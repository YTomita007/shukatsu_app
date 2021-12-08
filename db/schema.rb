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

ActiveRecord::Schema.define(version: 2021_12_08_071821) do

  create_table "admins", id: { type: :string, limit: 36 }, charset: "utf8mb4", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "classrooms", id: { type: :string, limit: 36 }, charset: "utf8mb4", force: :cascade do |t|
    t.bigint "major_id"
    t.integer "number", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["major_id"], name: "index_classrooms_on_major_id"
  end

  create_table "companies", id: { type: :string, limit: 36 }, charset: "utf8mb4", force: :cascade do |t|
    t.string "name", null: false
    t.string "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "majors", id: { type: :string, limit: 36 }, charset: "utf8mb4", force: :cascade do |t|
    t.bigint "school_id"
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["school_id"], name: "index_majors_on_school_id"
  end

  create_table "offers", id: { type: :string, limit: 36 }, charset: "utf8mb4", force: :cascade do |t|
    t.bigint "company_id"
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["company_id"], name: "index_offers_on_company_id"
  end

  create_table "schools", id: { type: :string, limit: 36 }, charset: "utf8mb4", force: :cascade do |t|
    t.string "name", null: false
    t.string "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "students", id: { type: :string, limit: 36 }, charset: "utf8mb4", force: :cascade do |t|
    t.bigint "classroom_id"
    t.string "name", null: false
    t.string "email", null: false
    t.integer "number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["classroom_id"], name: "index_students_on_classroom_id"
  end

end
