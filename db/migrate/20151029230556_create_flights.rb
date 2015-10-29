class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.date :departure_date
      t.time :departure_time
      t.date :arrival_date
      t.time :arrival_time
      t.integer :origin
      t.integer :destination

      t.timestamps null: false
    end
  end
end
