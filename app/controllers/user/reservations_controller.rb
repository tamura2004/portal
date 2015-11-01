class User::ReservationsController < User::BaseController
  def index
    @calendars = Calendar.all
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def new
    @reservation = Reservation.new
  end

end
