# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

# Flight.create(departure_airport_id: 1, arrival_airport_id: 4 , date_time: DateTime.now, flight_duration: 4 )
# Flight.create(departure_airport_id: 2, arrival_airport_id: 2 , date_time: DateTime.now, flight_duration: 2 )
5.times{ Flight.create(departure_airport_id: Faker::Number.between(from: 1, to: 5), arrival_airport_id: Faker::Number.between(from: 3, to: 7), date_time: DateTime.now, flight_duration: Faker::Number.between(from: 2, to: 10) )}