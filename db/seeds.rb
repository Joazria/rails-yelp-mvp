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
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "140421", category: "french" }
pizza_east =  { name: "Pizza", address: "9  St, Itali E2 7JE", phone_number: "14022", category: "italian" }
jap =  { name: "Jap", address: "9  St, TOKYO E2 7JE", phone_number: "333333", category: "japanese" }
chin =  { name: "china", address: "9 hajka", phone_number: "3334432", category: "chinese" }
be =  { name: "lagouloute", address: "mankanpee", phone_number: "00000", category: "belgian" }



[ dishoom, pizza_east, jap, chin, be ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
