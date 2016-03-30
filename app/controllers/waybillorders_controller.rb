class WaybillordersController < ApplicationController
  before_action :set_waybillorder, only: [:show, :edit, :update, :destroy]

  # GET /waybillorders
  # GET /waybillorders.json
  def index
    @waybillorders = Waybillorder.where(:company_id => current_user.company_id).all
  end

  # GET /waybillorders/1
  # GET /waybillorders/1.json
  def show
  end

  def print
    @waybillorder = Waybillorder.find(params[:id])
  end

  # GET /waybillorders/new
  def new
    @waybillorder = Waybillorder.new
     if params[:line_id]
      @lines = Line.where(:company_id => current_user.company_id,:id=>params[:line_id]).all
      @consignees = Consignee.where(:company_id => current_user.company_id,:line_id=>params[:line_id]).all
      @consignors = Consignor.where(:company_id => current_user.company_id,:line_id=>params[:line_id]).all
     else
      @lines = Line.where(:company_id => current_user.company_id).all
      @consignees = Consignee.where(:company_id => current_user.company_id).all
      @consignors = Consignor.where(:company_id => current_user.company_id).all
     end
    @departs = Depart.where(:line_id=> @lines.first.id,:status => false)
  end

  # GET /waybillorders/1/edit
  def edit
    @lines = Line.where(:company_id => current_user.company_id).all
    @departs = Depart.where("line_id = ?",@lines.first.id)
    @consignees = Consignee.where(:company_id => current_user.company_id).all
    @consignors = Consignor.where(:company_id => current_user.company_id).all
  end

  # POST /waybillorders
  # POST /waybillorders.json
  def create
    @lines = Line.where(:company_id => current_user.company_id).all
     @departs = Depart.where(:line_id=> @lines.first.id,:status => false)
      @consignees = Consignee.where(:company_id => current_user.company_id).all
      @consignors = Consignor.where(:company_id => current_user.company_id).all
    @waybillorder = Waybillorder.new(waybillorder_params)
    @waybillorder.user_id = current_user.id
    @waybillorder.company_id = current_user.company_id
    respond_to do |format|
      if @waybillorder.save
         @waybillorder.orderNum = Line.find(waybillorder_params[:line_id]).prefix + if @waybillorder.id < 99 then ("%03d" % @waybillorder.id) else @waybillorder.id.to_s end +"-"+ @waybillorder.number1.to_s
         @waybillorder.save
        format.html { redirect_to @waybillorder, notice: 'Waybillorder was successfully created.' }
        format.json { render :show, status: :created, location: @waybillorder }
      else
        format.html { render :new }
        format.json { render json: @waybillorder.errors, status: :unprocessable_entity }
      end
    end
  end

  def CreateOrderNum
    @waybillorder.id + "-" +@waybillorder.number1
  end

  # PATCH/PUT /waybillorders/1
  # PATCH/PUT /waybillorders/1.json
  def update
    respond_to do |format|
      if @waybillorder.update(waybillorder_params)
        update_attribute={:orderNum=>Line.find(waybillorder_params[:line_id]).prefix +
            if @waybillorder.id < 99 then ("%03d" % @waybillorder.id)
            elsif @waybillorder.id >999
            then @waybillorder.id.to_s[-3,3]
            else @waybillorder.id.to_s
            end +"-"+ @waybillorder.number1.to_s}
        @waybillorder.update(update_attribute)
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

  def update_departs
    @departs = Depart.where(:line_id =>params[:line_id])
    respond_to do |format|
      format.js
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_waybillorder
      @waybillorder = Waybillorder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def waybillorder_params
      params.require(:waybillorder).permit(:orderNum, :googsName1, :googdName2, :goodsName3, :number1, :number2, :number3, :weight1, :weight2, :weight3, :volume1, :volume2, :volume3, :freightCost, :insuranceCost, :packingCost, :deliverCost, :acceptCost, :isTransfer, :transferCost, :transferDestintion, :otherCost, :total, :consignor_id, :consignee_id, :proxycollection, :truck_id, :company_id, :user_id, :paymentmenthod_id, :line_id,:ThatValue)
    end
end
