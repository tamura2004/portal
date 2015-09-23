require 'test_helper'

class ReservationTest < ActiveSupport::TestCase
  #should validate_presence_of :projectName

  # one:   +------+
  # two:                +--------+
  # three: +---------------------+
  # four:          +----+
  setup do
    @one = Reservation.new(projectName: "one", start_date: "2015-09-01", end_date: "2015-09-10")
    @two =  Reservation.new(projectName: "two", start_date: "2015-09-20", end_date: "2015-09-30")
    @three = Reservation.new(projectName: "three", start_date: "2015-09-01", end_date: "2015-09-30")
    @four = Reservation.new(projectName: "four", start_date: "2015-09-11", end_date: "2015-09-20")
    @no_name = Reservation.new(start_date: "2015-09-11", end_date: "2015-09-20")
  end

  test "should require project name" do
    assert_not @no_name.save!
  end

  test "should save overlaped date upto 2" do
    assert @one.save
    assert @two.save
    assert @three.save
  end

  test "should not save overlaped date over 3" do
    @one.save
    @two.save
    @three.save
    assert_not @four.save
  end

  test "should not overlap self" do
    @one.save
    @two.save
    @three.save

    @three.end_date = "2015-09-10"
    assert @three.save

    @two.start_date = "2015-09-01"
    assert_not @two.save
  end

end
