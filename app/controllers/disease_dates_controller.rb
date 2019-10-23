class DiseaseDatesController < ApplicationController
  before_action :set_disease_date, only: [:show, :edit, :update, :destroy]

  # GET /disease_dates
  # GET /disease_dates.json
  def index
    @disease_dates = DiseaseDate.all
  end

  # GET /disease_dates/1
  # GET /disease_dates/1.json
  def show
  end

  # GET /disease_dates/new
  def new
    @disease_date = DiseaseDate.new
  end

  # GET /disease_dates/1/edit
  def edit
  end

  # POST /disease_dates
  # POST /disease_dates.json
  def create
    @disease_date = DiseaseDate.new(disease_date_params)

    respond_to do |format|
      if @disease_date.save
        format.html { redirect_to @disease_date, notice: 'Disease date was successfully created.' }
        format.json { render :show, status: :created, location: @disease_date }
      else
        format.html { render :new }
        format.json { render json: @disease_date.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /disease_dates/1
  # PATCH/PUT /disease_dates/1.json
  def update
    respond_to do |format|
      if @disease_date.update(disease_date_params)
        format.html { redirect_to @disease_date, notice: 'Disease date was successfully updated.' }
        format.json { render :show, status: :ok, location: @disease_date }
      else
        format.html { render :edit }
        format.json { render json: @disease_date.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /disease_dates/1
  # DELETE /disease_dates/1.json
  def destroy
    @disease_date.destroy
    respond_to do |format|
      format.html { redirect_to disease_dates_url, notice: 'Disease date was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_disease_date
      @disease_date = DiseaseDate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def disease_date_params
      params.require(:disease_date).permit(:date, :animal_id, :disease_id)
    end
end
