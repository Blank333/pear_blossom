class AddPaperclipFieldsToRooms < ActiveRecord::Migration[6.1]
  def change
    add_column :rooms, :image_file_name,    :string
    add_column :rooms, :image_content_type, :string
    add_column :rooms, :image_file_size,    :integer
    add_column :rooms, :image_updated_at,   :datetime

  end
end
