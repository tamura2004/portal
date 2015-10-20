os_archs = %w(x86 x64 SPARC32 SPARC64 P32 P64 IA-64 PA-RISC z31 z64)
os_archs.each_with_index do |name,id|
  OsArchMaster.seed do |s|
    s.id = id
    s.name = name
  end
end

os_names = ["Windows Server","Linux","Solaris","AIX","HP-UX","z/Linux","z/OS"]
os_names.each_with_index do |name,id|
  OsNameMaster.seed do |s|
    s.id = id
    s.name = name
  end
end

os_versions = %w(2008 2012 9+ 10+ 5.2 6.1 7.1)
os_versions.each_with_index do |name,id|
  OsVersionMaster.seed do |s|
    s.id = id
    s.name = name
  end
end

java_archs = %w(32bit 64bit)
java_archs.each_with_index do |name,id|
  JavaArchMaster.seed do |s|
    s.id = id
    s.name = name
  end
end

java_names = ["Oracle(Sun) JVM","IBM JVM","Oracle Jrockit","HP JVM"]
java_names.each_with_index do |name,id|
  JavaNameMaster.seed do |s|
    s.id = id
    s.name = name
  end
end

java_versions = %w(1.4.2 5.0 6.0 7.0)
java_versions.each_with_index do |name,id|
  JavaVersionMaster.seed do |s|
    s.id = id
    s.name = name
  end
end

ap_server_names = ["Apache Web Server", "Microsoft IIS","IBM HTTP Server","Oracle Http Server"]
ap_server_names.each_with_index do |name,id|
  ApServerNameMaster.seed do |s|
    s.id = id
    s.name = name
  end
end

ap_server_versions = %w(2.0 2.2 2.4 6 7 7.5 8 10 11)
ap_server_versions.each_with_index do |name,id|
  ApServerVersionMaster.seed do |s|
    s.id = id
    s.name = name
  end
end

JavaInfo.seed do |s|
  s.id = 0
  s.java_arch_master_id = 0
  s.java_name_master_id = 0
  s.java_version_master_id = 0
end

JavaInfo.seed do |s|
  s.id = 1
  s.java_arch_master_id = 1
  s.java_name_master_id = 1
  s.java_version_master_id = 1
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 0
  s.os_version_master_id = 0
end

OsInfo.seed do |s|
  s.id = 1
  s.os_arch_master_id = 1
  s.os_name_master_id = 1
  s.os_version_master_id = 1
end

SystemRequirementInfo.seed do |s|
  s.id = 0
  s.java_info_id = 0
  s.os_info_id = 0
end

ApServerInfo.seed do |s|
  s.id = 0
  s.ap_server_name_master_id = 0
  s.ap_server_version_master_id = 0
end

ApServerInfo.seed do |s|
  s.id = 1
  s.ap_server_name_master_id = 1
  s.ap_server_version_master_id = 1
end

7.times do |n|
  DepartmentMaster.seed do |s|
    s.id = n
    s.name = "第#{n}開発部"
  end
end

7.times do |n|
  GroupMaster.seed do |s|
    s.id = n
    s.name = "第#{n}グループ"
    s.department_master_id = 0
  end
end

ProjectInfo.seed do |s|
  s.id = 0
  s.name = "MyString"
  s.number = "MyString"
  s.group_master_id = 0
  s.system_info_id = 0
end






