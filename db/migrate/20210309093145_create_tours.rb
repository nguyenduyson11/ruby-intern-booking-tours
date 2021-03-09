class CreateTours < ActiveRecord::Migration[6.1]
  def change
    create_table :tours do |t|
      t.string :title
      t.integer :tour_type_id
      t.string :location
      t.float :price
      t.integer :day
      t.integer :person
      t.string :image
      t.text :description
      t.integer :quatity
      t.timestamps
    end
  end
end
