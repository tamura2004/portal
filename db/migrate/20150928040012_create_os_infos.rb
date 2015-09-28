class CreateOsInfos < ActiveRecord::Migration
  def change
    create_table :os_infos do |t|
      t.references :os_name_master, index: true, foreign_key: true
      t.references :os_arch_master, index: true, foreign_key: true
      t.references :os_version_master, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
