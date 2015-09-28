class CreateGroupMasters < ActiveRecord::Migration
  def change
    create_table :group_masters do |t|
      t.string :name
      t.references :department_master, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
