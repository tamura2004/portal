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

ActiveRecord::Schema.define(version: 20151023073607) do

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
    t.string   "version",    null: false
    t.string   "bit",        null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "os", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "version",    null: false
    t.string   "edition"
    t.string   "cpu",        null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reserves", force: :cascade do |t|
    t.integer  "system_id"
    t.date     "date",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "reserves", ["system_id"], name: "index_reserves_on_system_id"

  create_table "systems", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "number"
    t.integer  "os_id"
    t.integer  "java_id"
    t.integer  "ap_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "systems", ["ap_id"], name: "index_systems_on_ap_id"
  add_index "systems", ["java_id"], name: "index_systems_on_java_id"
  add_index "systems", ["os_id"], name: "index_systems_on_os_id"

  create_table "users", force: :cascade do |t|
    t.string   "name",            null: false
    t.string   "email",           null: false
    t.integer  "group_id"
    t.string   "hashed_password"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "users", ["group_id"], name: "index_users_on_group_id"

end
