class SystemInfo < ActiveRecord::Base
  belongs_to :osInfo
  belongs_to :javaInfo
  belongs_to :webServerInfo
end
