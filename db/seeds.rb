# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

room = Room.create(user_id: nil, address: "1234 SE 567th St", city: "Cloverfield", state: "Alaska", price: 40.00, home_type: "Cabin", room_type: "Wood", total_occupancy: 2, total_bedrooms: 1, total_bathrooms: 1)
room = Room.create(user_id: nil, address: "1234 SE 567th St", city: "Cloverfield", state: "Alaska", price: 60.00, home_type: "Cabin", room_type: "Wood", total_occupancy: 4, total_bedrooms: 3, total_bathrooms: 2)
room = Room.create(user_id: nil, address: "1234 SE 567th St", city: "Cloverfield", state: "Alaska", price: 50.00, home_type: "Cabin", room_type: "Wood", total_occupancy: 3, total_bedrooms: 2, total_bathrooms: 2)
room = Room.create(user_id: nil, address: "1234 SE 567th St", city: "Cloverfield", state: "Alaska", price: 30.00, home_type: "Cabin", room_type: "Wood", total_occupancy: 1, total_bedrooms: 1, total_bathrooms: 1)
room = Room.create(user_id: nil, address: "1234 SE 567th St", city: "Cloverfield", state: "Alaska", price: 70.00, home_type: "Cabin", room_type: "Wood", total_occupancy: 5, total_bedrooms: 3, total_bathrooms: 3)
