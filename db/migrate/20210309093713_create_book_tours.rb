class CreateBookTours < ActiveRecord::Migration[6.1]
  def change
    create_table :book_tours do |t|
      t.references :user, null: false, foreign_key: true
      t.references :tour, null: false, foreign_key: true
      t.integer :quantity
      t.datetime :start_date
      t.datetime :end_date
      t.string :customer_name
      t.string :phone_number
      t.string :email
      t.integer :status, default: 0
      t.timestamps
    end
  end
end
