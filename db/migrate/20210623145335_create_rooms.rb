class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.integer :room_no
      t.integer :price
      t.text :description
      
      t.timestamps
    end
  end
end
