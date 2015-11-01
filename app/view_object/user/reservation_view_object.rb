class Calendar
  def month
    @month ||= Month.new(date)
  end

  def self.all
    start_month = Month.new(Time.now)
    end_month = start_month + 12


end

