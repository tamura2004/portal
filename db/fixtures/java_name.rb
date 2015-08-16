%w(Oracle(Sun) IBM OracleJRockit HP SAP Fujitsu Hitachiv OpenJDK).each do |name|
  JavaName.seed do |s|
    s.name = name
  end
end

