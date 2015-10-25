class Os < ActiveRecord::Base

  NAMES = ["Windows Server","Linux","Solaris","AIX","HP-UX","z/Linux","z/OS"]
  VERSIONS = %w(2008 2012 9+ 10+ 5.2 6.1 7.1)
  ARCHS = %w(x86 x64 SPARC32 SPARC64 P32 P64 IA-64 PA-RISC z31 z64)

  def full_name
    [name, version, edition, cpu].delete_if(&:blank?).join(" ")
  end

end
