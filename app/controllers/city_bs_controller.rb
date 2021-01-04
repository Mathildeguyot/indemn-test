class CityBsController < ApplicationController
  before_action :set_city_b, only: [:show, :edit, :update, :destroy]

  # GET /city_bs
  # GET /city_bs.json
  def index
    @city_bs = CityB.all
  end

  # GET /city_bs/1
  # GET /city_bs/1.json
  def show
  end

  # GET /city_bs/new
  def new
    @city_b = CityB.new
  end

  # GET /city_bs/1/edit
  def edit
  end

  # POST /city_bs
  # POST /city_bs.json
  def create
    @city_b = CityB.new(city_b_params)

    respond_to do |format|
      if @city_b.save
        format.html { redirect_to @city_b, notice: 'City b was successfully created.' }
        format.json { render :show, status: :created, location: @city_b }
      else
        format.html { render :new }
        format.json { render json: @city_b.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /city_bs/1
  # PATCH/PUT /city_bs/1.json
  def update
    respond_to do |format|
      if @city_b.update(city_b_params)
        format.html { redirect_to @city_b, notice: 'City b was successfully updated.' }
        format.json { render :show, status: :ok, location: @city_b }
      else
        format.html { render :edit }
        format.json { render json: @city_b.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /city_bs/1
  # DELETE /city_bs/1.json
  def destroy
    @city_b.destroy
    respond_to do |format|
      format.html { redirect_to city_bs_url, notice: 'City b was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_city_b
      @city_b = CityB.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def city_b_params
      params.require(:city_b).permit(:address)
    end
end
