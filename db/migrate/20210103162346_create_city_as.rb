class CreateCityAs < ActiveRecord::Migration[6.0]
  def change
    create_table :city_as do |t|
      t.string :name

      t.timestamps
    end
  end
end
