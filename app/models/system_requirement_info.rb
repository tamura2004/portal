class SystemRequirementInfo < ActiveRecord::Base
  belongs_to :os_info
  belongs_to :java_info
end
