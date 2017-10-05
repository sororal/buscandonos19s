require 'test_helper'

class PeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @person = people(:one)
  end

  test "should get index" do
    get people_url
    assert_response :success
  end

  test "should get new" do
    get new_person_url
    assert_response :success
  end

  test "should create person" do
    assert_difference('Person.count') do
      post people_url, params: { person: { activist: @person.activist, alias: @person.alias, amputation: @person.amputation, amputation_type: @person.amputation_type, biography_city: @person.biography_city, biography_country: @person.biography_country, biography_municipality: @person.biography_municipality, biography_state: @person.biography_state, birth_country: @person.birth_country, birth_date: @person.birth_date, birth_state: @person.birth_state, body_hair: @person.body_hair, chronic_disease: @person.chronic_disease, chronic_disease_type: @person.chronic_disease_type, contact_lens: @person.contact_lens, diopters: @person.diopters, ear_disabilities: @person.ear_disabilities, ear_disabilities_type: @person.ear_disabilities_type, ethnicity: @person.ethnicity, event_city: @person.event_city, event_country: @person.event_country, event_date: @person.event_date, event_municipality: @person.event_municipality, event_neighborhood: @person.event_neighborhood, event_postal: @person.event_postal, event_state: @person.event_state, event_street: @person.event_street, event_street_number: @person.event_street_number, event_time: @person.event_time, eye_color: @person.eye_color, facial_birth_marks: @person.facial_birth_marks, facial_birth_marks_type: @person.facial_birth_marks_type, facial_hair: @person.facial_hair, facial_moles: @person.facial_moles, facial_moles_type: @person.facial_moles_type, facial_scars: @person.facial_scars, facial_scars_type: @person.facial_scars_type, first_apellido: @person.first_apellido, first_name: @person.first_name, gender: @person.gender, glasses: @person.glasses, hair_color: @person.hair_color, hair_type: @person.hair_type, hands_birth_marks: @person.hands_birth_marks, hands_birth_marks_type: @person.hands_birth_marks_type, hands_moles: @person.hands_moles, hands_moles_type: @person.hands_moles_type, hands_scars: @person.hands_scars, hands_scars_type: @person.hands_scars_type, height: @person.height, id_document: @person.id_document, id_photo: @person.id_photo, id_type: @person.id_type, journalist: @person.journalist, ls_city: @person.ls_city, ls_clothes: @person.ls_clothes, ls_clothes_bottom: @person.ls_clothes_bottom, ls_clothes_bottom_color: @person.ls_clothes_bottom_color, ls_clothes_top: @person.ls_clothes_top, ls_clothes_top_color: @person.ls_clothes_top_color, ls_country: @person.ls_country, ls_date: @person.ls_date, ls_municipality: @person.ls_municipality, ls_neighborhood: @person.ls_neighborhood, ls_postal: @person.ls_postal, ls_state: @person.ls_state, ls_street: @person.ls_street, ls_street_number: @person.ls_street_number, ls_time: @person.ls_time, mental_disabilities: @person.mental_disabilities, mental_disabilities_string_type: @person.mental_disabilities_string_type, mental_illness: @person.mental_illness, mental_illness_type: @person.mental_illness_type, migrant: @person.migrant, nationality: @person.nationality, occupation: @person.occupation, physical_disabilities: @person.physical_disabilities, physical_disabilities_type: @person.physical_disabilities_type, piercings: @person.piercings, piercings_type: @person.piercings_type, position: @person.position, prothesis: @person.prothesis, prothesis_type: @person.prothesis_type, second_apellido: @person.second_apellido, second_name: @person.second_name, sex: @person.sex, sexchange_surgery: @person.sexchange_surgery, sexchange_surgery_type: @person.sexchange_surgery_type, sexual_orientation: @person.sexual_orientation, sight_disabilites: @person.sight_disabilites, sight_disabilities_type: @person.sight_disabilities_type, skin_type: @person.skin_type, tattoos: @person.tattoos, tattoos_type: @person.tattoos_type, weight: @person.weight } }
    end

    assert_redirected_to person_url(Person.last)
  end

  test "should show person" do
    get person_url(@person)
    assert_response :success
  end

  test "should get edit" do
    get edit_person_url(@person)
    assert_response :success
  end

  test "should update person" do
    patch person_url(@person), params: { person: { activist: @person.activist, alias: @person.alias, amputation: @person.amputation, amputation_type: @person.amputation_type, biography_city: @person.biography_city, biography_country: @person.biography_country, biography_municipality: @person.biography_municipality, biography_state: @person.biography_state, birth_country: @person.birth_country, birth_date: @person.birth_date, birth_state: @person.birth_state, body_hair: @person.body_hair, chronic_disease: @person.chronic_disease, chronic_disease_type: @person.chronic_disease_type, contact_lens: @person.contact_lens, diopters: @person.diopters, ear_disabilities: @person.ear_disabilities, ear_disabilities_type: @person.ear_disabilities_type, ethnicity: @person.ethnicity, event_city: @person.event_city, event_country: @person.event_country, event_date: @person.event_date, event_municipality: @person.event_municipality, event_neighborhood: @person.event_neighborhood, event_postal: @person.event_postal, event_state: @person.event_state, event_street: @person.event_street, event_street_number: @person.event_street_number, event_time: @person.event_time, eye_color: @person.eye_color, facial_birth_marks: @person.facial_birth_marks, facial_birth_marks_type: @person.facial_birth_marks_type, facial_hair: @person.facial_hair, facial_moles: @person.facial_moles, facial_moles_type: @person.facial_moles_type, facial_scars: @person.facial_scars, facial_scars_type: @person.facial_scars_type, first_apellido: @person.first_apellido, first_name: @person.first_name, gender: @person.gender, glasses: @person.glasses, hair_color: @person.hair_color, hair_type: @person.hair_type, hands_birth_marks: @person.hands_birth_marks, hands_birth_marks_type: @person.hands_birth_marks_type, hands_moles: @person.hands_moles, hands_moles_type: @person.hands_moles_type, hands_scars: @person.hands_scars, hands_scars_type: @person.hands_scars_type, height: @person.height, id_document: @person.id_document, id_photo: @person.id_photo, id_type: @person.id_type, journalist: @person.journalist, ls_city: @person.ls_city, ls_clothes: @person.ls_clothes, ls_clothes_bottom: @person.ls_clothes_bottom, ls_clothes_bottom_color: @person.ls_clothes_bottom_color, ls_clothes_top: @person.ls_clothes_top, ls_clothes_top_color: @person.ls_clothes_top_color, ls_country: @person.ls_country, ls_date: @person.ls_date, ls_municipality: @person.ls_municipality, ls_neighborhood: @person.ls_neighborhood, ls_postal: @person.ls_postal, ls_state: @person.ls_state, ls_street: @person.ls_street, ls_street_number: @person.ls_street_number, ls_time: @person.ls_time, mental_disabilities: @person.mental_disabilities, mental_disabilities_string_type: @person.mental_disabilities_string_type, mental_illness: @person.mental_illness, mental_illness_type: @person.mental_illness_type, migrant: @person.migrant, nationality: @person.nationality, occupation: @person.occupation, physical_disabilities: @person.physical_disabilities, physical_disabilities_type: @person.physical_disabilities_type, piercings: @person.piercings, piercings_type: @person.piercings_type, position: @person.position, prothesis: @person.prothesis, prothesis_type: @person.prothesis_type, second_apellido: @person.second_apellido, second_name: @person.second_name, sex: @person.sex, sexchange_surgery: @person.sexchange_surgery, sexchange_surgery_type: @person.sexchange_surgery_type, sexual_orientation: @person.sexual_orientation, sight_disabilites: @person.sight_disabilites, sight_disabilities_type: @person.sight_disabilities_type, skin_type: @person.skin_type, tattoos: @person.tattoos, tattoos_type: @person.tattoos_type, weight: @person.weight } }
    assert_redirected_to person_url(@person)
  end

  test "should destroy person" do
    assert_difference('Person.count', -1) do
      delete person_url(@person)
    end

    assert_redirected_to people_url
  end
end
