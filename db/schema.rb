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

ActiveRecord::Schema.define(:version => 20090514081659) do

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

  create_table "objecitve_datas", :force => true do |t|
    t.integer  "visit_id"
    t.float    "param1"
    t.float    "param2"
    t.float    "param3"
    t.float    "param4"
    t.float    "param5"
    t.float    "param6"
    t.float    "param7"
    t.float    "param8"
    t.float    "param9"
    t.float    "param10"
    t.float    "param11"
    t.float    "param12"
    t.float    "param13"
    t.float    "param14"
    t.float    "param15"
    t.float    "param16"
    t.float    "param17"
    t.float    "param18"
    t.float    "param19"
    t.float    "param20"
    t.float    "param21"
    t.float    "param22"
    t.float    "param23"
    t.float    "param24"
    t.float    "param25"
    t.float    "param26"
    t.float    "param27"
    t.float    "param28"
    t.float    "param29"
    t.float    "param30"
    t.float    "param31"
    t.float    "param32"
    t.float    "param33"
    t.float    "param34"
    t.float    "param35"
    t.float    "param36"
    t.float    "param37"
    t.float    "param38"
    t.float    "param39"
    t.float    "param40"
    t.float    "param41"
    t.float    "param42"
    t.float    "param43"
    t.float    "param44"
    t.float    "param45"
    t.float    "param46"
    t.float    "param47"
    t.float    "param48"
    t.float    "param49"
    t.float    "param50"
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
