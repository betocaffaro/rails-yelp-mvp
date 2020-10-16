# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "222-5427", category: "chinese" }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "826-5487", category: "italian" }
pizza_west =  { name: "Pizza West", address: "86B Shoreditch Low St, London E8 7DW", phone_number: "67-44-81", category: "italian" }
maikai = { name: "Maikai", address: "161 Raposo Tavares, London F45", phone_number: "9082-0987", category: "japanese" }
bistro = { name: "Le Bistro", address: "99 Picadilly Circus, London E56", phone_number: "123-4567", category: "french" }

[dishoom, pizza_east, pizza_west, maikai, bistro].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
