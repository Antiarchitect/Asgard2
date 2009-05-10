# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090509024324) do

  create_table "doctoral_conclusions", :force => true do |t|
    t.string   "doctor_speciality"
    t.text     "conclusion"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "patient_id"
  end

  create_table "metadatas", :force => true do |t|
    t.string   "name_in_model"
    t.string   "name_in_view"
    t.text     "description"
    t.string   "unit"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "patients", :force => true do |t|
    t.date     "date_of_birdth"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "personal_datas", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "family_name"
    t.boolean  "gender"
    t.integer  "passport_seria"
    t.integer  "passport_number"
    t.integer  "policy_seria"
    t.integer  "policy_number"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "patient_id"
    t.string   "address"
    t.string   "phone_number"
    t.string   "mobile_phone_number"
  end

  create_table "visits", :force => true do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.text     "epicrysis"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "patient_id"
  end

end
