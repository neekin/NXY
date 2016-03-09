class BillwayordersController < ApplicationController
  before_action :set_billwayorder, only: [:show, :edit, :update, :destroy]

  # GET /billwayorders
  # GET /billwayorders.json
  def index
    @billwayorders = Billwayorder.all
  end

  # GET /billwayorders/1
  # GET /billwayorders/1.json
  def show
  end

  # GET /billwayorders/new
  def new
    @billwayorder = Billwayorder.new
  end

  # GET /billwayorders/1/edit
  def edit
  end

  # POST /billwayorders
  # POST /billwayorders.json
  def create
    @billwayorder = Billwayorder.new(billwayorder_params)

    respond_to do |format|
      if @billwayorder.save
        format.html { redirect_to @billwayorder, notice: 'Billwayorder was successfully created.' }
        format.json { render :show, status: :created, location: @billwayorder }
      else
        format.html { render :new }
        format.json { render json: @billwayorder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /billwayorders/1
  # PATCH/PUT /billwayorders/1.json
  def update
    respond_to do |format|
      if @billwayorder.update(billwayorder_params)
        format.html { redirect_to @billwayorder, notice: 'Billwayorder was successfully updated.' }
        format.json { render :show, status: :ok, location: @billwayorder }
      else
        format.html { render :edit }
        format.json { render json: @billwayorder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /billwayorders/1
  # DELETE /billwayorders/1.json
  def destroy
    @billwayorder.destroy
    respond_to do |format|
      format.html { redirect_to billwayorders_url, notice: 'Billwayorder was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_billwayorder
      @billwayorder = Billwayorder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def billwayorder_params
      params.require(:billwayorder).permit(:orderNum, :goodsName, :number, :weight, :volume, :freightCost, :goodsPrice, :insuranceCost, :packingCost, :deliverCost, :acceptCost, :isTransfer, :transferCost, :total, :consignor_id, :consignee_id, :proxycollection, :truck_id, :company_id, :user_id, :paymentmethod_id, :line_id)
    end
end
