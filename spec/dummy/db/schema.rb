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

ActiveRecord::Schema.define(version: 20140610093243) do

  create_table "document_numbers", force: true do |t|
    t.string   "document"
    t.integer  "number",     null: false, default: 1
    t.datetime "created_at"
  end

  add_index "document_numbers", ["document"], name: "index_document_numbers_on_document", unique: true

  create_table "inventories", force: true do |t|
    t.string   "number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "invoices", force: true do |t|
    t.string   "number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "price_adjustments", force: true do |t|
    t.string   "document_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
