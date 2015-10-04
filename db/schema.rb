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

ActiveRecord::Schema.define(version: 20151004124259) do

  create_table "ap_server_infos", force: :cascade do |t|
    t.integer  "ap_server_name_master_id"
    t.integer  "ap_server_version_master_id"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "ap_server_infos", ["ap_server_name_master_id"], name: "index_ap_server_infos_on_ap_server_name_master_id"
  add_index "ap_server_infos", ["ap_server_version_master_id"], name: "index_ap_server_infos_on_ap_server_version_master_id"

  create_table "ap_server_name_masters", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ap_server_version_masters", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "department_masters", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "group_masters", force: :cascade do |t|
    t.string   "name"
    t.integer  "department_master_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "group_masters", ["department_master_id"], name: "index_group_masters_on_department_master_id"

  create_table "java_arch_masters", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "java_infos", force: :cascade do |t|
    t.integer  "java_name_master_id"
    t.integer  "java_arch_master_id"
    t.integer  "java_version_master_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "java_infos", ["java_arch_master_id"], name: "index_java_infos_on_java_arch_master_id"
  add_index "java_infos", ["java_name_master_id"], name: "index_java_infos_on_java_name_master_id"
  add_index "java_infos", ["java_version_master_id"], name: "index_java_infos_on_java_version_master_id"

  create_table "java_name_masters", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "java_version_masters", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "os_arch_masters", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "os_infos", force: :cascade do |t|
    t.integer  "os_name_master_id"
    t.integer  "os_arch_master_id"
    t.integer  "os_version_master_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "os_infos", ["os_arch_master_id"], name: "index_os_infos_on_os_arch_master_id"
  add_index "os_infos", ["os_name_master_id"], name: "index_os_infos_on_os_name_master_id"
  add_index "os_infos", ["os_version_master_id"], name: "index_os_infos_on_os_version_master_id"

  create_table "os_name_masters", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "os_version_masters", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "project_infos", force: :cascade do |t|
    t.string   "name"
    t.string   "number"
    t.integer  "group_master_id"
    t.integer  "system_info_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "project_infos", ["group_master_id"], name: "index_project_infos_on_group_master_id"
  add_index "project_infos", ["system_info_id"], name: "index_project_infos_on_system_info_id"

  create_table "reservations", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "project_info_id"
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "reservations", ["project_info_id"], name: "index_reservations_on_project_info_id"
  add_index "reservations", ["user_id"], name: "index_reservations_on_user_id"

  create_table "system_info_views", force: :cascade do |t|
    t.string   "name"
    t.string   "number"
    t.integer  "os_info_id"
    t.integer  "java_info_id"
    t.integer  "ap_server_info_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "system_info_views", ["ap_server_info_id"], name: "index_system_info_views_on_ap_server_info_id"
  add_index "system_info_views", ["java_info_id"], name: "index_system_info_views_on_java_info_id"
  add_index "system_info_views", ["os_info_id"], name: "index_system_info_views_on_os_info_id"

  create_table "system_infos", force: :cascade do |t|
    t.string   "name"
    t.string   "number"
    t.integer  "system_requirement_info_id"
    t.integer  "ap_server_info_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "system_infos", ["ap_server_info_id"], name: "index_system_infos_on_ap_server_info_id"
  add_index "system_infos", ["system_requirement_info_id"], name: "index_system_infos_on_system_requirement_info_id"

  create_table "system_requirement_infos", force: :cascade do |t|
    t.integer  "os_info_id"
    t.integer  "java_info_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "system_requirement_infos", ["java_info_id"], name: "index_system_requirement_infos_on_java_info_id"
  add_index "system_requirement_infos", ["os_info_id"], name: "index_system_requirement_infos_on_os_info_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
