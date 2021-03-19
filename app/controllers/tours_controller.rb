class ToursController < ApplicationController
  before_action :find_tour, only: %i(show)

  def index
    @tours = Tour.sort_tours
                 .paginate(page: params[:page],
      per_page: params[:per_page] || Settings.user.panigate_size)
    @tourhighlights = Tour.tours_Highlight
  end

  def show
    @book_tour = BookTour.new
  end

  private

  def find_tour
    @tour = Tour.find_by(id: params[:id])
    return if @tour

    flash[:error] = t "not_find_tour"
    redirect_to root_path
  end
end
