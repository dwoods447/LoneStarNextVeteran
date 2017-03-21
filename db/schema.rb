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

ActiveRecord::Schema.define(version: 20170321023750) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "campuses", id: false, force: :cascade do |t|
    t.integer  "campus_id"
    t.string   "campus_name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["campus_id"], name: "index_campuses_on_campus_id", using: :btree
  end

  create_table "certifiers", id: false, force: :cascade do |t|
    t.integer  "certifier_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "benefit_assigned"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.boolean  "IsAvailable",      default: true
    t.string   "avatar"
    t.string   "letters_assigned"
    t.index ["certifier_id"], name: "index_certifiers_on_certifier_id", using: :btree
  end

  create_table "federal_benefits", id: false, force: :cascade do |t|
    t.integer  "federal_benefit_id"
    t.string   "benefit_name"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["federal_benefit_id"], name: "index_federal_benefits_on_federal_benefit_id", using: :btree
  end

  create_table "frequently_asked_questions", force: :cascade do |t|
    t.text     "question"
    t.text     "answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reason_for_visits", id: false, force: :cascade do |t|
    t.integer  "reason_for_visit_id"
    t.string   "visit_reason_name"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["reason_for_visit_id"], name: "index_reason_for_visits_on_reason_for_visit_id", using: :btree
  end

  create_table "state_benefits", id: false, force: :cascade do |t|
    t.integer  "state_benefit_id"
    t.string   "benefit_name"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["state_benefit_id"], name: "index_state_benefits_on_state_benefit_id", using: :btree
  end

  create_table "student_visits", force: :cascade do |t|
    t.integer  "student_id"
    t.integer  "certifier_id"
    t.boolean  "isSignedin",          default: true
    t.text     "service_requested"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.integer  "reason_for_visit_id"
    t.index ["certifier_id"], name: "index_student_visits_on_certifier_id", using: :btree
    t.index ["student_id"], name: "index_student_visits_on_student_id", using: :btree
  end

  create_table "students", id: false, force: :cascade do |t|
    t.integer  "student_id"
    t.integer  "campus_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone"
    t.string   "email"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "federal_benefit_id"
    t.integer  "state_benefit_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "username"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["username"], name: "index_users_on_username", using: :btree
  end

end
