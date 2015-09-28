require 'test_helper'

  class ReservationTest < ActiveSupport::TestCase
    include FactoryGirl::Syntax::Methods

    # test overlap range start_date end_date
    # :a +----+
    # :b +----------+
    # :c +----------------+
    # :d       +----+
    # :e       +----------+
    # :f             +----+

    setup do
      Reservation.delete_all
    end

    test "should valid if overlap none" do
      create(:a)

      assert build(:b).valid?
      assert build(:c).valid?
      assert build(:d).valid?
      assert build(:e).valid?
      assert build(:f).valid?
    end

    test "should valid if overlap 2" do
      create(:a)
      create(:f)

      assert build(:b).valid?
      assert build(:c).valid?
      assert build(:d).valid?
      assert build(:e).valid?
    end

    test "should invalid if overlap 3" do
      create(:b)
      create(:e)

      assert build(:a).valid?
      assert build(:f).valid?

      assert build(:c).invalid?
      assert build(:d).invalid?      
    end

end
