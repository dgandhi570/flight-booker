class AddPassengerIdToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :passenger_id, :integer
  end
end
