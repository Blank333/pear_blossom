class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :user_name
      t.text :body
      t.references :room, null: false, foreign_key: true

      t.timestamps
    end
  end
end
