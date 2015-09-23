class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.string :projectName
      t.string :userName
      t.date :start_date
      t.date :end_date

      t.timestamps null: false
    end
  end
end
