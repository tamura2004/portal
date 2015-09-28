class ProjectInfo < ActiveRecord::Base
  belongs_to :group_master
  belongs_to :system_info
end
