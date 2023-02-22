# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
dishoom = { name: 'Dishoom', address: '7 Boundary St, London E2 7JE', category: 'french' }
pizza_east = { name: 'Pizza East', address: '56A Shoreditch High St, London E1 6PQ', category: 'japanese' }
happy_place = { name: 'Happy Place', address: 'happystreet 100, sunny 101010', category: 'chinese' }
soul_food = { name: 'Soul Food', address: 'soulstreet 333, korean town 030303', category: 'italian' }
nanas = { name: "Nana's", address: 'grannystreet 99, old town 10000', category: 'belgian' }

[dishoom, pizza_east, happy_place, soul_food, nanas].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
