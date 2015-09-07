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

  create_table "posters", force: :cascade do |t|
    t.string   "movie_title",        limit: 255
    t.string   "movie_logline",      limit: 255
    t.string   "movie_synopsis",     limit: 255
    t.integer  "movie_budget_start", limit: 4
    t.integer  "movie_budget_end",   limit: 4
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "project_posters", force: :cascade do |t|
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "project_id", limit: 4
    t.integer  "poster_id",  limit: 4
  end

  create_table "project_talents", force: :cascade do |t|
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "project_id", limit: 4
    t.integer  "talent_id",  limit: 4
  end

  create_table "projects", force: :cascade do |t|
    t.string   "movie_title",        limit: 255
    t.string   "movie_logline",      limit: 255
    t.string   "movie_synopsis",     limit: 255
    t.string   "movie_budget_start", limit: 255
    t.string   "movie_budget_end",   limit: 255
    t.float    "funding_level",      limit: 24
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "talents", force: :cascade do |t|
    t.string   "first_name",  limit: 255
    t.string   "last_name",   limit: 255
    t.string   "status",      limit: 255
    t.string   "talent_type", limit: 255
    t.boolean  "main_team"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "user_viewable_projects", force: :cascade do |t|
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "user_id",    limit: 4
    t.integer  "project_id", limit: 4
  end

  create_table "users", force: :cascade do |t|
    t.string   "username",               limit: 255
    t.string   "password",               limit: 255
    t.string   "first_name",             limit: 255
    t.string   "last_name",              limit: 255
    t.string   "email",                  limit: 255
    t.string   "user_type",              limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
