class CreateDepositions < ActiveRecord::Migration[6.0]
  def change
    create_table :depositions do |t|
      t.string :reason
      t.string :dep_city
      t.string :arr_city
      t.string :alert_date
      t.datetime :departure
      t.datetime :arrival
      t.boolean :forward
      t.datetime :forward_dep
      t.datetime :forward_arr
      t.string :delay
      t.string :excuse

      t.timestamps
    end
  end
end
