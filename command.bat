rails g model ProjectInfo name:string number:string group_master:references system_info:references
rails d model ProjectInfo
rails g model SystemInfo name:string number:string system_requirement_info:references
rails d model SystemInfo
rails g model SystemRequirementInfo os_info:references java_info:references ap_server_info:references
rails d model SystemRequirementInfo
rails g model OsInfo name_master:references arch_master:references version_master:references edition_master
rails d model OsInfo
rails g model JavaInfo name_master:references arch_master:references os_info:references
rails d model JavaInfo
rails g model NameMaster name:string
rails d model NameMaster
rails g model ArchMaster name:string
rails d model ArchMaster
rails g model VersionMaster name:string
rails d model VersionMaster
rails g model EditionMaster name:string
rails d model EditionMaster
rails g model ApServerInfo name_master:references arch_master:references version_master:references
rails d model ApServerInfo
rails g model GroupMaster name:string department_master:references
rails d model GroupMaster
rails g model DepartmentMaster name:string
rails d model DepartmentMaster
