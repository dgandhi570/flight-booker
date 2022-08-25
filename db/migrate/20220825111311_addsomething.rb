class Addsomething < ActiveRecord::Migration[7.0]
  def change
    change_column(:bookings, :flight_id, :integer)
  end
end
