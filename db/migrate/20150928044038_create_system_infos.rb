class CreateSystemInfos < ActiveRecord::Migration
  def change
    create_table :system_infos do |t|
      t.string :name
      t.string :number
      t.references :system_requirement_info, index: true, foreign_key: true
      t.references :ap_server_info, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
