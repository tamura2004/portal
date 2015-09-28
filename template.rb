def generate(sym,*args)
  puts "rails g model #{args.join(' ')}"
  # puts "rails d model #{args.first}"
end

generate :model, "ProjectInfo", "name:string", "number:string", "group_master:references", "system_info:references"
generate :model, "SystemInfo", "name:string", "number:string", "system_requirement_info:references"
generate :model, "SystemRequirementInfo", "os_info:references", "java_info:references", "ap_server_info:references"

generate :model, "OsInfo", "name_master:references", "arch_master:references", "version_master:references", "edition_master"
generate :model, "OsNameMaster", "name:string"
generate :model, "OsArchMaster", "name:string"
generate :model, "OsVersionMaster", "name:string"

generate :model, "JavaInfo", "name_master:references", "arch_master:references", "os_info:references"
generate :model, "JavaNameMaster", "name:string"
generate :model, "JavaArchMaster", "name:string"
generate :model, "JavaVersionMaster", "name:string"

generate :model, "ApServerInfo", "name_master:references", "arch_master:references", "version_master:references"
generate :model, "ApServerVersionMaster", "name:string"

generate :model, "GroupMaster", "name:string", "department_master:references"
generate :model, "DepartmentMaster", "name:string"