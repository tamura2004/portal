require 'test_helper'

class ReservationTest < ActiveSupport::TestCase
  # fixture
  # one:   9/01 - 9/10  +------+
  # two:   9/20 - 9/30                +--------+
  # three: 9/01 - 9/30  +----------------------+

  setup do
    @res = Reservation.new
  end

  test "should require project name" do
    @res.start_date = "2015-09-11"
    @res.end_date = "2015-09-19"

    assert_not @res.valid?
  end

  test "should save if another one reservation already exists" do
    @res.start_date = "2015-09-11"
    @res.end_date = "2015-09-19"

    @res.projectName = "myproject"
    assert @res.valid?
  end

  test "should not save if overlaped date over 2" do
    @res.start_date = "2015-09-01"
    @res.end_date = "2015-09-01"

    @res.projectName = "myproject"
    assert_not @res.save
  end

  test "should not overlap self" do
    @res.start_date = "2015-09-11"
    @res.end_date = "2015-09-19"

    @res.projectName = "myproject"
    @res.save

    @res.start_date = "2015-09-18"
    assert @res.save

  end

end
