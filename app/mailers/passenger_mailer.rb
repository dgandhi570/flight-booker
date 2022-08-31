class PassengerMailer < ApplicationMailer
    default from: 'lamda@bakcfdfdhod.com' 

    def ticket_email
        @p = Passenger.find(params[:id])
        mail(to: @p.email , subject: "Your ticket is booked sucessfully")
        
        end

    
end