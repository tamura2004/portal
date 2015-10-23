class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :name, null: false
      t.references :dept, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
