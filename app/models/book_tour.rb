class BookTour < ApplicationRecord
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze
  enum status: {wait: 0, accept: 1, begin: 2, close: 3}
  belongs_to :user
  belongs_to :tour
  validates :quantity, presence: true,
    numericality: {greater_than: Settings.min_quantity}
  validates :email, presence: true,
    format: {with: VALID_EMAIL_REGEX},
    length: {maximum: Settings.user.email.max_length}
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :customer_name, presence: true
  validates :phone_number, presence: true
  before_create :date_start
  validate :date_end
  delegate :title, to: :tour
  scope :sort_tour, ->{order(created_at: :desc)}

  def date_end
    return if end_date >= start_date

    errors.add(:end_date, I18n.t("err_day_end"))
  end

  def date_start
    return if start_date > Time.zone.today

    errors.add(:start_date, I18n.t("err_day_start"))
  end
end
