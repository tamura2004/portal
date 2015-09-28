class SystemInfo < ActiveRecord::Base
  belongs_to :system_requirement_info
  belongs_to :ap_server_info
end
