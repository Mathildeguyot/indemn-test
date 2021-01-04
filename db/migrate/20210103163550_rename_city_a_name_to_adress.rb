class RenameCityANameToAdress < ActiveRecord::Migration[6.0]
  def change
    rename_column :city_as, :name, :adress
  end
end
