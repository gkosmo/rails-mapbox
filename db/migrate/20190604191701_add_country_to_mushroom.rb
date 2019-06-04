class AddCountryToMushroom < ActiveRecord::Migration[5.1]
  def change
    add_column :mushrooms, :country, :string

  end
end
