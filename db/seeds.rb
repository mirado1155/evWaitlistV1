# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

@mock_users = ["Kurt", "Layne", "Eddie", "Chris", "Scott"]
@mock_stations = ["La Honda", "Mountain View", "Arcata", "Madison", "San Mateo"]
@mock_vehicles = [
{user_id: 1, make: "Nissan", model: "Leaf", year: "2013"},
{user_id: 2, make: "Honda", model: "Civic", year: "2001"},
{user_id: 3, make: "Toyota", model: "Avalon", year: "2000"},
{user_id: 3, make: "Subaru", model: "Forester", year: "2000"},
{user_id: 4, make: "Kia", model: "EV6", year: "2022"},
{user_id: 5, make: "Chevrolet", model: "Bolt", year: "2021"},
{user_id: 5, make: "Toyota", model: "Tacoma", year: "2002"},
]


@mock_stations.each do |station_name|
    Station.find_or_create_by!(name: station_name)
end

@mock_users.each do |user_name|
    User.find_or_create_by!(username: user_name)
end

@mock_vehicles.each do |vehicle|
    Vehicle.find_or_create_by!(
    user_id: vehicle[:user_id], 
    make: vehicle[:make], 
    model: vehicle[:model], 
    year: vehicle[:year]
  )
end
