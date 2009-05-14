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

ActiveRecord::Schema.define(:version => 20090514002743) do

  create_table "analyses", :force => true do |t|
    t.string   "type"
    t.integer  "visit_id"
    t.integer  "param1",     :limit => 10, :precision => 10, :scale => 0
    t.integer  "param2",     :limit => 10, :precision => 10, :scale => 0
    t.integer  "param3",     :limit => 10, :precision => 10, :scale => 0
    t.integer  "param4",     :limit => 10, :precision => 10, :scale => 0
    t.integer  "param5",     :limit => 10, :precision => 10, :scale => 0
    t.integer  "param6",     :limit => 10, :precision => 10, :scale => 0
    t.integer  "param7",     :limit => 10, :precision => 10, :scale => 0
    t.integer  "param8",     :limit => 10, :precision => 10, :scale => 0
    t.integer  "param9",     :limit => 10, :precision => 10, :scale => 0
    t.integer  "param10",    :limit => 10, :precision => 10, :scale => 0
    t.integer  "param11",    :limit => 10, :precision => 10, :scale => 0
    t.integer  "param12",    :limit => 10, :precision => 10, :scale => 0
    t.integer  "param13",    :limit => 10, :precision => 10, :scale => 0
    t.integer  "param14",    :limit => 10, :precision => 10, :scale => 0
    t.integer  "param15",    :limit => 10, :precision => 10, :scale => 0
    t.integer  "param16",    :limit => 10, :precision => 10, :scale => 0
    t.integer  "param17",    :limit => 10, :precision => 10, :scale => 0
    t.integer  "param18",    :limit => 10, :precision => 10, :scale => 0
    t.integer  "param19",    :limit => 10, :precision => 10, :scale => 0
    t.integer  "param20",    :limit => 10, :precision => 10, :scale => 0
    t.integer  "param21",    :limit => 10, :precision => 10, :scale => 0
    t.integer  "param22",    :limit => 10, :precision => 10, :scale => 0
    t.integer  "param23",    :limit => 10, :precision => 10, :scale => 0
    t.integer  "param24",    :limit => 10, :precision => 10, :scale => 0
    t.integer  "param25",    :limit => 10, :precision => 10, :scale => 0
    t.integer  "param26",    :limit => 10, :precision => 10, :scale => 0
    t.integer  "param27",    :limit => 10, :precision => 10, :scale => 0
    t.integer  "param28",    :limit => 10, :precision => 10, :scale => 0
    t.integer  "param29",    :limit => 10, :precision => 10, :scale => 0
    t.integer  "param30",    :limit => 10, :precision => 10, :scale => 0
    t.integer  "param31",    :limit => 10, :precision => 10, :scale => 0
    t.integer  "param32",    :limit => 10, :precision => 10, :scale => 0
    t.integer  "param33",    :limit => 10, :precision => 10, :scale => 0
    t.integer  "param34",    :limit => 10, :precision => 10, :scale => 0
    t.integer  "param35",    :limit => 10, :precision => 10, :scale => 0
    t.integer  "param36",    :limit => 10, :precision => 10, :scale => 0
    t.integer  "param37",    :limit => 10, :precision => 10, :scale => 0
    t.integer  "param38",    :limit => 10, :precision => 10, :scale => 0
    t.integer  "param39",    :limit => 10, :precision => 10, :scale => 0
    t.integer  "param40",    :limit => 10, :precision => 10, :scale => 0
    t.integer  "param41",    :limit => 10, :precision => 10, :scale => 0
    t.integer  "param42",    :limit => 10, :precision => 10, :scale => 0
    t.integer  "param43",    :limit => 10, :precision => 10, :scale => 0
    t.integer  "param44",    :limit => 10, :precision => 10, :scale => 0
    t.integer  "param45",    :limit => 10, :precision => 10, :scale => 0
    t.integer  "param46",    :limit => 10, :precision => 10, :scale => 0
    t.integer  "param47",    :limit => 10, :precision => 10, :scale => 0
    t.integer  "param48",    :limit => 10, :precision => 10, :scale => 0
    t.integer  "param49",    :limit => 10, :precision => 10, :scale => 0
    t.integer  "param50",    :limit => 10, :precision => 10, :scale => 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "doctoral_conclusions", :force => true do |t|
    t.integer  "visit_id"
    t.string   "doctor_speciality"
    t.text     "conclusion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "metadatas", :force => true do |t|
    t.string   "model"
    t.string   "name_in_model"
    t.string   "name_in_view"
    t.string   "description"
    t.string   "unit"
    t.string   "locale"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "patients", :force => true do |t|
    t.date     "date_of_birdth"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "personal_datas", :force => true do |t|
    t.integer  "visit_id"
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.boolean  "gender"
    t.integer  "passport_seria"
    t.integer  "passport_number"
    t.integer  "policy_seria"
    t.integer  "policy_number"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "address"
    t.string   "phone_number"
    t.string   "mobile_phone_number"
  end

  create_table "visits", :force => true do |t|
    t.integer  "patient_id"
    t.date     "start_date"
    t.date     "end_date"
    t.text     "epicrysis"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
