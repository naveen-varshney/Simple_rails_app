# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20170127122617) do

  create_table "empes", force: :cascade do |t|
    t.integer  "e_id"
    t.string   "name"
    t.integer  "exp"
    t.date     "join_date"
    t.boolean  "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string   "e_id"
    t.string   "name"
    t.string   "exp"
    t.date     "join_date"
    t.boolean  "status",     default: true
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "name"
    t.string   "age"
    t.string   "course"
    t.string   "sub_name"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.date     "dob"
    t.boolean  "status",     default: true
  end

  create_table "subjects", force: :cascade do |t|
    t.integer  "student_id"
    t.string   "sub_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "subjects", ["student_id"], name: "index_subjects_on_student_id"

end
