class Review < ApplicationRecord
  belongs_to :booking
  validates :content, presence: true
  validates :rating, inclusion: { in: 0..10 }, numericality: { only_integer: true }
end
