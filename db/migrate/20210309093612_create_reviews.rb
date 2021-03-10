class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :tour_id
      t.integer :user_id
      t.text :content
      t.integer :like
      t.timestamps
    end
  end
end
