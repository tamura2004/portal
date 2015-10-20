class Reservation < ActiveRecord::Base
	belongs_to :project_info
	belongs_to :user

	attr_accessor :top,:left,:width

	validate :multiplex_be_under_license_number
	# validates :projectName, presence: true

	def multiplex_be_under_license_number

		sql = <<-'EOL'
			with
				ranges as (
					select *
						from reservations
						where ? <= end_date and start_date <= ? and id <> ?
				),
				points as (
					select distinct start_date as date from ranges
					union
					select distinct end_date as date from ranges
				)
			select max(v) as num from (
				select count(*) as v
					from points,ranges
					where points.date between ranges.start_date and ranges.end_date
					group by points.date
			);
		EOL

		id_not_null = id || -1 # dirty hack NULL回避
		in_use = Reservation.find_by_sql([sql,start_date,end_date,id_not_null]).first.num

		if !in_use.nil? && in_use >= 2
			errors.add(:hoge,"対象期間中は既に#{in_use}件の利用があります。dynaTraceの最大同時利用システム数は2件です。")
		end
	end
end
