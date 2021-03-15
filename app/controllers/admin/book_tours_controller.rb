class Admin::BookToursController < Admin::AdminController
  before_action :find_book_tour, only: :update

  def index
    @book_tours = BookTour.sort_tour
                          .paginate(page: params[:page],
      per_page: params[:per_page] || Settings.user.panigate_size)
  end

  def update
    ActiveRecord::Base.transaction do
      @book_tour.status = params[:status].to_i
      if @book_tour.save
        flash[:success] = t "update_success"
        redirect_to admin_book_tours_path
      else
        flash.now[:error] = t "update_error"
        render :index
      end
    end
  rescue ArgumentError
    flash[:error] = t "update_error"
    redirect_to admin_book_tours_path
  end

  private

  def find_book_tour
    @book_tour = BookTour.find_by(id: params[:id])
    return if @book_tour

    flash[:notice] = t "tour_not_found"
    redirect_to admin_book_tours_path
  end
end
