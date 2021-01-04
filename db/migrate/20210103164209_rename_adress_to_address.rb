class RenameAdressToAddress < ActiveRecord::Migration[6.0]
  def change
    rename_column :city_as, :adress, :address
  end
end
