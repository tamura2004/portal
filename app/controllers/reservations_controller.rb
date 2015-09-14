class ReservationsController < ApplicationController
  before_action :set_reservation, only: [:show, :edit, :update, :destroy]

  # GET /reservations
  # GET /reservations.json
  def index

    # 基準日指定ない場合、当日を基準とする
    param = params[:baseDate]
    if param.nil?
      baseDate = Date.today
    else
      baseDate = Date.parse(param)
    end

    # 基準日から７日分を作成
    @headers = []
    @dates = []
    7.times do
      @headers << I18n.l(baseDate, format: :short_date)
      @dates << baseDate.strftime("%Y-%m-%d")
      baseDate += 1.day
    end
    @reservations = Reservation.all
  end

  # GET /reservations/1
  # GET /reservations/1.json
  def show
  end

  # GET /reservations/new/:startDate
  def new
    @reservation = Reservation.new

    # 開始日指定がある場合、終了日のデフォルトを７日後に指定
    startDateParam = params[:startDate]
    if !startDateParam.nil?
      startDate = Date.parse(startDateParam)
      endDate = startDate + 7.day
      @reservation.startDate = startDate
      @reservation.endDate = endDate
    end
  end

  # GET /reservations/1/edit
  def edit
  end

  # POST /reservations
  # POST /reservations.json
  def create
    @reservation = Reservation.new(reservation_params)

    respond_to do |format|
      if @reservation.save
        format.html { redirect_to @reservation, notice: 'Reservation was successfully created.' }
        format.json { render :show, status: :created, location: @reservation }
      else
        format.html { render :new }
        format.json { render json: @reservation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reservations/1
  # PATCH/PUT /reservations/1.json
  def update
    respond_to do |format|
      if @reservation.update(reservation_params)
        format.html { redirect_to @reservation, notice: 'Reservation was successfully updated.' }
        format.json { render :show, status: :ok, location: @reservation }
      else
        format.html { render :edit }
        format.json { render json: @reservation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reservations/1
  # DELETE /reservations/1.json
  def destroy
    @reservation.destroy
    respond_to do |format|
      format.html { redirect_to reservations_url, notice: 'Reservation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reservation
      @reservation = Reservation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reservation_params
      params.require(:reservation).permit(:projectName, :userName, :startDate, :endDate)
    end
end
