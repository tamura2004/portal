class CreateWebServerInfos < ActiveRecord::Migration
  def change
    create_table :web_server_infos do |t|
      t.string :name
      t.string :version

      t.timestamps null: false
    end
  end
end
