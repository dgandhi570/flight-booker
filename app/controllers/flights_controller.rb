class FlightsController < ApplicationController
  def index

    @flights = Flight.all.sort{ |a, b| a <=> b }
    @airports = Airport.all
    @search = Flight.where(departure_airport_id: params[:departure_airport_id], arrival_airport_id: params[:arrival_airport_id])
  end

  def show
    @flights = Flight.all
  end

  # def available_flights
  #   @search = Flight.where(departure_airport_id = params[:departure_airport_id], arrival_airport_id = params[:arrival_airport_id], date_time=params[:date_time])
  # end
end
