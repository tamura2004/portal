json.array!(@javas) do |java|
  json.extract! java, :id
  json.url java_url(java, format: :json)
end
