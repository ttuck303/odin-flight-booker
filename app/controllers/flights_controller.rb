class FlightsController < ApplicationController
  def index
  	@airports = Airport.all.limit(10).map{|a| [a.wac, a.id]}
  end
end
