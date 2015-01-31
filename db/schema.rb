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

ActiveRecord::Schema.define(version: 20150131233018) do

  create_table "gamers", force: :cascade do |t|
    t.string   "user_name"
    t.string   "player_interaction"
    t.string   "bluffing"
    t.string   "quick_set_up"
    t.string   "secret_info"
    t.string   "chance"
    t.string   "card_based"
    t.string   "two_player"
    t.string   "theme"
    t.string   "heavy_reading"
    t.string   "kid_friendly"
    t.string   "requires_acting"
    t.string   "random_starting_state"
    t.string   "asymmetric"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
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
  end

  add_index "gamers", ["email"], name: "index_gamers_on_email", unique: true
  add_index "gamers", ["reset_password_token"], name: "index_gamers_on_reset_password_token", unique: true

  create_table "games", force: :cascade do |t|
    t.string   "name"
    t.string   "player_interaction"
    t.string   "bluffing"
    t.string   "quick_set_up"
    t.string   "secret_info"
    t.string   "chance"
    t.string   "card_based"
    t.string   "two_player"
    t.string   "theme"
    t.string   "heavy_reading"
    t.string   "kid_friendly"
    t.string   "requires_acting"
    t.string   "random_starting_state"
    t.string   "asymmetric"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end
end
