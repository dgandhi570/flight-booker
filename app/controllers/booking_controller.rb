class BookingController < ApplicationController
  def new
    @bookings = Booking.new
  end
  
end
