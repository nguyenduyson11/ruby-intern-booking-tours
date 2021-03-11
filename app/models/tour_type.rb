class TourType < ApplicationRecord
  has_many :tours, dependent: :destroy
end
