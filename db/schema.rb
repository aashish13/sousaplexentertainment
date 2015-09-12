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

ActiveRecord::Schema.define(version: 20150907012622) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "posters", force: :cascade do |t|
    t.string   "poster_name"
    t.string   "poster_link"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "posters_projects", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "project_id"
    t.integer  "poster_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string   "movie_title"
    t.string   "movie_logline"
    t.string   "movie_synopsis"
    t.integer  "movie_budget_start"
    t.integer  "movie_budget_end"
    t.float    "funding_level"
    t.string   "poster_url"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "projects_talents", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "project_id"
    t.integer  "talent_id"
  end

  create_table "talents", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "status"
    t.string   "talent_type"
    t.boolean  "main_team"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "user_viewable_projects", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.integer  "project_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "password"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.boolean  "admin",                  default: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
