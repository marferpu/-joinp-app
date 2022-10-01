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
place1 = Place.new(title: "Place 1", description: "Lugar bonito", address: "Medellín", price_per_hour: 10000, capicity: 3,
   photo_url: "https://i.pinimg.com/originals/2c/f7/6f/2cf76f3469fa4da58ecde70a069a4068.jpg",
   category: "casa", user_id: user1.id)
place1.save!
place2 = Place.new(title: "Place 3", description: "Lugar para compartir", address: "Medellín", price_per_hour: 40000, capicity: 8, photo_url: "https://backend.vivendo.co/sites/default/files/styles/display_post/public/2020-03/parqueadero.png.jpg?itok=GvVfphSo", category: "parqueadero", user_id: user.id  )
place2.save!

puts "Cargando datos Users"
puts "Cargando datos places"
