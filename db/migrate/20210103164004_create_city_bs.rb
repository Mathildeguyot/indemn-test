class CreateCityBs < ActiveRecord::Migration[6.0]
  def change
    create_table :city_bs do |t|
      t.string :address

      t.timestamps
    end
  end
end
