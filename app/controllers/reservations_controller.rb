class ReservationsController < ApplicationController
  before_action :set_reservation, only: [:show, :edit, :update, :destroy]

  # GET /reservations
  # GET /reservations.json
  def index

    # 基準日指定ない場合、当日を基準とする
    param = params[:baseDate]
    @baseDate = param ? Date.parse(param) : Date.today

    # 基準日から７日分を作成
    @headers = Array.new(7) do |index|
      I18n.l(@baseDate + index.days, format: :short_date)
    end

    @dates = Array.new(7) do |index|
      (@baseDate + index.days).strftime("%Y-%m-%d")
    end

    # 予約データ
    @reservations = Reservation.where("start_date <= ? and ? <= end_date", @baseDate+6, @baseDate).order("start_date")
    @reservations.each do |res|
      # 上段・下段（ライセンス番号）
      # virtualAttributesを取得するため、whereではなくselectを使用する
      subSet = @reservations.select{|sub|sub.start_date <= res.start_date && res.start_date <= sub.end_date}
      res.top = ([0,1] - subSet.map(&:top)).min

      # スケジュールバー左端・幅
      leftDate = [res.start_date, @baseDate].max
      rightDate = [res.end_date, @baseDate+6].min
      res.left = (leftDate - @baseDate).to_i
      res.width = (rightDate - leftDate).to_i + 1
    end
  end

  # GET /reservations/1
  # GET /reservations/1.json
  def show
  end

  # GET /reservations/new/:start_date
  def new
    @reservation = Reservation.new

    # 開始日指定がある場合、終了日のデフォルトを７日後に指定
    start_dateParam = params[:start_date]
    if !start_dateParam.nil?
      start_date = Date.parse(start_dateParam)
      end_date = start_date + 7.day
      @reservation.start_date = start_date
      @reservation.end_date = end_date
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
      params.require(:reservation).permit(:project_info_id, :start_date, :end_date)
    end
end
