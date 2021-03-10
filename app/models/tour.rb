class Tour < ApplicationRecord
  has_many :book_tours, dependent: :destroy
  belongs_to :tour_type
  scope :tours_Highlight, ->{joins(:book_tours).group(:tour_id).last(4)}
  scope :newest, ->{order(created_at: :desc)}
  scope :search_tour, (lambda do |key|
    where("title like ? or location like ?", "#{key}%", "#{key}%")
  end)
end
