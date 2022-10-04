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

place1 = Place.new(
  title: 'Casita',
  description: 'Amplia sala para que realices encuentros con familiares y amigos.',
  address: 'Poablado, Medellín',
  price_per_hour: 60.000,
  capicity: 20,
  photo_url: 'https://i.pinimg.com/originals/2c/f7/6f/2cf76f3469fa4da58ecde70a069a4068.jpg',
  category: 'casa',
  user_id: user1.id
)
place1.save!

place2 = Place.new(
  title: 'Coworking',
  description: 'Amplias oficinas para que trabajes a gusto con todos tus colaboradores en tus maravillosos proyectos.',
  address: 'Poablado, Medellín',
  price_per_hour: 100.000,
  capicity: 50,
  photo_url: 'https://educowebmedia.blob.core.windows.net/educowebmedia/educospain/media/images/blog/2020/coworking.jpg',
  category: 'oficina',
  user_id: user1.id
)
place2.save!

place3 = Place.new(
  title: 'El mirador',
  description: 'Mirador en la loma del escobero, con maravillosa vista al sur de la ciudad.',
  address: 'Loma el Escobero, Envigado',
  price_per_hour: 60.000,
  capicity: 15,
  photo_url: 'https://www.construyehogar.com/wp-content/uploads/2015/09/Decoraci%C3%B3n-terraza-exterior-SVOYA-Studio.jpg',
  category: 'mirador',
  user_id: user1.id
)
place3.save!

place4 = Place.new(
  title: 'Comoda sala',
  description: 'Hermosa sala para que disfrutes de momentos especiales con seres únicos.',
  address: 'Laureles, Medellín',
  price_per_hour: 40.000,
  capicity: 10,
  photo_url: 'https://cursodeorganizaciondelhogar.com/wp-content/uploads/2017/02/Hermosa-decoraci%C3%B3n-de-salas-color-gris-con-amarillo-29.jpg',
  category: 'casa',
  user_id: user1.id
)
place4.save!

place5 = Place.new(
  title: 'Balacón',
  description: 'Espacioso balcón con vista al mar.',
  address: 'Santa Marta',
  price_per_hour: 50.000,
  capicity: 20,
  photo_url: 'https://sika.scene7.com/is/image/sika/co-sika-hogar-terrazas?wid=1200',
  category: 'mirador',
  user_id: user1.id
)
place5.save!

place6 = Place.new(
  title: 'Parquedero',
  description: 'Espacio seguro en unidad cerrada para parqueadero, cabe un carro o dos motos.',
  address: 'Itagui, Antioquia',
  price_per_hour: 5.000,
  capicity: 1,
  photo_url: 'https://actualicese.com/_ig/img/fotos/parqueadero-autos.jpg',
  category: 'parqueadero',
  user_id: user1.id
)
place6.save!

place7 = Place.new(
  title: 'Cocina profesional',
  description: 'Cocina con hermosos acabados, para que vengas y realices con tus amigos recetas deliciosas.',
  address: 'Poablado, Medellín',
  price_per_hour: 60.000,
  capicity: 20,
  photo_url: 'https://www.cocinasgutierrez.es/wp-content/uploads/2019/05/cocina-103.1.jpg',
  category: 'cocina',
  user_id: user1.id
)
place7.save!

place8 = Place.new(
  title: 'Coworking space',
  description: 'Amplias oficinas para que trabajes a gusto con todos tus colaboradores en tus maravillosos proyectos.',
  address: 'Centro, Medellín',
  price_per_hour: 70.000,
  capicity: 30,
  photo_url: 'https://www.wework.com/ideas/wp-content/uploads/sites/4/2020/06/Web_150DPI-20190312-WeWork-515-N-State-Common-Areas-Hot-Desk-3_v1-800x571.jpg',
  category: 'oficina',
  user_id: user1.id
)
place8.save!

place9 = Place.new(
  title: 'La terracita',
  description: 'Terraza espaciosa con vista las montañas, lugar perfecto para realizar asados y comidas.',
  address: 'Envigado, Antioquia',
  price_per_hour: 50.000,
  capicity: 20,
  photo_url: 'https://sika.scene7.com/is/image/sika/mx-sika-mexico-soluciones-terraza:16-9?wid=1920&hei=1080&fit=crop%2C1',
  category: 'mirador',
  user_id: user1.id
)
place9.save!

puts "Cargando datos Users"
puts "Cargando datos places"
