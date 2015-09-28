class CreateSystemInfoViews < ActiveRecord::Migration
  def change
    create_table :system_info_views do |t|
      t.string :name
      t.string :number
      t.references :os_info, index: true, foreign_key: true
      t.references :java_info, index: true, foreign_key: true
      t.references :ap_server_info, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
