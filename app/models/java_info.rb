class JavaInfo < ActiveRecord::Base
  belongs_to :osName
  belongs_to :javaName
  belongs_to :javaVersion
  belongs_to :cpuArch
end
