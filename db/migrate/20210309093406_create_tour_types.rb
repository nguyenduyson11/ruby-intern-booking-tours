class CreateTourTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :tour_types do |t|
      t.string :name
      t.integer :deleted, default: 0
      t.timestamps
    end
  end
end
