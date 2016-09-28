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

ActiveRecord::Schema.define(version: 20160928030145) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "conferences", force: :cascade do |t|
    t.string   "name",                      null: false
    t.boolean  "power_five", default: true
    t.boolean  "fbs",        default: true
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "drives", force: :cascade do |t|
    t.integer  "game_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "formations", force: :cascade do |t|
    t.string   "name",                             null: false
    t.integer  "receivers",                        null: false
    t.integer  "tight_ends",                       null: false
    t.integer  "running_backs",                    null: false
    t.boolean  "shotgun",           default: true
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.boolean  "has_run_strength",  default: true
    t.boolean  "has_pass_strength", default: true
    t.boolean  "strengths_match",   default: true
  end

  create_table "games", force: :cascade do |t|
    t.integer  "opponent_id",                null: false
    t.boolean  "home",        default: true
    t.date     "date",                       null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "season_id",                  null: false
  end

  create_table "opponents", force: :cascade do |t|
    t.string   "name",          null: false
    t.integer  "conference_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "pass_concepts", force: :cascade do |t|
    t.string   "name",        null: false
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "pass_plays", force: :cascade do |t|
    t.integer  "play_id",                         null: false
    t.integer  "pass_concept_id",                 null: false
    t.integer  "receiver_id"
    t.boolean  "thrown",          default: true
    t.boolean  "complete",        default: false
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "players", force: :cascade do |t|
    t.string   "first_name", null: false
    t.string   "last_name",  null: false
    t.string   "position",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plays", force: :cascade do |t|
    t.integer  "quarter",            null: false
    t.string   "time",               null: false
    t.integer  "line_of_scrimmage",  null: false
    t.integer  "down",               null: false
    t.string   "hash_mark",          null: false
    t.integer  "gain",               null: false
    t.text     "notes"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "distance",           null: false
    t.integer  "formation_id",       null: false
    t.integer  "drive_id",           null: false
    t.integer  "quarterback_id",     null: false
    t.string   "formation_strength"
  end

  create_table "run_plays", force: :cascade do |t|
    t.integer  "play_id"
    t.integer  "run_id"
    t.integer  "ballcarrier_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "direction",      null: false
  end

  create_table "runs", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "seasons", force: :cascade do |t|
    t.integer  "year",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
