class MurojaahsController < ApplicationController
  before_action :set_murojaah, only: %i[ show edit update destroy ]
  before_action :authenticate_user!

  # GET /murojaahs or /murojaahs.json
  def index
    @murojaahs = Murojaah.all
    @admin = 'rishadaufaharahap@gmail.com'
  end

  # GET /murojaahs/1 or /murojaahs/1.json
  def show
  end

  # GET /murojaahs/new
  def new
    @murojaah = Murojaah.new
  end

  # GET /murojaahs/1/edit
  def edit
  end

  # POST /murojaahs or /murojaahs.json
  def create
    @murojaah = Murojaah.new(murojaah_params)
    @murojaah.user = current_user

    respond_to do |format|
      if @murojaah.save
        format.html { redirect_to murojaah_url(@murojaah), notice: "Murojaah was successfully created." }
        format.json { render :show, status: :created, location: @murojaah }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @murojaah.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /murojaahs/1 or /murojaahs/1.json
  def update
    respond_to do |format|
      if @murojaah.update(murojaah_params)
        format.html { redirect_to murojaah_url(@murojaah), notice: "Murojaah was successfully updated." }
        format.json { render :show, status: :ok, location: @murojaah }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @murojaah.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /murojaahs/1 or /murojaahs/1.json
  def destroy
    @murojaah.destroy!

    respond_to do |format|
      format.html { redirect_to murojaahs_url, notice: "Murojaah was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_murojaah
      @murojaah = Murojaah.find(params[:id])
      @admin = 'rishadaufaharahap@gmail.com'
    end

    # Only allow a list of trusted parameters through.
    def murojaah_params
      params.require(:murojaah).permit(:LU, :LL, :LW, :ST, :SQ, :SH, :ZT, :ZQ, :ZB, :AT, :AA, :MT, :MA, :MB, :IT, :IA, :IB, :total_rakaat, :total_page, :no_surah, :grade, :user_id)
    end
end
