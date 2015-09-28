class SorceryCore < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, :null => false
      t.references :group_master, index: true, foreign_key: true
      t.string :email,            :null => false
      t.string :crypted_password
      t.string :salt

      t.timestamps
    end

    add_index :users, :email, unique: true
  end
end