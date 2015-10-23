class CreateJavas < ActiveRecord::Migration
  def change
    create_table :javas do |t|
      t.string :name, null: false
      t.string :version, null: false
      t.string :bit, null: false

      t.timestamps null: false
    end
  end
end
