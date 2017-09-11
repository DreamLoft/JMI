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

ActiveRecord::Schema.define(version: 20170908101701) do

  create_table "brands", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.string "brand_name"
    t.string "brand_contact_number"
    t.string "brand_bussiness_type"
    t.string "brand_size"
    t.decimal "brand_establishment_year"
    t.text "brand_address_line1"
    t.text "brand_address_line2"
    t.string "brand_address_city"
    t.string "brand_address_state"
    t.string "brand_address_pincode"
    t.string "brand_description"
    t.text "brand_keywords"
    t.string "brand_landline_number"
    t.string "brand_contact_person_name"
    t.string "brand_website_link"
    t.index ["user_id"], name: "index_brands_on_user_id"
  end

  create_table "individual_users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.string "first_name"
    t.string "last_name"
    t.date "dob"
    t.string "gender"
    t.string "contact_number"
    t.string "city"
    t.string "state"
    t.string "pincode"
    t.index ["user_id"], name: "index_individual_users_on_user_id"
  end

  create_table "organisations", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.string "community_name"
    t.string "community_contact_number"
    t.string "community_category"
    t.string "community_size"
    t.decimal "community_establishment_year"
    t.text "community_address_line1"
    t.text "community_address_line2"
    t.string "community_address_city"
    t.string "community_address_state"
    t.string "community_address_pincode"
    t.string "community_description"
    t.index ["user_id"], name: "index_organisations_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "provider", default: "email", null: false
    t.string "uid", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.string "name"
    t.string "image"
    t.string "email"
    t.string "type"
    t.text "tokens"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["uid", "provider"], name: "index_users_on_uid_and_provider", unique: true
  end

end
