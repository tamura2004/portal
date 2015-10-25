class CreateOs < ActiveRecord::Migration
  def change
    create_table :os do |t|
      t.string :name, null: false
      t.string :version
      t.string :edition
      t.string :cpu

      t.timestamps null: false
    end
  end
end
