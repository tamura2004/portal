class CreateSystemRequirementInfos < ActiveRecord::Migration
  def change
    create_table :system_requirement_infos do |t|
      t.references :os_info, index: true, foreign_key: true
      t.references :java_info, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
