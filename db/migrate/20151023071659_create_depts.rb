class CreateDepts < ActiveRecord::Migration
  def change
    create_table :depts do |t|
      t.string :name, null: false

      t.timestamps null: false
    end
  end
end
