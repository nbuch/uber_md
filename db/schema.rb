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

ActiveRecord::Schema.define(version: 20170702043219) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string   "line_one"
    t.string   "line_two"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string   "name"
    t.string   "mpi"
    t.date     "dob"
    t.string   "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "address_id"
  end

  create_table "providers", force: :cascade do |t|
    t.string   "name"
    t.string   "specialty"
    t.string   "npi"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "address_id"
  end

  create_table "shifts", force: :cascade do |t|
    t.time     "start_time"
    t.time     "end_time"
    t.date     "date"
    t.integer  "provider_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["provider_id"], name: "index_shifts_on_provider_id", using: :btree
  end

  create_table "visits", force: :cascade do |t|
    t.integer  "provider_id"
    t.integer  "patient_id"
    t.integer  "address_id"
    t.datetime "date"
    t.integer  "duration"
    t.text     "reason"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["address_id"], name: "index_visits_on_address_id", using: :btree
    t.index ["patient_id"], name: "index_visits_on_patient_id", using: :btree
    t.index ["provider_id"], name: "index_visits_on_provider_id", using: :btree
  end

  add_foreign_key "shifts", "providers"
  add_foreign_key "visits", "addresses"
  add_foreign_key "visits", "patients"
  add_foreign_key "visits", "providers"
end
