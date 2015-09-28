class SystemInfoView < ActiveRecord::Base
  belongs_to :os_info
  belongs_to :java_info
  belongs_to :ap_server_info
end
