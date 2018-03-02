# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Chart.create(name: "K-Pop")
Chart.create(name: "Rock")


20.times do |i|
  Artist.create(name: Faker::Kpop.boy_bands)
end

20.times do |i|
  Artist.create(name: Faker::RockBand.name)
end

# Generate songs for k-pop artists
200.times do |i|
  artist_id = Artist.find_by_id(rand(1..20)).id
  Song.create(title: Faker::Pokemon.move, artist_id: artist_id, chart_id: 1, genre: "K-Pop", sales: rand(1000..10000))
end

# Generate songs for rock artists
200.times do |i|
  artist_id = Artist.find_by_id(rand(21..40)).id
  Song.create(title: Faker::Ancient.hero, artist_id: artist_id, chart_id: 2, genre: "Rock", sales: rand(1000..10000))
end