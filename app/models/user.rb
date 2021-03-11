class User < ApplicationRecord
  has_many :book_tours, dependent: :destroy
  has_many :reviews, dependent: :destroy
end
