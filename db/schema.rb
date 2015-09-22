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

ActiveRecord::Schema.define(version: 20150921030856) do

  create_table "cpu_arches", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "java_infos", force: :cascade do |t|
    t.integer  "osName_id"
    t.integer  "javaName_id"
    t.integer  "javaVersion_id"
    t.integer  "cpuArch_id"
    t.boolean  "supported"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "java_infos", ["cpuArch_id"], name: "index_java_infos_on_cpuArch_id"
  add_index "java_infos", ["javaName_id"], name: "index_java_infos_on_javaName_id"
  add_index "java_infos", ["javaVersion_id"], name: "index_java_infos_on_javaVersion_id"
  add_index "java_infos", ["osName_id"], name: "index_java_infos_on_osName_id"

  create_table "java_names", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "java_versions", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "os_names", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.string   "projectName"
    t.string   "userName"
    t.date     "startDate"
    t.date     "endDate"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "system_infos", force: :cascade do |t|
    t.string   "name"
    t.integer  "javaInfo_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "system_infos", ["javaInfo_id"], name: "index_system_infos_on_javaInfo_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",            null: false
    t.string   "crypted_password"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

  create_table "web_server_infos", force: :cascade do |t|
    t.string   "name"
    t.string   "version"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
