class CreateJavaVersions < ActiveRecord::Migration
  def change
    create_table :java_versions do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
