rails g model OsInfo os_name_master:references os_arch_master:references os_version_master:references
rails g model OsNameMaster name:string
rails g model OsArchMaster name:string
rails g model OsVersionMaster name:string
rails g model JavaInfo java_name_master:references java_arch_master:references java_version_master:references
rails g model JavaNameMaster name:string
rails g model JavaArchMaster name:string
rails g model JavaVersionMaster name:string

rails g model ApServerInfo ap_server_name_master:references ap_server_version_master:references
rails g model ApServerNameMaster name:string
rails g model ApServerVersionMaster name:string

