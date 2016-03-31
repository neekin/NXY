class ConsignorsController < ApplicationController
  before_action :set_consignor, only: [:show, :edit, :update, :destroy]

  # GET /consignors
  # GET /consignors.json
  def index
    @consignors = Consignor.where(:company_id => current_user.company_id).all
  end

  # GET /consignors/1
  # GET /consignors/1.json
  def show
  end

  # GET /consignors/new
  def new
    @consignor = Consignor.new
    @lines = Line.where(:company_id => current_user.company_id).all
  end

  # GET /consignors/1/edit
  def edit
    @lines = Line.where(:company_id => current_user.company_id).all
  end

  # POST /consignors
  # POST /consignors.json
  def create
    @lines = Line.where(:company_id => current_user.company_id).all
    @consignor = Consignor.new(consignor_params)
    @consignor.company_id = current_user.company_id
    respond_to do |format|
      if @consignor.save
        format.html { redirect_to @consignor, notice: 'Consignor was successfully created.' }
        format.js
        format.json { render :show, status: :created, location: @consignor }
      else
        format.html { render :new }
        format.js
        format.json { render json: @consignor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /consignors/1
  # PATCH/PUT /consignors/1.json
  def update
    respond_to do |format|
      if @consignor.update(consignor_params)
        format.html { redirect_to @consignor, notice: 'Consignor was successfully updated.' }
        format.js
        format.json { render :show, status: :ok, location: @consignor }
      else
        format.html { render :edit }
        format.js
        format.json { render json: @consignor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /consignors/1
  # DELETE /consignors/1.json
  def destroy
    @consignor.destroy
    respond_to do |format|
      format.html { redirect_to consignors_url, notice: 'Consignor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_consignor
      @consignor = Consignor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def consignor_params
      params.require(:consignor).permit(:name, :phone, :company_id,:line_id)
    end
end
