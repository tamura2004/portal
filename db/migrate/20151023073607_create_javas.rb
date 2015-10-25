class CreateJavas < ActiveRecord::Migration
  def change
    create_table :javas do |t|
      t.string :name, null: false
      t.string :version
      t.string :bit

      t.timestamps null: false
    end
  end
end
