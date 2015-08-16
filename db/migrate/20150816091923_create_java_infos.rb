class CreateJavaInfos < ActiveRecord::Migration
  def change
    create_table :java_infos do |t|
      t.references :osName, index: true, foreign_key: true
      t.references :javaName, index: true, foreign_key: true
      t.references :javaVersion, index: true, foreign_key: true
      t.references :cpuArch, index: true, foreign_key: true
      t.boolean :supported

      t.timestamps null: false
    end
  end
end
