class Pet < ApplicationRecord
  belongs_to :user
  belongs_to :species
  has_many :bookings
  has_one_attached :photo
  validates :name, length: { minimum: 2 }, presence: true
  validates :address, length: { minimum: 10 }, presence: true
  validates :price, :age, presence: true, numericality: true
end
