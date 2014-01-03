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

ActiveRecord::Schema.define(version: 20130727080728) do

  create_table "causes", force: true do |t|
    t.string   "name"
    t.string   "describtion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", force: true do |t|
    t.integer  "user_id"
    t.integer  "mobile_no"
    t.string   "title"
    t.date     "date"
    t.string   "description"
    t.string   "message"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "invetations", force: true do |t|
    t.string   "user_id"
    t.string   "event_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mycontacts", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "phone_no"
    t.integer  "user_id"
    t.string   "message"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "organizations", force: true do |t|
    t.integer  "event_id"
    t.integer  "org_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "organizations", ["event_id", "created_at"], name: "index_organizations_on_event_id_and_created_at", using: :btree
  add_index "organizations", ["org_id", "created_at"], name: "index_organizations_on_org_id_and_created_at", using: :btree

  create_table "orgs", force: true do |t|
    t.string   "name"
    t.string   "describtion"
    t.integer  "cause_id"
    t.string   "contact_person"
    t.integer  "phone_no"
    t.boolean  "status"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "website"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "state"
    t.string   "country"
    t.string   "address_1"
    t.string   "address_2"
    t.integer  "mobile_no"
    t.boolean  "admin"
    t.boolean  "up_comming_event"
    t.boolean  "invitation"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
