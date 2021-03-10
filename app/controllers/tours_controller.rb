class ToursController < ApplicationController
  def index; end

  def show
    @book_tour = BookTour.new
  end
end
