class Room < ApplicationRecord
    has_many :reviews , dependent: :destroy
    has_attached_file :image
    validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]

end
