class Review < ApplicationRecord
    belongs_to :pet
    validates :reviews, presence: true
  end
end
