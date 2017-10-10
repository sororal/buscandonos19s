class PeopleController < ApplicationController
  before_action :set_dataset
  before_action :set_person, only: [:show, :edit, :update, :destroy]

  # GET /people
  # GET /people.json
  def index
    @people = Person.all
  end

  # GET /people/1
  # GET /people/1.json
  def show
  end

  # GET /people/new
  def new
    @person = Person.new
  end

  # GET /people/1/edit
  def edit
  end

  # POST /people
  # POST /people.json
  def create
    @person = @dataset.people.new(person_params)

    respond_to do |format|
      if @person.save
        format.html { redirect_to @dataset, notice: 'Person was successfully created.' }
        format.json { render :show, status: :created, location: @person }
      else
        format.html { render :new }
        format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /people/1
  # PATCH/PUT /people/1.json
  def update
    respond_to do |format|
      if @person.update(person_params)
        format.html { redirect_to @person, notice: 'Person was successfully updated.' }
        format.json { render :show, status: :ok, location: @person }
      else
        format.html { render :edit }
        format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /people/1
  # DELETE /people/1.json
  def destroy
    @person.destroy
    respond_to do |format|
      format.html { redirect_to people_url, notice: 'Person was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_dataset
      @dataset = Dataset.find(params[:dataset_id])
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_person
      @person = @dataset.people.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def person_params
      params.require(:person).permit(:first_name, :second_name, :first_apellido, :second_apellido, :birth_date, :birth_country, :birth_state, :nationality, :alias, :sex, :gender, :sexual_orientation, :sexchange_surgery, :sexchange_surgery_type, :amputation, :amputation_type, :chronic_disease, :chronic_disease_type, :prothesis, :prothesis_type, :glasses, :contact_lens, :diopters, :weight, :height, :skin_type, :eye_color, :hair_type, :hair_color, :facial_hair, :body_hair, :tattoos, :tattoos_type, :piercings, :piercings_type, :facial_moles, :facial_moles_type, :facial_birth_marks, :facial_birth_marks_type, :facial_scars, :facial_scars_type, :hands_moles, :hands_moles_type, :hands_birth_marks, :hands_birth_marks_type, :hands_scars, :hands_scars_type, :physical_disabilities, :physical_disabilities_type, :mental_disabilities, :mental_disabilities_string_type, :mental_illness, :mental_illness_type, :sight_disabilites, :sight_disabilities_type, :ear_disabilities, :ear_disabilities_type, :ethnicity, :id_document, :id_type, :id_photo, :biography_municipality, :biography_city, :biography_state, :biography_country, :activist, :journalist, :migrant, :occupation, :position, :event_date, :event_time, :event_street, :event_street_number, :event_neighborhood, :event_municipality, :event_city, :event_postal, :event_state, :event_country, :ls_date, :ls_time, :ls_street, :ls_street_number, :ls_neighborhood, :ls_municipality, :ls_city, :ls_postal, :ls_state, :ls_country, :ls_clothes, :ls_clothes_top, :ls_clothes_top_color, :ls_clothes_bottom, :ls_clothes_bottom_color)
    end
end
