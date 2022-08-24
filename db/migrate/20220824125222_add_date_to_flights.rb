class AddDateToFlights < ActiveRecord::Migration[7.0]
  def change
    add_column :flights, :Date, :date
  end
end
