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

ActiveRecord::Schema.define(version: 20151022012903) do

  create_table "admin_tables", force: true do |t|
    t.string   "adminId"
    t.string   "holderId"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "answer_requirement_qs", force: true do |t|
    t.integer  "answer1"
    t.integer  "answer2"
    t.integer  "answer3"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "answers", force: true do |t|
    t.integer  "answer1"
    t.integer  "answer2"
    t.integer  "answer3"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "leader_tables", force: true do |t|
    t.string   "leaderId"
    t.string   "holderId"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "leaders", force: true do |t|
    t.integer  "project_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mult_choice_questions", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", force: true do |t|
    t.string   "project_title"
    t.integer  "project_id"
    t.text     "description"
    t.string   "url"
    t.string   "creater_id"
    t.integer  "answer1"
    t.integer  "answer2"
    t.integer  "answer3"
    t.integer  "answer4"
    t.integer  "answer5"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects_users", id: false, force: true do |t|
    t.integer "project_id"
    t.integer "user_id"
  end

  create_table "requirement_qs", force: true do |t|
    t.string   "question1"
    t.integer  "score1P1"
    t.integer  "score2P1"
    t.integer  "score3P1"
    t.integer  "score4P1"
    t.integer  "score1P2"
    t.integer  "score2P2"
    t.integer  "score3P2"
    t.integer  "score4P2"
    t.integer  "score1P3"
    t.integer  "score2P3"
    t.integer  "score3P3"
    t.integer  "score4P3"
    t.integer  "score1P4"
    t.integer  "score2P4"
    t.integer  "score3P4"
    t.integer  "score4P4"
    t.integer  "score1P5"
    t.integer  "score2P5"
    t.integer  "score3P5"
    t.integer  "score4P5"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "true_false_questions", force: true do |t|
    t.string   "question"
    t.integer  "answer"
    t.integer  "YesP1"
    t.integer  "YesP2"
    t.integer  "YesP3"
    t.integer  "YesP4"
    t.integer  "YesP5"
    t.integer  "YesP6"
    t.integer  "NoP1"
    t.integer  "NoP2"
    t.integer  "NoP3"
    t.integer  "NoP4"
    t.integer  "NoP5"
    t.integer  "NoP6"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.boolean  "admin",                  default: false
    t.string   "name"
    t.integer  "age"
    t.string   "gender"
    t.string   "role"
    t.string   "emailSecondary"
    t.string   "phoneNumber"
    t.string   "phoneNumberSecondary"
    t.string   "company"
    t.string   "project"
    t.string   "inputId"
    t.string   "specialty"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "versions", force: true do |t|
    t.integer  "uploader_id"
    t.text     "notes"
    t.integer  "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "versions", ["project_id"], name: "index_versions_on_project_id"

end
