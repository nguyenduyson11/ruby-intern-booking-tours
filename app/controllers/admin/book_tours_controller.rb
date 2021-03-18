class Admin::BookToursController < Admin::AdminController
  def index
    @book_tours = BookTour.sort_tour
                          .paginate(page: params[:page],
      per_page: params[:per_page] || Settings.user.panigate_size)
  end
end
