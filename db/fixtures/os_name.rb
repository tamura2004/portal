%w(Windows Linux Solaris AIX HP-UX z/Linux zOS).each do |name|
  OsName.seed do |s|
    s.name = name
  end
end


