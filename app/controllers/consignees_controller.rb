class ConsigneesController < ApplicationController
  before_action :set_consignee, only: [:show, :edit, :update, :destroy]

  # GET /consignees
  # GET /consignees.json
  def index
    @consignees = Consignee.where(:company_id => current_user.company_id).all
  end

  # GET /consignees/1
  # GET /consignees/1.json
  def show
  end

  # GET /consignees/new
  def new
    @consignee = Consignee.new
    @lines = Line.where(:company_id => current_user.company_id).all
  end

  # GET /consignees/1/edit
  def edit
    @lines = Line.where(:company_id => current_user.company_id).all
  end

  # POST /consignees
  # POST /consignees.json
  def create
    @consignee = Consignee.new(consignee_params)
    @consignee.company_id = current_user.company_id
    respond_to do |format|
      if @consignee.save
        format.html { redirect_to @consignee, notice: 'Consignee was successfully created.' }
        format.json { render :show, status: :created, location: @consignee }
      else
        format.html { render :new }
        format.json { render json: @consignee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /consignees/1
  # PATCH/PUT /consignees/1.json
  def update
    respond_to do |format|
      if @consignee.update(consignee_params)
        format.html { redirect_to @consignee, notice: 'Consignee was successfully updated.' }
        format.json { render :show, status: :ok, location: @consignee }
      else
        format.html { render :edit }
        format.json { render json: @consignee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /consignees/1
  # DELETE /consignees/1.json
  def destroy
    @consignee.destroy
    respond_to do |format|
      format.html { redirect_to consignees_url, notice: 'Consignee was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_consignee
      @consignee = Consignee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def consignee_params
      params.require(:consignee).permit(:name, :phone, :company_id, :weight, :volume, :address,:line_id)
    end
end
