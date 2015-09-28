class CreateApServerVersionMasters < ActiveRecord::Migration
  def change
    create_table :ap_server_version_masters do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
