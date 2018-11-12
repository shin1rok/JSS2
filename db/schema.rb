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

ActiveRecord::Schema.define(version: 2018_11_12_145602) do

  create_table "companies", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.string "address", null: false
    t.string "email", null: false
    t.string "tell", null: false
    t.integer "employees", null: false
    t.decimal "capital", precision: 11
    t.date "establish_date", null: false
    t.string "url", null: false
    t.float "average_age", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "company_messages", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "message"
    t.bigint "company_id"
    t.bigint "job_seeker_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_company_messages_on_company_id"
    t.index ["job_seeker_id"], name: "index_company_messages_on_job_seeker_id"
  end

  create_table "education_histories", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "profile_id"
    t.string "school_name", null: false
    t.date "entrance_date", null: false
    t.date "graduation_date"
    t.integer "status", null: false, comment: "状態(入学予定1、在学2、卒業3、休学4、退学5)"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_education_histories_on_profile_id"
  end

  create_table "job_offers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "company_id"
    t.string "title", null: false
    t.text "content", null: false
    t.integer "status", default: 2, null: false
    t.integer "public_status", default: 2, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_job_offers_on_company_id"
  end

  create_table "job_seeker_messages", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "message"
    t.bigint "job_seeker_id"
    t.bigint "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_job_seeker_messages_on_company_id"
    t.index ["job_seeker_id"], name: "index_job_seeker_messages_on_job_seeker_id"
  end

  create_table "job_seekers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
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
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["confirmation_token"], name: "index_job_seekers_on_confirmation_token", unique: true
    t.index ["email"], name: "index_job_seekers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_job_seekers_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_job_seekers_on_unlock_token", unique: true
  end

  create_table "profiles", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "job_seeker_id"
    t.string "name", null: false
    t.boolean "sex", null: false
    t.date "birthday", null: false
    t.string "address", null: false
    t.text "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["job_seeker_id"], name: "index_profiles_on_job_seeker_id", unique: true
  end

  create_table "recruiters", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "company_id"
    t.string "email", default: "", null: false
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
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_recruiters_on_company_id"
    t.index ["confirmation_token"], name: "index_recruiters_on_confirmation_token", unique: true
    t.index ["email"], name: "index_recruiters_on_email", unique: true
    t.index ["reset_password_token"], name: "index_recruiters_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_recruiters_on_unlock_token", unique: true
  end

  create_table "resumes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "job_seeker_id"
    t.text "note", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["job_seeker_id"], name: "index_resumes_on_job_seeker_id", unique: true
  end

  create_table "work_histories", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "profile_id"
    t.string "company_name", null: false
    t.date "join_date", null: false
    t.date "leave_date"
    t.integer "status", null: false, comment: "状態(入社予定1、在職2、退職済み3、休職4、解雇5)"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_work_histories_on_profile_id"
  end

  add_foreign_key "company_messages", "companies"
  add_foreign_key "company_messages", "job_seekers"
  add_foreign_key "education_histories", "profiles"
  add_foreign_key "job_offers", "companies"
  add_foreign_key "job_seeker_messages", "companies"
  add_foreign_key "job_seeker_messages", "job_seekers"
  add_foreign_key "profiles", "job_seekers"
  add_foreign_key "recruiters", "companies"
  add_foreign_key "resumes", "job_seekers"
  add_foreign_key "work_histories", "profiles"
end
