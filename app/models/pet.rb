class Pet < ApplicationRecord
  belongs_to :user, dependent: :destroy
  belongs_to :species
  has_many :bookings
  validates :name, length: { minimum: 2 }, presence: true
  validates :address, presence: true
  validates :price, :age, presence: true, numericality: true
end
