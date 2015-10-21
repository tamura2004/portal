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
  s.java_arch_master_id = 0
  s.java_name_master_id = 0
  s.java_version_master_id = 1
end

JavaInfo.seed do |s|
  s.id = 2
  s.java_arch_master_id = 0
  s.java_name_master_id = 0
  s.java_version_master_id = 2
end

JavaInfo.seed do |s|
  s.id = 3
  s.java_arch_master_id = 0
  s.java_name_master_id = 0
  s.java_version_master_id = 3
end

JavaInfo.seed do |s|
  s.id = 4
  s.java_arch_master_id = 0
  s.java_name_master_id = 1
  s.java_version_master_id = 0
end

JavaInfo.seed do |s|
  s.id = 5
  s.java_arch_master_id = 0
  s.java_name_master_id = 1
  s.java_version_master_id = 1
end

JavaInfo.seed do |s|
  s.id = 6
  s.java_arch_master_id = 0
  s.java_name_master_id = 1
  s.java_version_master_id = 2
end

JavaInfo.seed do |s|
  s.id = 7
  s.java_arch_master_id = 0
  s.java_name_master_id = 1
  s.java_version_master_id = 3
end

JavaInfo.seed do |s|
  s.id = 8
  s.java_arch_master_id = 0
  s.java_name_master_id = 2
  s.java_version_master_id = 0
end

JavaInfo.seed do |s|
  s.id = 9
  s.java_arch_master_id = 0
  s.java_name_master_id = 2
  s.java_version_master_id = 1
end

JavaInfo.seed do |s|
  s.id = 10
  s.java_arch_master_id = 0
  s.java_name_master_id = 2
  s.java_version_master_id = 2
end

JavaInfo.seed do |s|
  s.id = 11
  s.java_arch_master_id = 0
  s.java_name_master_id = 2
  s.java_version_master_id = 3
end

JavaInfo.seed do |s|
  s.id = 12
  s.java_arch_master_id = 0
  s.java_name_master_id = 3
  s.java_version_master_id = 0
end

JavaInfo.seed do |s|
  s.id = 13
  s.java_arch_master_id = 0
  s.java_name_master_id = 3
  s.java_version_master_id = 1
end

JavaInfo.seed do |s|
  s.id = 14
  s.java_arch_master_id = 0
  s.java_name_master_id = 3
  s.java_version_master_id = 2
end

JavaInfo.seed do |s|
  s.id = 15
  s.java_arch_master_id = 0
  s.java_name_master_id = 3
  s.java_version_master_id = 3
end

JavaInfo.seed do |s|
  s.id = 16
  s.java_arch_master_id = 1
  s.java_name_master_id = 0
  s.java_version_master_id = 0
end

JavaInfo.seed do |s|
  s.id = 17
  s.java_arch_master_id = 1
  s.java_name_master_id = 0
  s.java_version_master_id = 1
end

JavaInfo.seed do |s|
  s.id = 18
  s.java_arch_master_id = 1
  s.java_name_master_id = 0
  s.java_version_master_id = 2
end

JavaInfo.seed do |s|
  s.id = 19
  s.java_arch_master_id = 1
  s.java_name_master_id = 0
  s.java_version_master_id = 3
end

JavaInfo.seed do |s|
  s.id = 20
  s.java_arch_master_id = 1
  s.java_name_master_id = 1
  s.java_version_master_id = 0
end

JavaInfo.seed do |s|
  s.id = 21
  s.java_arch_master_id = 1
  s.java_name_master_id = 1
  s.java_version_master_id = 1
end

JavaInfo.seed do |s|
  s.id = 22
  s.java_arch_master_id = 1
  s.java_name_master_id = 1
  s.java_version_master_id = 2
end

JavaInfo.seed do |s|
  s.id = 23
  s.java_arch_master_id = 1
  s.java_name_master_id = 1
  s.java_version_master_id = 3
end


JavaInfo.seed do |s|
  s.id = 24
  s.java_arch_master_id = 1
  s.java_name_master_id = 2
  s.java_version_master_id = 0
end

JavaInfo.seed do |s|
  s.id = 25
  s.java_arch_master_id = 1
  s.java_name_master_id = 2
  s.java_version_master_id = 1
end

JavaInfo.seed do |s|
  s.id = 26
  s.java_arch_master_id = 1
  s.java_name_master_id = 2
  s.java_version_master_id = 2
end

JavaInfo.seed do |s|
  s.id = 27
  s.java_arch_master_id = 1
  s.java_name_master_id = 2
  s.java_version_master_id = 3
end


JavaInfo.seed do |s|
  s.id = 28
  s.java_arch_master_id = 1
  s.java_name_master_id = 3
  s.java_version_master_id = 0
end

JavaInfo.seed do |s|
  s.id = 29
  s.java_arch_master_id = 1
  s.java_name_master_id = 3
  s.java_version_master_id = 1
end

JavaInfo.seed do |s|
  s.id = 30
  s.java_arch_master_id = 1
  s.java_name_master_id = 3
  s.java_version_master_id = 2
end

JavaInfo.seed do |s|
  s.id = 31
  s.java_arch_master_id = 1
  s.java_name_master_id = 3
  s.java_version_master_id = 3
end


JavaInfo.seed do |s|
  s.id = 32
  s.java_arch_master_id = 2
  s.java_name_master_id = 0
  s.java_version_master_id = 0
end

JavaInfo.seed do |s|
  s.id = 33
  s.java_arch_master_id = 2
  s.java_name_master_id = 0
  s.java_version_master_id = 1
end

JavaInfo.seed do |s|
  s.id = 34
  s.java_arch_master_id = 2
  s.java_name_master_id = 0
  s.java_version_master_id = 2
end

JavaInfo.seed do |s|
  s.id = 35
  s.java_arch_master_id = 2
  s.java_name_master_id = 0
  s.java_version_master_id = 3
end

JavaInfo.seed do |s|
  s.id = 36
  s.java_arch_master_id = 2
  s.java_name_master_id = 1
  s.java_version_master_id = 0
end

JavaInfo.seed do |s|
  s.id = 37
  s.java_arch_master_id = 2
  s.java_name_master_id = 1
  s.java_version_master_id = 1
end

JavaInfo.seed do |s|
  s.id = 38
  s.java_arch_master_id = 2
  s.java_name_master_id = 1
  s.java_version_master_id = 2
end

JavaInfo.seed do |s|
  s.id = 39
  s.java_arch_master_id = 2
  s.java_name_master_id = 1
  s.java_version_master_id = 3
end

JavaInfo.seed do |s|
  s.id = 40
  s.java_arch_master_id = 2
  s.java_name_master_id = 2
  s.java_version_master_id = 0
end

JavaInfo.seed do |s|
  s.id = 41
  s.java_arch_master_id = 2
  s.java_name_master_id = 2
  s.java_version_master_id = 1
end

JavaInfo.seed do |s|
  s.id = 42
  s.java_arch_master_id = 2
  s.java_name_master_id = 2
  s.java_version_master_id = 2
end

JavaInfo.seed do |s|
  s.id = 43
  s.java_arch_master_id = 2
  s.java_name_master_id = 2
  s.java_version_master_id = 3
end

JavaInfo.seed do |s|
  s.id = 44
  s.java_arch_master_id = 2
  s.java_name_master_id = 3
  s.java_version_master_id = 0
end

JavaInfo.seed do |s|
  s.id = 45
  s.java_arch_master_id = 2
  s.java_name_master_id = 3
  s.java_version_master_id = 1
end

JavaInfo.seed do |s|
  s.id = 46
  s.java_arch_master_id = 2
  s.java_name_master_id = 3
  s.java_version_master_id = 2
end

JavaInfo.seed do |s|
  s.id = 47
  s.java_arch_master_id = 2
  s.java_name_master_id = 3
  s.java_version_master_id = 3
end


OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 0
  s.os_version_master_id = 0
end

OsInfo.seed do |s|
  s.id = 1
  s.os_arch_master_id = 0
  s.os_name_master_id = 0
  s.os_version_master_id = 1
end

OsInfo.seed do |s|
  s.id = 2
  s.os_arch_master_id = 0
  s.os_name_master_id = 0
  s.os_version_master_id = 2
end

OsInfo.seed do |s|
  s.id = 3
  s.os_arch_master_id = 0
  s.os_name_master_id = 0
  s.os_version_master_id = 3
end

OsInfo.seed do |s|
  s.id = 4
  s.os_arch_master_id = 0
  s.os_name_master_id = 0
  s.os_version_master_id = 4
end

OsInfo.seed do |s|
  s.id = 5
  s.os_arch_master_id = 0
  s.os_name_master_id = 0
  s.os_version_master_id = 5
end

OsInfo.seed do |s|
  s.id = 6
  s.os_arch_master_id = 0
  s.os_name_master_id = 0
  s.os_version_master_id = 6
end

OsInfo.seed do |s|
  s.id = 7
  s.os_arch_master_id = 0
  s.os_name_master_id = 1
  s.os_version_master_id = 0
end

OsInfo.seed do |s|
  s.id = 8
  s.os_arch_master_id = 0
  s.os_name_master_id = 1
  s.os_version_master_id = 1
end

OsInfo.seed do |s|
  s.id = 9
  s.os_arch_master_id = 0
  s.os_name_master_id = 1
  s.os_version_master_id = 2
end

OsInfo.seed do |s|
  s.id = 10
  s.os_arch_master_id = 0
  s.os_name_master_id = 1
  s.os_version_master_id = 3
end

OsInfo.seed do |s|
  s.id = 11
  s.os_arch_master_id = 0
  s.os_name_master_id = 1
  s.os_version_master_id = 4
end

OsInfo.seed do |s|
  s.id = 12
  s.os_arch_master_id = 0
  s.os_name_master_id = 1
  s.os_version_master_id = 5
end

OsInfo.seed do |s|
  s.id = 13
  s.os_arch_master_id = 0
  s.os_name_master_id = 1
  s.os_version_master_id = 6
end

OsInfo.seed do |s|
  s.id = 14
  s.os_arch_master_id = 0
  s.os_name_master_id = 2
  s.os_version_master_id = 0
end

OsInfo.seed do |s|
  s.id = 15
  s.os_arch_master_id = 0
  s.os_name_master_id = 2
  s.os_version_master_id = 1
end

OsInfo.seed do |s|
  s.id = 16
  s.os_arch_master_id = 0
  s.os_name_master_id = 2
  s.os_version_master_id = 2
end

OsInfo.seed do |s|
  s.id = 17
  s.os_arch_master_id = 0
  s.os_name_master_id = 2
  s.os_version_master_id = 3
end

OsInfo.seed do |s|
  s.id = 18
  s.os_arch_master_id = 0
  s.os_name_master_id = 2
  s.os_version_master_id = 4
end

OsInfo.seed do |s|
  s.id = 19
  s.os_arch_master_id = 0
  s.os_name_master_id = 2
  s.os_version_master_id = 5
end

OsInfo.seed do |s|
  s.id = 20
  s.os_arch_master_id = 0
  s.os_name_master_id = 2
  s.os_version_master_id = 6
end

OsInfo.seed do |s|
  s.id = 21
  s.os_arch_master_id = 0
  s.os_name_master_id = 3
  s.os_version_master_id = 0
end

OsInfo.seed do |s|
  s.id = 22
  s.os_arch_master_id = 0
  s.os_name_master_id = 3
  s.os_version_master_id = 1
end

OsInfo.seed do |s|
  s.id = 23
  s.os_arch_master_id = 0
  s.os_name_master_id = 3
  s.os_version_master_id = 2
end

OsInfo.seed do |s|
  s.id = 24
  s.os_arch_master_id = 0
  s.os_name_master_id = 3
  s.os_version_master_id = 3
end

OsInfo.seed do |s|
  s.id = 25
  s.os_arch_master_id = 0
  s.os_name_master_id = 3
  s.os_version_master_id = 4
end

OsInfo.seed do |s|
  s.id = 26
  s.os_arch_master_id = 0
  s.os_name_master_id = 3
  s.os_version_master_id = 5
end

OsInfo.seed do |s|
  s.id = 27
  s.os_arch_master_id = 0
  s.os_name_master_id = 3
  s.os_version_master_id = 6
end

OsInfo.seed do |s|
  s.id = 28
  s.os_arch_master_id = 0
  s.os_name_master_id = 4
  s.os_version_master_id = 0
end

OsInfo.seed do |s|
  s.id = 29
  s.os_arch_master_id = 0
  s.os_name_master_id = 4
  s.os_version_master_id = 1
end

OsInfo.seed do |s|
  s.id = 30
  s.os_arch_master_id = 0
  s.os_name_master_id = 4
  s.os_version_master_id = 2
end

OsInfo.seed do |s|
  s.id = 31
  s.os_arch_master_id = 0
  s.os_name_master_id = 4
  s.os_version_master_id = 3
end

OsInfo.seed do |s|
  s.id = 32
  s.os_arch_master_id = 0
  s.os_name_master_id = 4
  s.os_version_master_id = 4
end

OsInfo.seed do |s|
  s.id = 33
  s.os_arch_master_id = 0
  s.os_name_master_id = 4
  s.os_version_master_id = 5
end

OsInfo.seed do |s|
  s.id = 34
  s.os_arch_master_id = 0
  s.os_name_master_id = 4
  s.os_version_master_id = 6
end

OsInfo.seed do |s|
  s.id = 35
  s.os_arch_master_id = 0
  s.os_name_master_id = 5
  s.os_version_master_id = 0
end

OsInfo.seed do |s|
  s.id = 36
  s.os_arch_master_id = 0
  s.os_name_master_id = 5
  s.os_version_master_id = 1
end

OsInfo.seed do |s|
  s.id = 37
  s.os_arch_master_id = 0
  s.os_name_master_id = 5
  s.os_version_master_id = 2
end

OsInfo.seed do |s|
  s.id = 38
  s.os_arch_master_id = 0
  s.os_name_master_id = 5
  s.os_version_master_id = 3
end

OsInfo.seed do |s|
  s.id = 39
  s.os_arch_master_id = 0
  s.os_name_master_id = 5
  s.os_version_master_id = 4
end

OsInfo.seed do |s|
  s.id = 40
  s.os_arch_master_id = 0
  s.os_name_master_id = 5
  s.os_version_master_id = 5
end

OsInfo.seed do |s|
  s.id = 41
  s.os_arch_master_id = 0
  s.os_name_master_id = 5
  s.os_version_master_id = 6
end

OsInfo.seed do |s|
  s.id = 42
  s.os_arch_master_id = 0
  s.os_name_master_id = 6
  s.os_version_master_id = 0
end

OsInfo.seed do |s|
  s.id = 43
  s.os_arch_master_id = 0
  s.os_name_master_id = 6
  s.os_version_master_id = 1
end

OsInfo.seed do |s|
  s.id = 44
  s.os_arch_master_id = 0
  s.os_name_master_id = 6
  s.os_version_master_id = 2
end

OsInfo.seed do |s|
  s.id = 45
  s.os_arch_master_id = 0
  s.os_name_master_id = 6
  s.os_version_master_id = 3
end

OsInfo.seed do |s|
  s.id = 46
  s.os_arch_master_id = 0
  s.os_name_master_id = 6
  s.os_version_master_id = 4
end

OsInfo.seed do |s|
  s.id = 47
  s.os_arch_master_id = 0
  s.os_name_master_id = 6
  s.os_version_master_id = 5
end

OsInfo.seed do |s|
  s.id = 48
  s.os_arch_master_id = 0
  s.os_name_master_id = 6
  s.os_version_master_id = 6
end

OsInfo.seed do |s|
  s.id = 49
  s.os_arch_master_id = 1
  s.os_name_master_id = 0
  s.os_version_master_id = 0
end

OsInfo.seed do |s|
  s.id = 50
  s.os_arch_master_id = 1
  s.os_name_master_id = 0
  s.os_version_master_id = 1
end

OsInfo.seed do |s|
  s.id = 51
  s.os_arch_master_id = 1
  s.os_name_master_id = 0
  s.os_version_master_id = 2
end

OsInfo.seed do |s|
  s.id = 52
  s.os_arch_master_id = 1
  s.os_name_master_id = 0
  s.os_version_master_id = 3
end

OsInfo.seed do |s|
  s.id = 53
  s.os_arch_master_id = 1
  s.os_name_master_id = 0
  s.os_version_master_id = 4
end

OsInfo.seed do |s|
  s.id = 54
  s.os_arch_master_id = 1
  s.os_name_master_id = 0
  s.os_version_master_id = 5
end

OsInfo.seed do |s|
  s.id = 55
  s.os_arch_master_id = 1
  s.os_name_master_id = 0
  s.os_version_master_id = 6
end

OsInfo.seed do |s|
  s.id = 56
  s.os_arch_master_id = 1
  s.os_name_master_id = 1
  s.os_version_master_id = 0
end

OsInfo.seed do |s|
  s.id = 57
  s.os_arch_master_id = 1
  s.os_name_master_id = 1
  s.os_version_master_id = 1
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 1
  s.os_name_master_id = 1
  s.os_version_master_id = 2
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 1
  s.os_name_master_id = 1
  s.os_version_master_id = 3
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 1
  s.os_name_master_id = 1
  s.os_version_master_id = 4
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 1
  s.os_name_master_id = 1
  s.os_version_master_id = 5
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 1
  s.os_name_master_id = 1
  s.os_version_master_id = 6
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 1
  s.os_name_master_id = 2
  s.os_version_master_id = 0
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 1
  s.os_name_master_id = 2
  s.os_version_master_id = 1
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 1
  s.os_name_master_id = 2
  s.os_version_master_id = 2
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 1
  s.os_name_master_id = 2
  s.os_version_master_id = 3
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 1
  s.os_name_master_id = 2
  s.os_version_master_id = 4
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 1
  s.os_name_master_id = 2
  s.os_version_master_id = 5
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 1
  s.os_name_master_id = 2
  s.os_version_master_id = 6
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 1
  s.os_name_master_id = 3
  s.os_version_master_id = 0
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 1
  s.os_name_master_id = 3
  s.os_version_master_id = 1
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 1
  s.os_name_master_id = 3
  s.os_version_master_id = 2
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 1
  s.os_name_master_id = 3
  s.os_version_master_id = 3
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 1
  s.os_name_master_id = 3
  s.os_version_master_id = 4
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 1
  s.os_name_master_id = 3
  s.os_version_master_id = 5
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 1
  s.os_name_master_id = 3
  s.os_version_master_id = 6
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 1
  s.os_name_master_id = 4
  s.os_version_master_id = 0
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 1
  s.os_name_master_id = 4
  s.os_version_master_id = 1
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 1
  s.os_name_master_id = 4
  s.os_version_master_id = 2
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 1
  s.os_name_master_id = 4
  s.os_version_master_id = 3
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 1
  s.os_name_master_id = 4
  s.os_version_master_id = 4
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 1
  s.os_name_master_id = 4
  s.os_version_master_id = 5
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 1
  s.os_name_master_id = 4
  s.os_version_master_id = 6
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 1
  s.os_name_master_id = 5
  s.os_version_master_id = 0
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 1
  s.os_name_master_id = 5
  s.os_version_master_id = 1
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 1
  s.os_name_master_id = 5
  s.os_version_master_id = 2
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 1
  s.os_name_master_id = 5
  s.os_version_master_id = 3
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 1
  s.os_name_master_id = 5
  s.os_version_master_id = 4
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 1
  s.os_name_master_id = 5
  s.os_version_master_id = 5
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 1
  s.os_name_master_id = 5
  s.os_version_master_id = 6
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 1
  s.os_name_master_id = 6
  s.os_version_master_id = 0
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 1
  s.os_name_master_id = 6
  s.os_version_master_id = 1
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 1
  s.os_name_master_id = 6
  s.os_version_master_id = 2
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 1
  s.os_name_master_id = 6
  s.os_version_master_id = 3
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 1
  s.os_name_master_id = 6
  s.os_version_master_id = 4
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 1
  s.os_name_master_id = 6
  s.os_version_master_id = 5
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 1
  s.os_name_master_id = 6
  s.os_version_master_id = 6
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 2
  s.os_name_master_id = 0
  s.os_version_master_id = 0
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 2
  s.os_name_master_id = 0
  s.os_version_master_id = 1
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 2
  s.os_name_master_id = 0
  s.os_version_master_id = 2
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 2
  s.os_name_master_id = 0
  s.os_version_master_id = 3
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 2
  s.os_name_master_id = 0
  s.os_version_master_id = 4
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 2
  s.os_name_master_id = 0
  s.os_version_master_id = 5
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 2
  s.os_name_master_id = 0
  s.os_version_master_id = 6
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 2
  s.os_name_master_id = 1
  s.os_version_master_id = 0
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 2
  s.os_name_master_id = 1
  s.os_version_master_id = 1
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 2
  s.os_name_master_id = 1
  s.os_version_master_id = 2
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 2
  s.os_name_master_id = 1
  s.os_version_master_id = 3
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 2
  s.os_name_master_id = 1
  s.os_version_master_id = 4
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 2
  s.os_name_master_id = 1
  s.os_version_master_id = 5
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 2
  s.os_name_master_id = 1
  s.os_version_master_id = 6
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 2
  s.os_name_master_id = 2
  s.os_version_master_id = 0
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 2
  s.os_name_master_id = 2
  s.os_version_master_id = 1
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 2
  s.os_name_master_id = 2
  s.os_version_master_id = 2
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 2
  s.os_name_master_id = 2
  s.os_version_master_id = 3
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 2
  s.os_name_master_id = 2
  s.os_version_master_id = 4
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 2
  s.os_name_master_id = 2
  s.os_version_master_id = 5
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 2
  s.os_name_master_id = 2
  s.os_version_master_id = 6
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 2
  s.os_name_master_id = 3
  s.os_version_master_id = 0
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 2
  s.os_name_master_id = 3
  s.os_version_master_id = 1
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 2
  s.os_name_master_id = 3
  s.os_version_master_id = 2
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 2
  s.os_name_master_id = 3
  s.os_version_master_id = 3
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 2
  s.os_name_master_id = 3
  s.os_version_master_id = 4
end

OsInfo.seed do |s|
  s.id= 0
  s.os_arch_master_id = 2
  s.os_name_master_id = 3
  s.os_version_master_id = 5
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 2
  s.os_name_master_id = 3
  s.os_version_master_id = 6
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 2
  s.os_name_master_id = 4
  s.os_version_master_id = 0
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 2
  s.os_name_master_id = 4
  s.os_version_master_id = 1
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 2
  s.os_name_master_id = 4
  s.os_version_master_id = 2
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 2
  s.os_name_master_id = 4
  s.os_version_master_id = 3
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 2
  s.os_name_master_id = 4
  s.os_version_master_id = 4
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 2
  s.os_name_master_id = 4
  s.os_version_master_id = 5
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 2
  s.os_name_master_id = 4
  s.os_version_master_id = 6
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 2
  s.os_name_master_id = 5
  s.os_version_master_id = 0
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 2
  s.os_name_master_id = 5
  s.os_version_master_id = 1
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 2
  s.os_name_master_id = 5
  s.os_version_master_id = 2
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 2
  s.os_name_master_id = 5
  s.os_version_master_id = 3
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 2
  s.os_name_master_id = 5
  s.os_version_master_id = 4
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 2
  s.os_name_master_id = 5
  s.os_version_master_id = 5
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 2
  s.os_name_master_id = 5
  s.os_version_master_id = 6
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 2
  s.os_name_master_id = 6
  s.os_version_master_id = 0
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 2
  s.os_name_master_id = 6
  s.os_version_master_id = 1
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 2
  s.os_name_master_id = 6
  s.os_version_master_id = 2
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 2
  s.os_name_master_id = 6
  s.os_version_master_id = 3
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 2
  s.os_name_master_id = 6
  s.os_version_master_id = 4
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 2
  s.os_name_master_id = 6
  s.os_version_master_id = 5
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 2
  s.os_name_master_id = 6
  s.os_version_master_id = 6
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 3
  s.os_name_master_id = 0
  s.os_version_master_id = 0
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 3
  s.os_name_master_id = 0
  s.os_version_master_id = 1
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 3
  s.os_name_master_id = 0
  s.os_version_master_id = 2
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 3
  s.os_name_master_id = 0
  s.os_version_master_id = 3
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 3
  s.os_name_master_id = 0
  s.os_version_master_id = 4
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 3
  s.os_name_master_id = 0
  s.os_version_master_id = 5
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 3
  s.os_name_master_id = 0
  s.os_version_master_id = 6
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 3
  s.os_name_master_id = 1
  s.os_version_master_id = 0
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 3
  s.os_name_master_id = 1
  s.os_version_master_id = 1
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 3
  s.os_name_master_id = 1
  s.os_version_master_id = 2
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 3
  s.os_name_master_id = 1
  s.os_version_master_id = 3
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 3
  s.os_name_master_id = 1
  s.os_version_master_id = 4
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 3
  s.os_name_master_id = 1
  s.os_version_master_id = 5
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 3
  s.os_name_master_id = 1
  s.os_version_master_id = 6
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 3
  s.os_name_master_id = 2
  s.os_version_master_id = 0
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 3
  s.os_name_master_id = 2
  s.os_version_master_id = 1
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 3
  s.os_name_master_id = 2
  s.os_version_master_id = 2
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 3
  s.os_name_master_id = 2
  s.os_version_master_id = 3
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 3
  s.os_name_master_id = 2
  s.os_version_master_id = 4
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 3
  s.os_name_master_id = 2
  s.os_version_master_id = 5
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 3
  s.os_name_master_id = 2
  s.os_version_master_id = 6
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 3
  s.os_name_master_id = 3
  s.os_version_master_id = 0
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 3
  s.os_name_master_id = 3
  s.os_version_master_id = 1
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 3
  s.os_name_master_id = 3
  s.os_version_master_id = 2
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 3
  s.os_name_master_id = 3
  s.os_version_master_id = 3
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 3
  s.os_name_master_id = 3
  s.os_version_master_id = 4
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 3
  s.os_name_master_id = 3
  s.os_version_master_id = 5
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 3
  s.os_name_master_id = 3
  s.os_version_master_id = 6
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 3
  s.os_name_master_id = 4
  s.os_version_master_id = 0
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 3
  s.os_name_master_id = 4
  s.os_version_master_id = 1
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 3
  s.os_name_master_id = 4
  s.os_version_master_id = 2
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 3
  s.os_name_master_id = 4
  s.os_version_master_id = 3
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 3
  s.os_name_master_id = 4
  s.os_version_master_id = 4
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 3
  s.os_name_master_id = 4
  s.os_version_master_id = 5
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 3
  s.os_name_master_id = 4
  s.os_version_master_id = 6
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 3
  s.os_name_master_id = 5
  s.os_version_master_id = 0
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 3
  s.os_name_master_id = 5
  s.os_version_master_id = 1
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 3
  s.os_name_master_id = 5
  s.os_version_master_id = 2
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 3
  s.os_name_master_id = 5
  s.os_version_master_id = 3
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 3
  s.os_name_master_id = 5
  s.os_version_master_id = 4
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 3
  s.os_name_master_id = 5
  s.os_version_master_id = 5
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 3
  s.os_name_master_id = 5
  s.os_version_master_id = 6
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 3
  s.os_name_master_id = 6
  s.os_version_master_id = 0
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 3
  s.os_name_master_id = 6
  s.os_version_master_id = 1
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 3
  s.os_name_master_id = 6
  s.os_version_master_id = 2
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 3
  s.os_name_master_id = 6
  s.os_version_master_id = 3
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 3
  s.os_name_master_id = 6
  s.os_version_master_id = 4
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 3
  s.os_name_master_id = 6
  s.os_version_master_id = 5
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 3
  s.os_name_master_id = 6
  s.os_version_master_id = 6
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 4
  s.os_name_master_id = 0
  s.os_version_master_id = 0
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 4
  s.os_name_master_id = 0
  s.os_version_master_id = 1
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 4
  s.os_name_master_id = 0
  s.os_version_master_id = 2
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 4
  s.os_name_master_id = 0
  s.os_version_master_id = 3
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 4
  s.os_name_master_id = 0
  s.os_version_master_id = 4
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 4
  s.os_name_master_id = 0
  s.os_version_master_id = 5
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 4
  s.os_name_master_id = 0
  s.os_version_master_id = 6
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 4
  s.os_name_master_id = 1
  s.os_version_master_id = 0
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 4
  s.os_name_master_id = 1
  s.os_version_master_id = 1
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 4
  s.os_name_master_id = 1
  s.os_version_master_id = 2
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 4
  s.os_name_master_id = 1
  s.os_version_master_id = 3
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 4
  s.os_name_master_id = 1
  s.os_version_master_id = 4
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 4
  s.os_name_master_id = 1
  s.os_version_master_id = 5
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 4
  s.os_name_master_id = 1
  s.os_version_master_id = 6
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 4
  s.os_name_master_id = 2
  s.os_version_master_id = 0
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 4
  s.os_name_master_id = 2
  s.os_version_master_id = 1
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 4
  s.os_name_master_id = 2
  s.os_version_master_id = 2
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 4
  s.os_name_master_id = 2
  s.os_version_master_id = 3
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 4
  s.os_name_master_id = 2
  s.os_version_master_id = 4
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 2
  s.os_version_master_id = 5
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 2
  s.os_version_master_id = 6
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 3
  s.os_version_master_id = 0
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 3
  s.os_version_master_id = 1
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 3
  s.os_version_master_id = 2
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 3
  s.os_version_master_id = 3
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 3
  s.os_version_master_id = 4
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 3
  s.os_version_master_id = 5
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 3
  s.os_version_master_id = 6
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 4
  s.os_version_master_id = 0
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 4
  s.os_version_master_id = 1
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 4
  s.os_version_master_id = 2
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 4
  s.os_version_master_id = 3
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 4
  s.os_version_master_id = 4
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 4
  s.os_version_master_id = 5
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 4
  s.os_version_master_id = 6
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 5
  s.os_version_master_id = 0
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 5
  s.os_version_master_id = 1
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 5
  s.os_version_master_id = 2
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 5
  s.os_version_master_id = 3
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 5
  s.os_version_master_id = 4
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 5
  s.os_version_master_id = 5
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 5
  s.os_version_master_id = 6
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 6
  s.os_version_master_id = 0
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 6
  s.os_version_master_id = 1
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 6
  s.os_version_master_id = 2
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 6
  s.os_version_master_id = 3
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 6
  s.os_version_master_id = 4
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 6
  s.os_version_master_id = 5
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 6
  s.os_version_master_id = 6
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 0
  s.os_version_master_id = 0
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 0
  s.os_version_master_id = 1
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 0
  s.os_version_master_id = 2
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 0
  s.os_version_master_id = 3
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 0
  s.os_version_master_id = 4
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 0
  s.os_version_master_id = 5
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 0
  s.os_version_master_id = 6
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 1
  s.os_version_master_id = 0
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 1
  s.os_version_master_id = 1
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 1
  s.os_version_master_id = 2
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 1
  s.os_version_master_id = 3
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 1
  s.os_version_master_id = 4
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 1
  s.os_version_master_id = 5
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 1
  s.os_version_master_id = 6
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 2
  s.os_version_master_id = 0
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 2
  s.os_version_master_id = 1
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 2
  s.os_version_master_id = 2
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 2
  s.os_version_master_id = 3
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 2
  s.os_version_master_id = 4
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 2
  s.os_version_master_id = 5
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 2
  s.os_version_master_id = 6
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 3
  s.os_version_master_id = 0
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 3
  s.os_version_master_id = 1
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 3
  s.os_version_master_id = 2
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 3
  s.os_version_master_id = 3
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 3
  s.os_version_master_id = 4
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 3
  s.os_version_master_id = 5
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 3
  s.os_version_master_id = 6
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 4
  s.os_version_master_id = 0
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 4
  s.os_version_master_id = 1
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 4
  s.os_version_master_id = 2
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 4
  s.os_version_master_id = 3
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 4
  s.os_version_master_id = 4
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 4
  s.os_version_master_id = 5
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 4
  s.os_version_master_id = 6
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 5
  s.os_version_master_id = 0
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 5
  s.os_version_master_id = 1
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 5
  s.os_version_master_id = 2
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 5
  s.os_version_master_id = 3
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 5
  s.os_version_master_id = 4
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 5
  s.os_version_master_id = 5
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 5
  s.os_version_master_id = 6
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 6
  s.os_version_master_id = 0
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 6
  s.os_version_master_id = 1
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 6
  s.os_version_master_id = 2
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 6
  s.os_version_master_id = 3
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 6
  s.os_version_master_id = 4
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 6
  s.os_version_master_id = 5
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 6
  s.os_version_master_id = 6
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 0
  s.os_version_master_id = 0
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 0
  s.os_version_master_id = 1
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 0
  s.os_version_master_id = 2
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 0
  s.os_version_master_id = 3
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 0
  s.os_version_master_id = 4
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 0
  s.os_version_master_id = 5
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 0
  s.os_version_master_id = 6
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 1
  s.os_version_master_id = 0
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 1
  s.os_version_master_id = 1
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 1
  s.os_version_master_id = 2
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 1
  s.os_version_master_id = 3
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 1
  s.os_version_master_id = 4
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 1
  s.os_version_master_id = 5
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 1
  s.os_version_master_id = 6
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 2
  s.os_version_master_id = 0
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 2
  s.os_version_master_id = 1
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 2
  s.os_version_master_id = 2
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 2
  s.os_version_master_id = 3
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 2
  s.os_version_master_id = 4
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 2
  s.os_version_master_id = 5
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 2
  s.os_version_master_id = 6
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 3
  s.os_version_master_id = 0
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 3
  s.os_version_master_id = 1
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 3
  s.os_version_master_id = 2
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 3
  s.os_version_master_id = 3
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 3
  s.os_version_master_id = 4
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 3
  s.os_version_master_id = 5
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 3
  s.os_version_master_id = 6
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 4
  s.os_version_master_id = 0
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 4
  s.os_version_master_id = 1
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 4
  s.os_version_master_id = 2
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 4
  s.os_version_master_id = 3
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 4
  s.os_version_master_id = 4
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 4
  s.os_version_master_id = 5
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 4
  s.os_version_master_id = 6
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 5
  s.os_version_master_id = 0
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 5
  s.os_version_master_id = 1
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 5
  s.os_version_master_id = 2
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 5
  s.os_version_master_id = 3
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 5
  s.os_version_master_id = 4
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 5
  s.os_version_master_id = 5
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 5
  s.os_version_master_id = 6
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 6
  s.os_version_master_id = 0
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 6
  s.os_version_master_id = 1
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 6
  s.os_version_master_id = 2
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 6
  s.os_version_master_id = 3
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 6
  s.os_version_master_id = 4
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 6
  s.os_version_master_id = 5
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 6
  s.os_version_master_id = 6
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 0
  s.os_version_master_id = 0
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 0
  s.os_version_master_id = 1
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 0
  s.os_version_master_id = 2
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 0
  s.os_version_master_id = 3
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 0
  s.os_version_master_id = 4
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 0
  s.os_version_master_id = 5
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 0
  s.os_version_master_id = 6
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 1
  s.os_version_master_id = 0
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 1
  s.os_version_master_id = 1
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 1
  s.os_version_master_id = 2
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 1
  s.os_version_master_id = 3
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 1
  s.os_version_master_id = 4
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 1
  s.os_version_master_id = 5
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 1
  s.os_version_master_id = 6
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 2
  s.os_version_master_id = 0
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 2
  s.os_version_master_id = 1
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 2
  s.os_version_master_id = 2
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 2
  s.os_version_master_id = 3
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 2
  s.os_version_master_id = 4
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 2
  s.os_version_master_id = 5
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 2
  s.os_version_master_id = 6
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 3
  s.os_version_master_id = 0
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 3
  s.os_version_master_id = 1
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 3
  s.os_version_master_id = 2
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 3
  s.os_version_master_id = 3
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 3
  s.os_version_master_id = 4
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 3
  s.os_version_master_id = 5
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 3
  s.os_version_master_id = 6
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 4
  s.os_version_master_id = 0
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 4
  s.os_version_master_id = 1
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 4
  s.os_version_master_id = 2
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 4
  s.os_version_master_id = 3
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 4
  s.os_version_master_id = 4
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 4
  s.os_version_master_id = 5
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 4
  s.os_version_master_id = 6
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 5
  s.os_version_master_id = 0
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 5
  s.os_version_master_id = 1
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 5
  s.os_version_master_id = 2
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 5
  s.os_version_master_id = 3
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 5
  s.os_version_master_id = 4
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 5
  s.os_version_master_id = 5
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 5
  s.os_version_master_id = 6
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 6
  s.os_version_master_id = 0
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 6
  s.os_version_master_id = 1
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 6
  s.os_version_master_id = 2
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 6
  s.os_version_master_id = 3
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 6
  s.os_version_master_id = 4
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 6
  s.os_version_master_id = 5
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 6
  s.os_version_master_id = 6
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 0
  s.os_version_master_id = 0
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 0
  s.os_version_master_id = 1
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 0
  s.os_version_master_id = 2
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 0
  s.os_version_master_id = 3
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 0
  s.os_version_master_id = 4
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 0
  s.os_version_master_id = 5
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 0
  s.os_version_master_id = 6
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 1
  s.os_version_master_id = 0
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 1
  s.os_version_master_id = 1
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 1
  s.os_version_master_id = 2
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 1
  s.os_version_master_id = 3
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 1
  s.os_version_master_id = 4
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 1
  s.os_version_master_id = 5
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 1
  s.os_version_master_id = 6
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 2
  s.os_version_master_id = 0
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 2
  s.os_version_master_id = 1
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 2
  s.os_version_master_id = 2
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 2
  s.os_version_master_id = 3
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 2
  s.os_version_master_id = 4
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 2
  s.os_version_master_id = 5
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 2
  s.os_version_master_id = 6
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 3
  s.os_version_master_id = 0
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 3
  s.os_version_master_id = 1
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 3
  s.os_version_master_id = 2
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 3
  s.os_version_master_id = 3
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 3
  s.os_version_master_id = 4
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 3
  s.os_version_master_id = 5
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 3
  s.os_version_master_id = 6
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 4
  s.os_version_master_id = 0
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 4
  s.os_version_master_id = 1
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 4
  s.os_version_master_id = 2
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 4
  s.os_version_master_id = 3
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 4
  s.os_version_master_id = 4
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 4
  s.os_version_master_id = 5
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 4
  s.os_version_master_id = 6
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 5
  s.os_version_master_id = 0
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 5
  s.os_version_master_id = 1
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 5
  s.os_version_master_id = 2
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 5
  s.os_version_master_id = 3
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 5
  s.os_version_master_id = 4
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 5
  s.os_version_master_id = 5
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 5
  s.os_version_master_id = 6
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 6
  s.os_version_master_id = 0
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 6
  s.os_version_master_id = 1
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 6
  s.os_version_master_id = 2
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 6
  s.os_version_master_id = 3
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 6
  s.os_version_master_id = 4
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 6
  s.os_version_master_id = 5
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 6
  s.os_version_master_id = 6
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 0
  s.os_version_master_id = 0
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 0
  s.os_version_master_id = 1
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 0
  s.os_version_master_id = 2
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 0
  s.os_version_master_id = 3
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 0
  s.os_version_master_id = 4
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 0
  s.os_version_master_id = 5
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 0
  s.os_version_master_id = 6
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 1
  s.os_version_master_id = 0
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 1
  s.os_version_master_id = 1
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 1
  s.os_version_master_id = 2
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 1
  s.os_version_master_id = 3
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 1
  s.os_version_master_id = 4
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 1
  s.os_version_master_id = 5
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 1
  s.os_version_master_id = 6
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 2
  s.os_version_master_id = 0
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 2
  s.os_version_master_id = 1
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 2
  s.os_version_master_id = 2
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 2
  s.os_version_master_id = 3
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 2
  s.os_version_master_id = 4
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 2
  s.os_version_master_id = 5
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 2
  s.os_version_master_id = 6
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 3
  s.os_version_master_id = 0
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 3
  s.os_version_master_id = 1
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 3
  s.os_version_master_id = 2
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 3
  s.os_version_master_id = 3
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 3
  s.os_version_master_id = 4
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 3
  s.os_version_master_id = 5
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 3
  s.os_version_master_id = 6
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 4
  s.os_version_master_id = 0
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 4
  s.os_version_master_id = 1
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 4
  s.os_version_master_id = 2
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 4
  s.os_version_master_id = 3
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 4
  s.os_version_master_id = 4
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 4
  s.os_version_master_id = 5
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 4
  s.os_version_master_id = 6
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 5
  s.os_version_master_id = 0
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 5
  s.os_version_master_id = 1
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 5
  s.os_version_master_id = 2
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 5
  s.os_version_master_id = 3
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 5
  s.os_version_master_id = 4
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 5
  s.os_version_master_id = 5
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 5
  s.os_version_master_id = 6
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 6
  s.os_version_master_id = 0
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 6
  s.os_version_master_id = 1
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 6
  s.os_version_master_id = 2
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 6
  s.os_version_master_id = 3
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 6
  s.os_version_master_id = 4
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 6
  s.os_version_master_id = 5
end

OsInfo.seed do |s|
  s.id = 0
  s.os_arch_master_id = 0
  s.os_name_master_id = 6
  s.os_version_master_id = 6
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






