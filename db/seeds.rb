# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Flat.destroy_all

price = [50..300].sample
place = ["Private bedroom and bathroom with shared living areas.", "A mini apartment within the clock tower apartment at St Pancras Station.", "Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory.", "A lovely summer feel for this spacious garden flat."].sample
people = [1..6].sample

puts "seed creaed"
6.times do
  Flat.create!(
    name:Faker::Address.city,
    address:Faker::Address.street_address,
    picture_url:'https://images.unsplash.com/photo-1494526585095-c41746248156?w=1200',
    description:place,
    price_per_night:price,
    number_of_guests:people,
  )
end
puts "seed created"
