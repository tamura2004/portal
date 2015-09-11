class Reservation < ActiveRecord::Base
	validate :multiplex_be_under_license_number

	def multiplex_be_under_license_number

		sql = <<-'EOL'
			with
				ranges as (
					select *
						from reservations
						where ? <= enddate and startdate <= ?
				),
				points as (
					select distinct startdate as date from ranges
					union
					select distinct enddate as date from ranges
				)
			select max(v) as num from (
				select count(*) as v
					from points,ranges
					where points.date between ranges.startdate and ranges.enddate
					group by points.date
			);
		EOL

		in_use = Reservation.find_by_sql([sql,startDate,endDate]).first.num

		if !in_use.nil? && in_use > 1
			errors.add(:hoge,"対象期間中は既に#{in_use}件の利用があります。dynaTraceの最大同時利用システム数は2件です。")
		end
	end
end
