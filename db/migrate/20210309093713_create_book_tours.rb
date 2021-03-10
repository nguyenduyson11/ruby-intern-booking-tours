class CreateBookTours < ActiveRecord::Migration[6.1]
  def change
    create_table :book_tours do |t|
      t.integer :user_id
      t.integer :tour_id
      t.integer :quantity
      t.string :customer_name
      t.string :phone_number
      t.string :email
      t.integer :status, default: 0
      t.timestamps
    end
  end
end
