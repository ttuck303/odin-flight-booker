class BookingsController < ApplicationController

	def new
		@flight = Flight.find(params[:flight_id])
		@booking = @flight.bookings.build
		params[:passengers].to_i.times { @booking.passengers.build }
	end

	def create
		@flight = Flight.find(booking_params[:flight_id])
		@booking = @flight.bookings.build(booking_params)
		if @booking.valid?
			@booking.save
			flash[:success] = "Booking created successfully."
			redirect_to @booking
		else
			@flight = Flight.find(params[:flight_id])
			flash[:danger] = "Failed to save!"
			render 'new'
		end
	end

	private

		def booking_params
			params.require(:booking).permit(:flight_id, passengers_attributes: [:id, :first_name, :last_name, :email])
		end

end
