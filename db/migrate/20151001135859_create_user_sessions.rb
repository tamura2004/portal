class CreateUserSessions < ActiveRecord::Migration
  def change
    create_table :user_sessions do |t|
      t.string :email
      t.string :password

      t.timestamps null: false
    end
  end
end
