class AddCoordinatesToCityAs < ActiveRecord::Migration[6.0]
  def change
    add_column :city_as, :latitude, :float
    add_column :city_as, :longitude, :float
    add_column :city_as, :country, :string
  end
end
