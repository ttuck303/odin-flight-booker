class Booking < ActiveRecord::Base

	#validates :passenger_id, presence: true
	#validates :flight_id, presence: true

	belongs_to :flight
	has_many :passengers, through: :booking_passengers
	has_many :booking_passengers
	accepts_nested_attributes_for :passengers


end
