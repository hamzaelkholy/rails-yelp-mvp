# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'cleaning database'
Restaurant.destroy_all

puts 'creating restaurants...'
restaurants = Restaurant.create(
  [
    { name: 'Cafe Rouge', address: 'Reigate High Street', phone_number: '+44489557676', category: 'french' },
    { name: 'China House', address: 'Station Road, Reigate', phone_number: '+44489435435', category: 'chinese' },
    { name: 'Belgian and Blues', address: 'Highgate Road, Southampton', phone_number: '+44489445666', category: 'belgian' },
    { name: 'MOMO', address: 'Hobbemastraat 1, 1071 XZ Amsterdam', phone_number: '+31489557676', category: 'japanese' },
    { name: 'Bistrot des Alpes', address: 'Utrechtsedwarsstraat 141', phone_number: '+31489557676', category: 'french' },
    { name: 'Full Moon Garden', address: 'Leidsestraat 95, 1017 NZ Amsterdam', phone_number: '+31489557676', category: 'chinese' },
    { name: 'Daido Japanese Restaurant', address: 'Achillesstraat 87', phone_number: '+44489557676', category: 'japanese' }
  ]
)

restaurants.each do |restaurant|
  puts "Created #{restaurant.name}"
end

puts 'finished!!'
