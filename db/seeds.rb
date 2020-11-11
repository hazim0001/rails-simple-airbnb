# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Flat.destroy_all
puts "creating random flats"
10.times do
  Flat.create!(
    name: Faker::Company.catch_phrase,
    address: Faker::Address.secondary_address,
    description: Faker::Lorem.paragraph,
    price_per_night: (Faker::Number.decimal_part(digits: 4)).to_i,
    number_of_guests: (Faker::Number.decimal_part(digits: 2)).to_i
  )
end
puts "done"
