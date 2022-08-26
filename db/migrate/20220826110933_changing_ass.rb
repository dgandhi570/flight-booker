class ChangingAss < ActiveRecord::Migration[7.0]
  def change
    remove_reference :bookings, :passenger_id, index: true
    add_reference :passengers, :booking, index: true, foreign_key: true
  end
end
