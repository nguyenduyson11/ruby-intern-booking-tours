class TourType < ApplicationRecord
  has_many :tour, dependent: :destroy
end
