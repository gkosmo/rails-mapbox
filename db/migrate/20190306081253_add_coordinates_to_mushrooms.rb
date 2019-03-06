class AddCoordinatesToMushrooms < ActiveRecord::Migration[5.1]
  def change
    add_column :mushrooms, :latitude, :float
    add_column :mushrooms, :longitude, :float
  end
end
