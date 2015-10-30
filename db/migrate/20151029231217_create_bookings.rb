class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
    	t.integer :passenger_id
    	t.integer :flight_id
      t.timestamps null: false
    end
    add_index :bookings, [:passenger_id, :flight_id], unique: true
  end
end
