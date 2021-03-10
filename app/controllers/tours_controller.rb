class ToursController < ApplicationController
  before_action :find_tour, only: :show
  before_action :search, only: :index
  def index
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

  def search
    tours = if params[:key].blank?
              Tour
            else
              Tour.search_tour(params[:key])
            end.newest
    @tours = paginate tours
  end
end
