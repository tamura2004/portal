class CreateJavaNames < ActiveRecord::Migration
  def change
    create_table :java_names do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
