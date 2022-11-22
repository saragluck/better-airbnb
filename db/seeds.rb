

room1 = Room.new(user_id: 1, address: "1234 SE 567th St", city: "Cloverfield", state: "Alaska", price: 40.00, home_type: "Cabin", room_type: "Wood", total_occupancy: 2, total_bedrooms: 1, total_bathrooms: 1)
room2 = Room.create(user_id: 1, address: "479 Nunyabizness St", city: "Chicago", state: "Illinois", price: 60, home_type: "Condo", room_type: "Small", total_occupancy: 4, total_bedrooms: 3, total_bathrooms: 2)
room3 = Room.create(user_id: 1, address: "1234 SE 567th St", city: "Cloverfield", state: "Alaska", price: 50.00, home_type: "Cabin", room_type: "Wood", total_occupancy: 3, total_bedrooms: 2, total_bathrooms: 2)
room4 = Room.create(user_id: 1, address: "1234 SE 567th St", city: "Cloverfield", state: "Alaska", price: 30.00, home_type: "Cabin", room_type: "Wood", total_occupancy: 1, total_bedrooms: 1, total_bathrooms: 1)
room5 = Room.create(user_id: 1, address: "1234 SE 567th St", city: "Cloverfield", state: "Alaska", price: 70.00, home_type: "Cabin", room_type: "Wood", total_occupancy: 5, total_bedrooms: 3, total_bathrooms: 3)

User.create!([
  { name: "Sara Gluck", email: "sara@test.com", password_digest: "$2a$12$Y9wHstJBosoC0Uo3O1pPFOqbImGcWiW1uKY8ZfnATdm9E9vFCW/xi", image: "sample" },
])
room = Room.create!(user_id: nil, address: "1234 SE 567th St", city: "Cloverfield", state: "Alaska", price: 40.00, home_type: "Cabin", room_type: "Wood", total_occupancy: 2, total_bedrooms: 1, total_bathrooms: 1)
room = Room.create!(user_id: nil, address: "1234 SE 567th St", city: "Cloverfield", state: "Alaska", price: 60.00, home_type: "Cabin", room_type: "Wood", total_occupancy: 4, total_bedrooms: 3, total_bathrooms: 2)
room = Room.create!(user_id: nil, address: "1234 SE 567th St", city: "Cloverfield", state: "Alaska", price: 50.00, home_type: "Cabin", room_type: "Wood", total_occupancy: 3, total_bedrooms: 2, total_bathrooms: 2)
room = Room.create!(user_id: nil, address: "1234 SE 567th St", city: "Cloverfield", state: "Alaska", price: 30.00, home_type: "Cabin", room_type: "Wood", total_occupancy: 1, total_bedrooms: 1, total_bathrooms: 1)
room = Room.create!(user_id: nil, address: "1234 SE 567th St", city: "Cloverfield", state: "Alaska", price: 70.00, home_type: "Cabin", room_type: "Wood", total_occupancy: 5, total_bedrooms: 3, total_bathrooms: 3)

