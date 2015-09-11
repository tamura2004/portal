class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.string :projectName
      t.string :userName
      t.date :startDate
      t.date :endDate

      t.timestamps null: false
    end
  end
end
