class CreateApServerInfos < ActiveRecord::Migration
  def change
    create_table :ap_server_infos do |t|
      t.references :ap_server_name_master, index: true, foreign_key: true
      t.references :ap_server_version_master, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
