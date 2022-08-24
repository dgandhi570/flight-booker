class FlightsController < ApplicationController
  def index
    @flights = Flight.all
    @airport_options = Airport.all.map{ |u| [ u.code, u.id ] }
    @date_options = Flight.first.Date
    @seats = [1,2,3,4]
  end

end
