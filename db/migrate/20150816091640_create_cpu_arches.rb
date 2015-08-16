class CreateCpuArches < ActiveRecord::Migration
  def change
    create_table :cpu_arches do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
