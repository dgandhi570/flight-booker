class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end 

  def new
    @booking = Booking.new
    2.times { @booking.passenger.build }
  end

  def create
    
    @booking = Booking.new(bookingparams)
    if @booking.save
      flash[:notice] = "Booking confirmed"
      # redirect_to :ticket
    else
      render :new, status: :unprocessable_entity
    end
  end
private
def bookingparams
  params.require(:booking).permit(:passengers_attributes => [:name, :email])
end

end
