class Pet < ApplicationRecord
  belongs_to :user, dependent: :destroy
  belongs_to :species
  has_many :bookings
end
