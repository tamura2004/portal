class CreateApServerNameMasters < ActiveRecord::Migration
  def change
    create_table :ap_server_name_masters do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
