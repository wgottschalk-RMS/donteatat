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

ActiveRecord::Schema.define(version: 20140503201946) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "delayed_jobs", force: true do |t|
    t.integer  "priority",   default: 0, null: false
    t.integer  "attempts",   default: 0, null: false
    t.text     "handler",                null: false
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "delayed_jobs", ["priority", "run_at"], name: "delayed_jobs_priority", using: :btree

  create_table "inspections", force: true do |t|
    t.string   "camis"
    t.string   "dba"
    t.string   "borough"
    t.string   "building"
    t.string   "street"
    t.string   "zip_code"
    t.string   "phone"
    t.datetime "date"
    t.integer  "score"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "standardized_address"
  end

  add_index "inspections", ["camis"], name: "index_inspections_on_camis", using: :btree

  create_table "users", force: true do |t|
    t.string   "access_token"
    t.string   "foursquare_id"
    t.string   "phone_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
