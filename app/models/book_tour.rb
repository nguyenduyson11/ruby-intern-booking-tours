class BookTour < ApplicationRecord
  enum status: {actived: 0, archived: 1}
  belongs_to :user
  belongs_to :tour
end
