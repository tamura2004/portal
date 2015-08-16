class CreateSystemInfos < ActiveRecord::Migration
  def change
    create_table :system_infos do |t|
      t.string :name
      t.references :javaInfo, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
