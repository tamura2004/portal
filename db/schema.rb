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

ActiveRecord::Schema.define(version: 20151029063720) do

  create_table "depts", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dynas", force: :cascade do |t|
    t.integer  "os_id"
    t.integer  "java_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "dynas", ["java_id"], name: "index_dynas_on_java_id"
  add_index "dynas", ["os_id"], name: "index_dynas_on_os_id"

  create_table "groups", force: :cascade do |t|
    t.string   "name",       null: false
    t.integer  "dept_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "groups", ["dept_id"], name: "index_groups_on_dept_id"

  create_table "javas", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "version"
    t.string   "bit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "os", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "version"
    t.string   "edition"
    t.string   "cpu"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.integer  "system_id"
    t.integer  "user_id"
    t.string   "month",      null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "reservations", ["system_id"], name: "index_reservations_on_system_id"
  add_index "reservations", ["user_id"], name: "index_reservations_on_user_id"

  create_table "systems", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "number"
    t.integer  "group_id"
    t.integer  "os_id"
    t.integer  "java_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "systems", ["group_id"], name: "index_systems_on_group_id"
  add_index "systems", ["java_id"], name: "index_systems_on_java_id"
  add_index "systems", ["os_id"], name: "index_systems_on_os_id"

  create_table "users", force: :cascade do |t|
    t.integer  "group_id"
    t.string   "email",                            null: false
    t.string   "email_for_index",                  null: false
    t.string   "family_name",                      null: false
    t.string   "given_name",                       null: false
    t.string   "family_name_kana",                 null: false
    t.string   "given_name_kana",                  null: false
    t.string   "hashed_password"
    t.boolean  "suspended",        default: false, null: false
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  add_index "users", ["email_for_index"], name: "index_users_on_email_for_index", unique: true
  add_index "users", ["family_name_kana", "given_name_kana"], name: "index_users_on_family_name_kana_and_given_name_kana"
  add_index "users", ["group_id"], name: "index_users_on_group_id"

end
