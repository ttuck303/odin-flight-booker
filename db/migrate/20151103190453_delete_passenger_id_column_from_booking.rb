class DeletePassengerIdColumnFromBooking < ActiveRecord::Migration
  def change
  	remove_column :bookings, :passenger_id, :integer
  end
end
