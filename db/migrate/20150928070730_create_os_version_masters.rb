class CreateOsVersionMasters < ActiveRecord::Migration
  def change
    create_table :os_version_masters do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
