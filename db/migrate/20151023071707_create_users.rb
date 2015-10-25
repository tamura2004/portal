class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.references :group, index: true, foreign_key: true
      t.string :email, null: false
      t.string :email_for_index, null: false
      t.string :family_name, null: false
      t.string :given_name, null: false
      t.string :family_name_kana, null: false
      t.string :given_name_kana, null: false
      t.string :hashed_password
      t.boolean :suspended, null: false, default: false

      t.timestamps null: false
    end
    add_index :users, :email_for_index, unique: true
    add_index :users, [:family_name_kana, :given_name_kana]
  end
end
