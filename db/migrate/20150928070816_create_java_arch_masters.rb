class CreateJavaArchMasters < ActiveRecord::Migration
  def change
    create_table :java_arch_masters do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
