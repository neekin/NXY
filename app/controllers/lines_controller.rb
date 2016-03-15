class LinesController < ApplicationController
  before_action :set_line, only: [:show, :edit, :update, :destroy]

  # GET /lines
  # GET /lines.json
  def index
    if !current_user
      flash.notice="请先登录"
      redirect_to :root
      return
    end
    if !current_user.isresponsible
      flash.notice="不是企业负责人，无权限管理"
      redirect_to :root
      return
    end
    @lines = Line.where(:company_id => current_user.company_id).all
  end

  # GET /lines/1
  # GET /lines/1.json
  def show
  end

  # GET /lines/new
  def new
    if !current_user.company_id && !current_user.isresponsible
      redirect_to :managecenter
    end
    @line = Line.new
  end

  # GET /lines/1/edit
  def edit
    if !current_user.company_id && !current_user.isresponsible
      redirect_to :managecenter
    end
  end

  # POST /lines
  # POST /lines.json
  def create
    if !current_user.company_id && !current_user.isresponsible
      redirect_to :managecenter
    end
    @line = Line.new(line_params)
    @line.company_id = current_user.company_id
    respond_to do |format|
      if @line.save
        format.html { redirect_to @line, notice: 'Line was successfully created.' }
        format.json { render :show, status: :created, location: @line }
      else
        format.html { render :new }
        format.json { render json: @line.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lines/1
  # PATCH/PUT /lines/1.json
  def update
    if !current_user.company_id && !current_user.isresponsible
      redirect_to :managecenter
    end
    respond_to do |format|
      if @line.update(line_params)
        format.html { redirect_to @line, notice: 'Line was successfully updated.' }
        format.json { render :show, status: :ok, location: @line }
      else
        format.html { render :edit }
        format.json { render json: @line.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lines/1
  # DELETE /lines/1.json
  def destroy
    if !current_user.company_id && !current_user.isresponsible
      redirect_to :managecenter
    end
    @line.destroy
    respond_to do |format|
      format.html { redirect_to lines_url, notice: 'Line was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_line
      @line = Line.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def line_params
      params.require(:line).permit(:place, :destination, :company_id,:prefix)
    end
end
