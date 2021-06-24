class SorceryCore < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :user_name,          null: false
      t.string :email,              null: false
      t.string :crypted_password,   null: false
      t.string :salt,               null: false
      t.string :city,               null: false
      t.string :state,              null: false
      t.string :phone_no,           null: false
      

      t.timestamps                null: false
    end

    add_index :users, :email, unique: true
  end
end
