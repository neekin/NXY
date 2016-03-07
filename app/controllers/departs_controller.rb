class DepartsController < ApplicationController
  before_action :set_depart, only: [:show, :edit, :update, :destroy]

  # GET /departs
  # GET /departs.json
  def index
    @departs = Depart.all
  end

  # GET /departs/1
  # GET /departs/1.json
  def show
  end

  # GET /departs/new
  def new
    @depart = Depart.new
  end

  # GET /departs/1/edit
  def edit
  end

  # POST /departs
  # POST /departs.json
  def create
    @depart = Depart.new(depart_params)

    respond_to do |format|
      if @depart.save
        format.html { redirect_to @depart, notice: 'Depart was successfully created.' }
        format.json { render :show, status: :created, location: @depart }
      else
        format.html { render :new }
        format.json { render json: @depart.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /departs/1
  # PATCH/PUT /departs/1.json
  def update
    respond_to do |format|
      if @depart.update(depart_params)
        format.html { redirect_to @depart, notice: 'Depart was successfully updated.' }
        format.json { render :show, status: :ok, location: @depart }
      else
        format.html { render :edit }
        format.json { render json: @depart.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /departs/1
  # DELETE /departs/1.json
  def destroy
    @depart.destroy
    respond_to do |format|
      format.html { redirect_to departs_url, notice: 'Depart was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_depart
      @depart = Depart.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def depart_params
      params.require(:depart).permit(:departureTime, :destination_id, :place_id, :status, :truck_id)
    end
end
