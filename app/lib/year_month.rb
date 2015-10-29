class Month < ActiveSupport::TimeWithZone
  include Comparable
  attr_accessor :year, :month

  def initialize(date)
    @year = date.year
    @month = date.month
  end

  def to_s
    sprintf("%04d-%02d",year,month)
  end

  def <=>(other)
    other.to_s <=> to_s
  end

  def eql?(other)
    other.to_s == to_s
  end

  def hash
    to_s.hash
  end
end
