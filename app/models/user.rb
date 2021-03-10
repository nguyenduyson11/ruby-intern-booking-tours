class User < ApplicationRecord
  has_many :book_tours, dependent: :destroy
  has_many :tours, through: :book_tours
  has_many :reviews, dependent: :destroy
end
