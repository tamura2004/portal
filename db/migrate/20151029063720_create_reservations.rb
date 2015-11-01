class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.references :system, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.string :month, null: false

      t.timestamps null: false
    end
  end
end
