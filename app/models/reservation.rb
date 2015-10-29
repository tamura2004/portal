class Reservation < ActiveRecord::Base
  def year_month
    YearMonth.new(date)
  end
end
