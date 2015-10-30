class Flight < ActiveRecord::Base

	has_many :bookings
	has_many :passengers, through: :bookings
	belongs_to :origin, class_name: "Airport"
	belongs_to :destination, class_name: "Airport"


end
