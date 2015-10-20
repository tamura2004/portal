slim
bootstrap3
fontawesome
device
rspec

## アプリケーション作成
rails new portal -B -T

## モデル生成
rails g model reservation user_info:references project_info:references start_date end_date
rails g model user_info group_master:references mail_address:string name:string
rails g model group_master department_master:references name:string
rails g model department_master name:string
rails g model project_info system_info:references management_number:string name:string
rails g model system_info management_number:string name:string os_name_master:references java_name_master:references java_version_master:references ap_server_master:references ap_server_number:integer
rails g model os_name_master name:string
rails g model java_version_master name:string
rails g model java_name_master name:string
rails g model ap_server_master name:string
rails g model system_requirement_info os_name_master:references java_name_master:references java_version_master:references ap_server_master:references

## コントローラ作成
rails g scaffold_controller reservation

## slim
gem "slim-rails"

## bootstrap/font-awesome
source 'https://rails-assets.org' do
  gem 'rails-assets-bootstrap-sass-official'
  gem 'rails-assets-bootswatch-sass'
  gem 'rails-assets-fontawesome'
end

## devise
gem "bcrypt"
gem "devise"

rals g devise:install

config/environments/
config.action_mailer.default_url_options = {host:"localhost", port:3000}

rails g controller home index

rails g device user_info

# master管理画面
