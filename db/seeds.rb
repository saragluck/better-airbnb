User.create!([
  {name: "Sara Gluck", email: "sara@example.com", password_digest: "$2a$12$Y9wHstJBosoC0Uo3O1pPFOqbImGcWiW1uKY8ZfnATdm9E9vFCW/xi", image: "sample"},
  {name: "Sara Gluck", email: "sara@test.com", password_digest: "$2a$12$KVTXcjpPjmuRRx5zX8KAsuTkxMk3r9jN3DWF/hYr8/hBA2qT7XVey", image: nil}
])
Room.create!([
  {user_id: 1, address: "479 Nunyabizness St", city: "Chicago", state: "Illinois", price: "60.0", description: nil, home_type: "Condo", room_type: "Small", total_occupancy: 4, total_bedrooms: 3, total_bathrooms: "2.0"},
  {user_id: 1, address: "1234 SE 567th St", city: "Cloverfield", state: "Alaska", price: "50.0", description: nil, home_type: "Cabin", room_type: "Wood", total_occupancy: 3, total_bedrooms: 2, total_bathrooms: "2.0"},
  {user_id: 1, address: "1234 SE 567th St", city: "Cloverfield", state: "Alaska", price: "30.0", description: nil, home_type: "Cabin", room_type: "Wood", total_occupancy: 1, total_bedrooms: 1, total_bathrooms: "1.0"},
  {user_id: 1, address: "1234 SE 567th St", city: "Cloverfield", state: "Alaska", price: "70.0", description: nil, home_type: "Cabin", room_type: "Wood", total_occupancy: 5, total_bedrooms: 3, total_bathrooms: "3.0"},
  {user_id: 1, address: "479 Nunyabizness St", city: "Chicago", state: "Illinois", price: "60.0", description: nil, home_type: "Condo", room_type: "Small", total_occupancy: 4, total_bedrooms: 3, total_bathrooms: "2.0"},
  {user_id: 1, address: "1234 SE 567th St", city: "Cloverfield", state: "Alaska", price: "50.0", description: nil, home_type: "Cabin", room_type: "Wood", total_occupancy: 3, total_bedrooms: 2, total_bathrooms: "2.0"},
  {user_id: 1, address: "1234 SE 567th St", city: "Cloverfield", state: "Alaska", price: "30.0", description: nil, home_type: "Cabin", room_type: "Wood", total_occupancy: 1, total_bedrooms: 1, total_bathrooms: "1.0"},
  {user_id: 1, address: "1234 SE 567th St", city: "Cloverfield", state: "Alaska", price: "70.0", description: nil, home_type: "Cabin", room_type: "Wood", total_occupancy: 5, total_bedrooms: 3, total_bathrooms: "3.0"}
])
