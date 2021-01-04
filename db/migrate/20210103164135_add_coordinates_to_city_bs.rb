class AddCoordinatesToCityBs < ActiveRecord::Migration[6.0]
  def change
    add_column :city_bs, :latitude, :float
    add_column :city_bs, :longitude, :float
    add_column :city_bs, :country, :string
  end
end
