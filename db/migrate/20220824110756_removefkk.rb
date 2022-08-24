class Removefkk < ActiveRecord::Migration[7.0]
  def change
    remove_reference(:flights, :airports, index: true)
  end
end
