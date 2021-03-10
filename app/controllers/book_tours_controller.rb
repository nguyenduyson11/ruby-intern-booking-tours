class BookToursController < ApplicationController
  before_action :logged_in_user, only: %i(index create)
  before_action :load_user_book_tours, only: :index

  def index; end

  def create
    @book_tour = current_user.book_tours.new book_tour_params
    @book_tour.price_tour = total_price
    respond_to do |format|
      if @book_tour.save
        format.html{redirect_to @book_tour, message: t("booking_sucsses")}
      else
        format.html{render :new}
      end
      format.js
    end
  end

  private

  def book_tour_params
    params.require(:book_tour).permit :tour_id,
                                      :quantity, :start_date, :end_date,
                                      :customer_name, :phone_number, :email
  end

  def load_user_book_tours
    @book_tours = current_user.book_tours.includes(:tour)
  end

  def total_price
    number = params[:book_tour][:quantity].to_i
    price = @book_tour.tour.price
    number * price
  end
end
