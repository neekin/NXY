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

ActiveRecord::Schema.define(version: 20160331091045) do

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
    t.float    "weight"
    t.float    "volume"
    t.string   "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "line_id"
  end

  create_table "consignors", force: :cascade do |t|
    t.string   "name"
    t.string   "phone"
    t.integer  "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "line_id"
  end

  create_table "costrules", force: :cascade do |t|
    t.integer  "consignee_id"
    t.integer  "volumePrice"
    t.integer  "weightPrice"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "departs", force: :cascade do |t|
    t.date     "departureTime"
    t.integer  "line_id"
    t.boolean  "status"
    t.integer  "truck_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "company_id"
  end

  create_table "lines", force: :cascade do |t|
    t.string   "place"
    t.string   "destination"
    t.integer  "company_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "prefix"
  end

  create_table "paymentmethods", force: :cascade do |t|
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
    t.integer  "line_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "loginname"
    t.string   "password_digest"
    t.string   "auth_token"
    t.boolean  "isresponsible"
    t.integer  "company_id"
    t.string   "phone"
    t.string   "hasline"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "waybillorders", force: :cascade do |t|
    t.string   "orderNum"
    t.string   "googsName1"
    t.string   "googdName2"
    t.string   "goodsName3"
    t.integer  "number1"
    t.integer  "number2"
    t.integer  "number3"
    t.float    "weight1"
    t.float    "weight2"
    t.float    "weight3"
    t.float    "volume1"
    t.float    "volume2"
    t.float    "volume3"
    t.integer  "freightCost"
    t.integer  "insuranceCost"
    t.integer  "packingCost"
    t.integer  "deliverCost"
    t.integer  "acceptCost"
    t.boolean  "isTransfer"
    t.integer  "transferCost"
    t.string   "transferDestintion"
    t.integer  "otherCost"
    t.integer  "total"
    t.integer  "consignor_id"
    t.integer  "consignee_id"
    t.integer  "proxycollection"
    t.integer  "depart_id"
    t.integer  "company_id"
    t.integer  "user_id"
    t.integer  "paymentmethod_id"
    t.integer  "line_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "ThatValue"
    t.boolean  "waitnotice"
  end

end
