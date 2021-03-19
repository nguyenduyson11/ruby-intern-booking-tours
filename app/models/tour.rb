class Tour < ApplicationRecord
  has_many :book_tours, dependent: :destroy
  belongs_to :tour_type
  scope :tours_Highlight, ->{joins(:book_tours).group(:tour_id).last(4)}
  scope :sort_tours, ->{order(created_at: :desc)}
end
