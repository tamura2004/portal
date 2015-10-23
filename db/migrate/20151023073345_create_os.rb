class CreateOs < ActiveRecord::Migration
  def change
    create_table :os do |t|
      t.string :name, null: false
      t.string :version, null: false
      t.string :edition
      t.string :cpu, null: false

      t.timestamps null: false
    end
  end
end
