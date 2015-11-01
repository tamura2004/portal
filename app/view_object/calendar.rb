class Calendar
  include ActiveModel::Model
  attr_reader :month, :res1, :res2

  def initialize(month)
    @month = month.to_s
    r = Reservation.where(month: @month)
    @res1 = r.first
    @res2 = r.second
  end

  def self.all
    m = Month(Time.now)
    (m..(m+12)).map{ |mm| self.new(mm) }
  end
end

