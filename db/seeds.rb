# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "japanese"}
pizza_east = {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian"}
la_cantina = {name: "La Cantina", address: "place des huth, Tatooine", category: "belgian"}
pizza_planet = {name: "Pizza Planet", address: "camion ambulant", category: "italian"}
palais_imperial = {name: "palais imperial", address: "quartier chinois", category: "chinese"}

[dishoom, pizza_east, la_cantina, pizza_planet, palais_imperial].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

puts "Finished!"
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
