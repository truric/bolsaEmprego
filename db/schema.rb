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

ActiveRecord::Schema.define(version: 2021_12_22_160933) do

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.integer "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "candidates", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "industry"
    t.boolean "employed"
    t.string "grade"
    t.string "qualification"
    t.string "experience"
    t.string "address"
    t.string "phone"
    t.integer "fax"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "postal_code"
    t.string "location"
    t.string "id_card"
    t.datetime "dob"
    t.index ["user_id"], name: "index_candidates_on_user_id"
  end

  create_table "entities", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "industry"
    t.string "address"
    t.string "phone"
    t.integer "fax"
    t.string "website"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "postal_code"
    t.string "location"
    t.integer "tax_number"
    t.index ["user_id"], name: "index_entities_on_user_id"
  end

  create_table "job_offers", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "date"
    t.string "company"
    t.string "county"
    t.string "industry"
    t.string "contract"
    t.float "salary"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "entities_id"
    t.boolean "active"
    t.index ["entities_id"], name: "index_job_offers_on_entities_id"
  end

  create_table "news", force: :cascade do |t|
    t.string "title"
    t.datetime "date"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "summary"
    t.boolean "active"
    t.boolean "highlight"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "role"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
