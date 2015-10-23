class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.references :group, index: true, foreign_key: true
      t.string :hashed_password

      t.timestamps null: false
    end
  end
end
