# OS
OS_SEEDS = [
  ["Windows Server","","",["x86","x64"]],
  ["Linux","","",["x86","x64"]],
  ["Solalis","9+","",["SPARC32","SPARC64"]],
  ["Solalis","10+","",["x86","x64"]],
  ["AIX",["5.2","6.1","7.1"],"",["Power32","Power64"]],
  ["HP/UX","","",["IA64","PA=RISC"]],
  [["z/Linux","z/OS"],"","",["z31","z64"]],
  [["該当なし","よくわからない"],"","",""]
]

os_id = 1

OS_SEEDS.each do |names,versions,editions,cpus|
  names = [names] if names.is_a?(String)
  versions = [versions] if versions.is_a?(String)
  editions = [editions] if editions.is_a?(String)
  cpus = [cpus] if cpus.is_a?(String)

  names.each do |name|
    versions.each do |version|
      editions.each do |edition|
        cpus.each do |cpu|
          Os.seed do |s|
            s.id = os_id
            s.name = name
            s.version = version
            s.edition = edition
            s.cpu = cpu
          end
          os_id += 1
        end
      end
    end
  end
end

# Java
JAVA_SEEDS = [
  [
    ["Oracle(Sun)JVM","IBM JVM","Oralce Jrockit","HP JVM"],
    ["1.4.2","5.0","6.0","7.0"],
    ["32bit","64bit"]
  ]
]

java_id = 1

JAVA_SEEDS.each do |names, versions, bits|
  names.each do |name|
    versions.each do |version|
      bits.each do |bit|
        next if name == "Oralce Jrockit" && bit == "64bit"
        next if name == "HP JVM" && bit == "64bit"
        next if name != "Oracle(Sun)JVM" && version == "7.0"
        Java.seed do |s|
          s.id = java_id
          s.name = name
          s.version = version
          s.bit = bit
        end
        java_id += 1
      end
    end
  end
end

Java.seed do |s|
  s.id = java_id
  s.name = "該当なし"
end

java_id += 1

Java.seed do |s|
  s.id = java_id
  s.name = "よくわからない"
end

# Dyna

DYNA_SEEDS = [
  ["Windows Server",["Oracle(Sun)JVM","IBM JVM","Oralce Jrockit"]],
  ["Linux",["Oracle(Sun)JVM","IBM JVM","Oralce Jrockit"]],
  ["Solalis",["Oracle(Sun)JVM","Oralce Jrockit"]],
  ["AIX",["IBM JVM"]],
  ["HP/UX",["HP JVM"]],
  ["z/Linux"["IBM JVM"]],
  ["z/OS",["IBM JVM"]]
]

dyna_id = 1

DYNA_SEEDS.each do |os,javas|
  Os.where(name: os).pluck(:id).each do |os_id|
    javas.each do |java|
      Java.where(name: java).pluck(:id).each do |java_id|
        Dyna.seed do |s|
          s.id = dyna_id
          s.os_id = os_id
          s.java_id = java_id
        end
        dyna_id += 1
      end
    end
  end
end







# java_names = ["Oracle(Sun) JVM","IBM JVM","Oracle Jrockit","HP JVM"]
# java_versions = %w(1.4.2 5.0 6.0 7.0)
# ap_server_names = ["Apache Web Server", "Microsoft IIS","IBM HTTP Server","Oracle Http Server"]
# ap_server_versions = %w(2.0 2.2 2.4 6 7 7.5 8 10 11)






