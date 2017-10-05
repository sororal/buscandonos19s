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

ActiveRecord::Schema.define(version: 20171005232654) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "datasets", force: :cascade do |t|
    t.string "dataset_name"
    t.string "dataset_owner"
    t.string "dataset_owner_contact"
    t.string "dataset_url"
    t.datetime "dataset_date_imported"
    t.boolean "dataset_update_continously"
    t.datetime "dataset_last_update"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.string "first_name"
    t.string "second_name"
    t.string "first_apellido"
    t.string "second_apellido"
    t.date "birth_date"
    t.string "birth_country"
    t.string "birth_state"
    t.string "nationality"
    t.string "alias"
    t.string "sex"
    t.string "gender"
    t.string "sexual_orientation"
    t.boolean "sexchange_surgery"
    t.string "sexchange_surgery_type"
    t.boolean "amputation"
    t.string "amputation_type"
    t.boolean "chronic_disease"
    t.string "chronic_disease_type"
    t.boolean "prothesis"
    t.string "prothesis_type"
    t.boolean "glasses"
    t.boolean "contact_lens"
    t.boolean "diopters"
    t.float "weight"
    t.float "height"
    t.string "skin_type"
    t.string "eye_color"
    t.string "hair_type"
    t.string "hair_color"
    t.string "facial_hair"
    t.boolean "body_hair"
    t.boolean "tattoos"
    t.string "tattoos_type"
    t.boolean "piercings"
    t.string "piercings_type"
    t.boolean "facial_moles"
    t.string "facial_moles_type"
    t.boolean "facial_birth_marks"
    t.string "facial_birth_marks_type"
    t.boolean "facial_scars"
    t.string "facial_scars_type"
    t.boolean "hands_moles"
    t.string "hands_moles_type"
    t.boolean "hands_birth_marks"
    t.string "hands_birth_marks_type"
    t.boolean "hands_scars"
    t.string "hands_scars_type"
    t.boolean "physical_disabilities"
    t.string "physical_disabilities_type"
    t.boolean "mental_disabilities"
    t.string "mental_disabilities_string_type"
    t.boolean "mental_illness"
    t.string "mental_illness_type"
    t.boolean "sight_disabilites"
    t.string "sight_disabilities_type"
    t.boolean "ear_disabilities"
    t.string "ear_disabilities_type"
    t.string "ethnicity"
    t.string "id_document"
    t.string "id_type"
    t.string "id_photo"
    t.string "biography_municipality"
    t.string "biography_city"
    t.string "biography_state"
    t.string "biography_country"
    t.boolean "activist"
    t.boolean "journalist"
    t.boolean "migrant"
    t.string "occupation"
    t.string "position"
    t.date "event_date"
    t.time "event_time"
    t.string "event_street"
    t.string "event_street_number"
    t.string "event_neighborhood"
    t.string "event_municipality"
    t.string "event_city"
    t.integer "event_postal"
    t.string "event_state"
    t.string "event_country"
    t.date "ls_date"
    t.time "ls_time"
    t.string "ls_street"
    t.string "ls_street_number"
    t.string "ls_neighborhood"
    t.string "ls_municipality"
    t.string "ls_city"
    t.integer "ls_postal"
    t.string "ls_state"
    t.string "ls_country"
    t.boolean "ls_clothes"
    t.string "ls_clothes_top"
    t.string "ls_clothes_top_color"
    t.string "ls_clothes_bottom"
    t.string "ls_clothes_bottom_color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "dataset_id"
    t.index ["dataset_id"], name: "index_people_on_dataset_id"
  end

end
