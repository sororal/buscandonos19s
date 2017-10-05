class CreatePeople < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :second_name
      t.string :first_apellido
      t.string :second_apellido
      t.date :birth_date
      t.string :birth_country
      t.string :birth_state
      t.string :nationality
      t.string :alias
      t.string :sex
      t.string :gender
      t.string :sexual_orientation
      t.boolean :sexchange_surgery
      t.string :sexchange_surgery_type
      t.boolean :amputation
      t.string :amputation_type
      t.boolean :chronic_disease
      t.string :chronic_disease_type
      t.boolean :prothesis
      t.string :prothesis_type
      t.boolean :glasses
      t.boolean :contact_lens
      t.boolean :diopters
      t.float :weight
      t.float :height
      t.string :skin_type
      t.string :eye_color
      t.string :hair_type
      t.string :hair_color
      t.string :facial_hair
      t.boolean :body_hair
      t.boolean :tattoos
      t.string :tattoos_type
      t.boolean :piercings
      t.string :piercings_type
      t.boolean :facial_moles
      t.string :facial_moles_type
      t.boolean :facial_birth_marks
      t.string :facial_birth_marks_type
      t.boolean :facial_scars
      t.string :facial_scars_type
      t.boolean :hands_moles
      t.string :hands_moles_type
      t.boolean :hands_birth_marks
      t.string :hands_birth_marks_type
      t.boolean :hands_scars
      t.string :hands_scars_type
      t.boolean :physical_disabilities
      t.string :physical_disabilities_type
      t.boolean :mental_disabilities
      t.string :mental_disabilities_string_type
      t.boolean :mental_illness
      t.string :mental_illness_type
      t.boolean :sight_disabilites
      t.string :sight_disabilities_type
      t.boolean :ear_disabilities
      t.string :ear_disabilities_type
      t.string :ethnicity
      t.string :id_document
      t.string :id_type
      t.string :id_photo
      t.string :biography_municipality
      t.string :biography_city
      t.string :biography_state
      t.string :biography_country
      t.boolean :activist
      t.boolean :journalist
      t.boolean :migrant
      t.string :occupation
      t.string :position
      t.date :event_date
      t.time :event_time
      t.string :event_street
      t.string :event_street_number
      t.string :event_neighborhood
      t.string :event_municipality
      t.string :event_city
      t.integer :event_postal
      t.string :event_state
      t.string :event_country
      t.date :ls_date
      t.time :ls_time
      t.string :ls_street
      t.string :ls_street_number
      t.string :ls_neighborhood
      t.string :ls_municipality
      t.string :ls_city
      t.integer :ls_postal
      t.string :ls_state
      t.string :ls_country
      t.boolean :ls_clothes
      t.string :ls_clothes_top
      t.string :ls_clothes_top_color
      t.string :ls_clothes_bottom
      t.string :ls_clothes_bottom_color

      t.timestamps
    end
  end
end
