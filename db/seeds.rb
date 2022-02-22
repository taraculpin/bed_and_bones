# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

# user = User.create!(email: 'bob@marley.com', first_name: 'Bob', last_name: 'Marley', password: 'bob123')

10.times do
  Species.create!(name: Faker::Creature::Animal.name)
end

10.times do
  puts 'creating pet'
  pet = Pet.create!(
    name: Faker::Superhero.name,
    age: (1..20).to_a.sample,
    address: Faker::Address.street_address,
    price: [50, 100, 150, 200, 250, 300, 350, 400, 450, 500].sample,
    species: Species.all.sample,
    user: User.all.sample
  )
  puts "finished creating #{pet.id} article"
end
