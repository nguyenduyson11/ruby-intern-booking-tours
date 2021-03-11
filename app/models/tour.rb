class Tour < ApplicationRecord
  has_many :book_tours, dependent: :destroy
  belongs_to :tour_type
end
