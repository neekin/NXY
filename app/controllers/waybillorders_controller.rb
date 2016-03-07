class WaybillordersController < ApplicationController
  before_action :set_waybillorder, only: [:show, :edit, :update, :destroy]

  # GET /waybillorders
  # GET /waybillorders.json
  def index
    @waybillorders = Waybillorder.all
  end

  # GET /waybillorders/1
  # GET /waybillorders/1.json
  def show
  end

  # GET /waybillorders/new
  def new
    @waybillorder = Waybillorder.new
  end

  # GET /waybillorders/1/edit
  def edit
  end

  # POST /waybillorders
  # POST /waybillorders.json
  def create
    @waybillorder = Waybillorder.new(waybillorder_params)

    respond_to do |format|
      if @waybillorder.save
        format.html { redirect_to @waybillorder, notice: 'Waybillorder was successfully created.' }
        format.json { render :show, status: :created, location: @waybillorder }
      else
        format.html { render :new }
        format.json { render json: @waybillorder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /waybillorders/1
  # PATCH/PUT /waybillorders/1.json
  def update
    respond_to do |format|
      if @waybillorder.update(waybillorder_params)
        format.html { redirect_to @waybillorder, notice: 'Waybillorder was successfully updated.' }
        format.json { render :show, status: :ok, location: @waybillorder }
      else
        format.html { render :edit }
        format.json { render json: @waybillorder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /waybillorders/1
  # DELETE /waybillorders/1.json
  def destroy
    @waybillorder.destroy
    respond_to do |format|
      format.html { redirect_to waybillorders_url, notice: 'Waybillorder was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_waybillorder
      @waybillorder = Waybillorder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def waybillorder_params
      params.require(:waybillorder).permit(:ordernum, :goodsname, :number, :weight, :volume, :freightCost, :goodsPrice, :insuranceCost, :packingCost, :deliverCost, :acceptCost, :isTransfer, :transferCost, :total, :place_id, :destination_id, :consignor_id, :consignee_id, :proxycollection, :truck_id, :company_id, :user_id, :paymentmethod_id)
    end
end
