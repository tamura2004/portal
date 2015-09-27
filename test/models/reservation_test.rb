require 'test_helper'

class ReservationTest < ActiveSupport::TestCase
  # fixture
  # one:   9/01 -  9/30  +------+
  # two:  11/01 - 11/30                +--------+

  setup do
  end

  test "should require project name to 漢字" do
    res = reservations(:one)
    res.projectName = nil
    assert res.invalid?
  end

  test "should require project name to create" do
    res = Reservation.new
    assert res.invalid?
  end

  test "should save if no overlap" do
    res = Reservation.new(
      projectName: "myproject",
      start_date: "2015-10-01",
      end_date: "2015-10-31"
    )
    assert res.valid?
  end

  test "should not save if overlaped date over 2" do
    res = Reservation.new(
      projectName: "myproject",
      start_date: "2015-09-01",
      end_date: "2015-11-30"
    )
    assert res.invalid?
  end

  test "should not include self upon to consider the overlap" do
    res = reservations(:one)
    res.start_date = "2015-09-10" # overlaping self(old)

    assert res.valid?
  end

end
