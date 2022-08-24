class Removefk < ActiveRecord::Migration[7.0]
  def change
    remove_foreign_key :airports, :flights
end
