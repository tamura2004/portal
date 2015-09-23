require 'test_helper'

class ReservationTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test "should not save over license number" do
    reservation = Reservation.new
    reservation.startDate = "2015-09-15"
    reservation.endDate = "2015-09-20"
    assert_not reservation.save
  end

  test "should save under license number" do
    reservation = Reservation.new
    reservation.startDate = "2015-09-10"
    reservation.endDate = "2015-09-14"
    assert reservation.save
  end

end
