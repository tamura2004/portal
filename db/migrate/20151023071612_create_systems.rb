class CreateSystems < ActiveRecord::Migration
  def change
    create_table :systems do |t|
      t.string :name, null: false
      t.string :number
      t.references :os, index: true, foreign_key: true
      t.references :java, index: true, foreign_key: true
      t.references :ap, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
