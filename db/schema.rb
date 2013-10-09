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

ActiveRecord::Schema.define(version: 20131009114550) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: true do |t|
    t.string "name"
    t.string "logo"
    t.string "url"
  end

  create_table "officials", force: true do |t|
    t.string "size"
    t.string "name"
    t.string "email"
  end

  create_table "officials_roles", id: false, force: true do |t|
    t.integer "official_id", null: false
    t.integer "role_id",     null: false
  end

  add_index "officials_roles", ["official_id", "role_id"], name: "index_officials_roles_on_official_id_and_role_id", using: :btree
  add_index "officials_roles", ["role_id", "official_id"], name: "index_officials_roles_on_role_id_and_official_id", unique: true, using: :btree

  create_table "roles", force: true do |t|
    t.string "name"
    t.text   "body"
  end

end
