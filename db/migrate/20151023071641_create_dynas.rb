class CreateDynas < ActiveRecord::Migration
  def change
    create_table :dynas do |t|
      t.references :os, index: true, foreign_key: true
      t.references :java, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
