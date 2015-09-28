class OsInfo < ActiveRecord::Base
  belongs_to :os_name_master
  belongs_to :os_arch_master
  belongs_to :os_version_master

  def name
    [
      os_name_master,
      os_version_master,
      os_arch_master
    ].map(&:name).join(" ")
  end
end
