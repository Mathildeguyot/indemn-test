class CityAsController < ApplicationController
  before_action :set_city_a, only: [:show, :edit, :update, :destroy]

  # GET /city_as
  # GET /city_as.json
  def index
    @city_as = CityA.all
  end

  # GET /city_as/1
  # GET /city_as/1.json
  def show
  end

  # GET /city_as/new
  def new
    @city_a = CityA.new
  end

  # GET /city_as/1/edit
  def edit
  end

  # POST /city_as
  # POST /city_as.json
  def create
    @city_a = CityA.new(city_a_params)

    respond_to do |format|
      if @city_a.save
        format.html { redirect_to @city_a, notice: 'City a was successfully created.' }
        format.json { render :show, status: :created, location: @city_a }
      else
        format.html { render :new }
        format.json { render json: @city_a.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /city_as/1
  # PATCH/PUT /city_as/1.json
  def update
    respond_to do |format|
      if @city_a.update(city_a_params)
        format.html { redirect_to @city_a, notice: 'City a was successfully updated.' }
        format.json { render :show, status: :ok, location: @city_a }
      else
        format.html { render :edit }
        format.json { render json: @city_a.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /city_as/1
  # DELETE /city_as/1.json
  def destroy
    @city_a.destroy
    respond_to do |format|
      format.html { redirect_to city_as_url, notice: 'City a was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_city_a
      @city_a = CityA.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def city_a_params
      params.require(:city_a).permit(:name)
    end
end
