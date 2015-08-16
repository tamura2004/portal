class CreateOsNames < ActiveRecord::Migration
  def change
    create_table :os_names do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
