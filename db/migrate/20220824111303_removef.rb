class Removef < ActiveRecord::Migration[7.0]
  def change
    remove_reference(:flights, :airport, index: true)
  end
end
