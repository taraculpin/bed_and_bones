class Pet < ApplicationRecord
  belongs_to :user
  belongs_to :species
  has_many :bookings, dependent: :destroy
  has_one_attached :photo
  validates :name, length: { minimum: 2 }, presence: true
  validates :address, length: { minimum: 10 }, presence: true
  validates :price, :age, presence: true, numericality: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
