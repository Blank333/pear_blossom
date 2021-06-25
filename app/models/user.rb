class User < ApplicationRecord
  authenticates_with_sorcery!
  has_many :bookings
  validates_confirmation_of :password, message: "should match password", if: :password
end
