class Java < ActiveRecord::Base
  paginates_per 5

  NAMES = ["Oracle(Sun)JVM","IBM JVM","Oralce Jrockit","HP JVM"],
  VERSIONS = ["1.4.2","5.0","6.0","7.0"],
  BITS = ["32bit","64bit"]

  def full_name
    [name,version,bit].delete_if(&:blank?).join(" ")
  end

end
