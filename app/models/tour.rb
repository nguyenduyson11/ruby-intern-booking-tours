class Tour < ApplicationRecord
  has_many :book_tours, dependent: :destroy
  has_many :users, through: :book_tours
  belongs_to :tour_type
end
