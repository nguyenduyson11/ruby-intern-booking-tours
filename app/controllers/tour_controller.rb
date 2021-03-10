class TourController < ApplicationController
  def show
    @book_tour = BookTour.new
  end
end
