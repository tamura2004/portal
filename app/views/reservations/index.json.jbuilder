json.array!(@reservations) do |reservation|
  json.extract! reservation, :id, :projectName, :userName, :startDate, :endDate
  json.url reservation_url(reservation, format: :json)
end
