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

ActiveRecord::Schema.define(version: 2018_11_12_065718) do

  create_table "achievements", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "when"
    t.string "content"
    t.bigint "company_id"
    t.string "bigo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_achievements_on_company_id"
  end

  create_table "active_storage_attachments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "awards", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "when"
    t.string "institution"
    t.string "title"
    t.text "content"
    t.string "bigo"
    t.bigint "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_awards_on_company_id"
  end

  create_table "companies", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "season"
    t.string "name"
    t.string "name_en"
    t.string "service_name"
    t.string "service_name_en"
    t.string "uniq_num"
    t.boolean "is_registered"
    t.boolean "is_individual"
    t.integer "register_num"
    t.date "register_date"
    t.string "up_tae"
    t.string "jong_mok1"
    t.string "jong_mok2"
    t.string "jong_mok3"
    t.date "start_date"
    t.date "move_in_date"
    t.date "move_out_date"
    t.string "address"
    t.date "established_date"
    t.boolean "is_corporated"
    t.integer "corporated_num"
    t.date "corporated_date"
    t.integer "CEO_num"
    t.string "CEO1"
    t.string "CEO2"
    t.string "CEO3"
    t.string "CEO4"
    t.string "CEO5"
    t.string "CEO1_en"
    t.string "CEO2_en"
    t.string "CEO3_en"
    t.string "CEO4_en"
    t.string "CEO5_en"
    t.text "company_overview"
    t.text "service_overview"
    t.string "website"
    t.string "sns"
    t.string "cellphone_num"
    t.string "phone_num"
    t.string "email"
    t.boolean "is_business_student"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.integer "represent_name"
    t.index ["user_id"], name: "index_companies_on_user_id"
  end

  create_table "funds", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "when"
    t.string "institution"
    t.string "title"
    t.string "content"
    t.bigint "company_id"
    t.string "bigo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_funds_on_company_id"
  end

  create_table "governments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "when"
    t.string "institution"
    t.string "title"
    t.text "content"
    t.string "bigo"
    t.bigint "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_governments_on_company_id"
  end

  create_table "plans", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "when"
    t.string "category"
    t.text "content"
    t.bigint "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_plans_on_company_id"
  end

  create_table "presses", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "when"
    t.string "press_name"
    t.string "title"
    t.string "link"
    t.string "bigo"
    t.bigint "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_presses_on_company_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.boolean "admin", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "permitted", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "achievements", "companies"
  add_foreign_key "awards", "companies"
  add_foreign_key "companies", "users"
  add_foreign_key "funds", "companies"
  add_foreign_key "governments", "companies"
  add_foreign_key "plans", "companies"
  add_foreign_key "presses", "companies"
end
