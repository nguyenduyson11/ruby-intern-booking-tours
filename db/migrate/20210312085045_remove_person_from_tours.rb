class RemovePersonFromTours < ActiveRecord::Migration[6.1]
  def change
    remove_column :tours, :person, :interger
  end
end
