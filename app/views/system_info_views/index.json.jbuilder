json.array!(@system_info_views) do |system_info_view|
  json.extract! system_info_view, :id, :name, :number, :os_info_id, :java_info_id, :ap_server_info_id
  json.url system_info_view_url(system_info_view, format: :json)
end
