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

ActiveRecord::Schema.define(version: 20170405053325) do

  create_table "players", force: :cascade do |t|
    t.string   "name"
    t.string   "team"
    t.string   "shoots"
    t.string   "catches"
    t.string   "position"
    t.integer  "number"
    t.integer  "gp"
    t.integer  "goals"
    t.integer  "assists"
    t.integer  "points"
    t.integer  "pim"
    t.integer  "plusMinus"
    t.integer  "gaa"
    t.integer  "svs"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schedules", force: :cascade do |t|
    t.string   "leagueGame"
    t.string   "home"
    t.string   "away"
    t.string   "venue"
    t.string   "date"
    t.string   "homeLogo"
    t.string   "awayLogo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
