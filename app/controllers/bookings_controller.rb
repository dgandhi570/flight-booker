class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end 

  def new
    @booking = Booking.new
    @count = params[:passcount].to_i
    
    # @flight = Flight.find_by(params[:flight_id])
   @count.times{@booking.passengers.build}
  end
  def show
    @booking = Booking.find(params[:id])
  end

  def create
    @booking = Booking.new(bookingparams)
    if @booking.save
      flash[:notice] = "Booking confirmed"
      redirect_to @booking
# debugger
    else
      render :new, status: :unprocessable_entity
    end
  end
private
def bookingparams
  params.require(:booking).permit(:flight_id, :passcount, :passengers_attributes => [:name, :email])
end

end
