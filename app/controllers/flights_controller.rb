class FlightsController < ApplicationController
  def index
  	@airports = Airport.first(20).map{|a| [a.wac, a.id]}
  	if !params[:origin].nil?
  		@flights = Flight.where("departure_date = ? and origin_id = ? and destination_id = ? ", DateTime.new(params[:departure_date][:year].to_i, params[:departure_date][:month].to_i, params[:departure_date][:day].to_i).to_date, params[:origin], params[:destination])
  	end
  end
end
