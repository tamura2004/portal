class CreateProjectInfos < ActiveRecord::Migration
  def change
    create_table :project_infos do |t|
      t.string :name
      t.string :number
      t.references :group_master, index: true, foreign_key: true
      t.references :system_info, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
