class JavaInfo < ActiveRecord::Base
  belongs_to :java_name_master
  belongs_to :java_arch_master
  belongs_to :java_version_master

  def name
    [
      java_name_master,
      java_version_master,
      java_arch_master
    ].map(&:name).join(" ")
  end

end
