class CreateReserves < ActiveRecord::Migration
  def change
    create_table :reserves do |t|
      t.references :system, index: true, foreign_key: true
      t.date :year_month, null: false
      t.timestamps null: false
    end
  end
end
