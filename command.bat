rails g model System name:string number:string os:references java:references ap:references
rails g model Dyna os:references java:references
rails g model Group name:string dept:references
rails g model Dept name:string
rails g model User name:string email:string group:references hashed_password:string
rails g model Reserve date:date system:references
rails g model Os name:string version:integer edition:integer cpu:integer
rails g model Java name:string version:integer bit:integer

# admin, staff
