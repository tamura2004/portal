%w(1.4.2 5.0 6.0 6.1 7.0 8.0 7.0u55+).each do |name|
  JavaVersion.seed do |s|
    s.name = name
  end
end
