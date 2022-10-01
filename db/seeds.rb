# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
User.destroy_all
Place.destroy_all
user = User.new(first_name: "Pepe", last_name: "H", email: "pp@email.com", password: "123456")
user.save!
user1 = User.new(first_name: "Marce", last_name: "F", email: "mfp@email.com", password: "123456")
user1.save!
place1 = Place.new(title: "Place 1", description: "Lugar bonito", address: "Medellín", price_per_hour: 10000, capicity: 3, photo_url: "https://www.google.com/aclk?sa=l&ai=DChcSEwiG2rqlsrv6AhVIIUwKHQa_D8wYABAFGgJvYQ&sig=AOD64_2PUMAakU73msCZ-jWBUl7lCssQJQ&adurl&ctype=5&ved=2ahUKEwju2Kqlsrv6AhWRjuAKHSFFAXEQvhd6BAgBEHY", category: "casa", user_id: user1.id)
place1.save!
place2 = Place.new(title: "Place 3", description: "Lugar para compartir", address: "Medellín", price_per_hour: 40000, capicity: 8, photo_url: "https://www.google.com/aclk?sa=l&ai=DChcSEwiG2rqlsrv6AhVIIUwKHQa_D8wYABAFGgJvYQ&sig=AOD64_2PUMAakU73msCZ-jWBUl7lCssQJQ&adurl&ctype=5&ved=2ahUKEwju2Kqlsrv6AhWRjuAKHSFFAXEQvhd6BAgBEHY", category: "parqueadero", user_id: user.id  )
place2.save!

puts "Cargando datos Users"
puts "Cargando datos places"
