json.array!(@user_systems) do |user_system|
  json.extract! user_system, :id
  json.url user_system_url(user_system, format: :json)
end
