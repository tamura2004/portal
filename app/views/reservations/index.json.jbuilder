json.array!(@reservations) do |reservation|
  json.extract! reservation, :id, :projectName, :userName, :start_date, :end_date
  json.url reservation_url(reservation, format: :json)
end
