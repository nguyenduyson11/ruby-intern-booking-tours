class User < ApplicationRecord
  has_many :book_tours, dependent: :destroy
  has_many :reviews, dependent: :destroy

  def self.digest string
    cost = if ActiveModel::SecurePassword.min_cost
             BCrypt::Engine::MIN_COST
           else
             BCrypt::Engine.cost
           end
    BCrypt::Password.create string, cost: cost
  end

  has_secure_password
end
