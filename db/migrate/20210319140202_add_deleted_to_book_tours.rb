class AddDeletedToBookTours < ActiveRecord::Migration[6.1]
  def change
    add_column :book_tours, :deleted, :boolean, default: false
  end
end
