class ApServerInfo < ActiveRecord::Base
  belongs_to :ap_server_name_master
  belongs_to :ap_server_version_master

  def name
    [
      ap_server_name_master,
      ap_server_version_master
    ].map(&:name).join(" ")
  end



end
