class AddPriceTourToBookTours < ActiveRecord::Migration[6.1]
  def change
    add_column :book_tours, :price_tour, :float
  end
end
