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

ActiveRecord::Schema.define(version: 20160307001629) do

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.string   "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "consignees", force: :cascade do |t|
    t.string   "name"
    t.string   "phone"
    t.integer  "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "consignors", force: :cascade do |t|
    t.string   "name"
    t.string   "phone"
    t.integer  "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "departs", force: :cascade do |t|
    t.date     "departureTime"
    t.integer  "destination_id"
    t.integer  "place_id"
    t.boolean  "status"
    t.integer  "truck_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "destinations", force: :cascade do |t|
    t.string   "name"
    t.integer  "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "paymentmethods", force: :cascade do |t|
    t.string   "name"
    t.integer  "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "places", force: :cascade do |t|
    t.string   "name"
    t.integer  "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trucks", force: :cascade do |t|
    t.string   "driver"
    t.string   "phone"
    t.string   "licensePlateNumber"
    t.integer  "company_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "loginname"
    t.string   "password_digest"
    t.string   "auth_token"
    t.integer  "company_id"
    t.string   "phone"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "waybillorders", force: :cascade do |t|
    t.string   "ordernum"
    t.string   "goodsname"
    t.integer  "number"
    t.float    "weight"
    t.float    "volume"
    t.integer  "freightCost"
    t.integer  "goodsPrice"
    t.integer  "insuranceCost"
    t.integer  "packingCost"
    t.integer  "deliverCost"
    t.integer  "acceptCost"
    t.boolean  "isTransfer"
    t.integer  "transferCost"
    t.integer  "total"
    t.integer  "place_id"
    t.integer  "destination_id"
    t.integer  "consignor_id"
    t.integer  "consignee_id"
    t.integer  "proxycollection"
    t.integer  "truck_id"
    t.integer  "company_id"
    t.integer  "user_id"
    t.integer  "paymentmethod_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

end
