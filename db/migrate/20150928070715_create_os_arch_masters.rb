class CreateOsArchMasters < ActiveRecord::Migration
  def change
    create_table :os_arch_masters do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
