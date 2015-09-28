class CreateJavaInfos < ActiveRecord::Migration
  def change
    create_table :java_infos do |t|
      t.references :java_name_master, index: true, foreign_key: true
      t.references :java_arch_master, index: true, foreign_key: true
      t.references :java_version_master, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
