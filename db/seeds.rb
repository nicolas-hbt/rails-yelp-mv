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
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: '0608978967', category: 'chinese' }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: '5765767689', category: 'italian' }
dishoomzzy = { name: "Dishoomzzy", address: "7 Rue de l'Albatros", phone_number: '0989877765', category: 'chinese' }
numberfour =  { name: "Number Four", address: "56A Impasse du Labrador", phone_number: '0245344432', category: 'japanese' }
numberfive = { name: "Number Five", address: "7 Rue de l'Etoile", phone_number: '0567126654', category: 'japanese' }

[ dishoom, pizza_east, dishoomzzy, numberfour, numberfive ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
