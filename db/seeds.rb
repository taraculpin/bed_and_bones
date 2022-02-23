# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
require 'open-uri'

Pets.destroy_all

10.times do
  name = Faker::Name.unique.name.split
  first_name = name.first
  last_name = name.last
  User.create!(
    email: Faker::Internet.email,
    first_name: first_name,
    last_name: last_name,
    password: 'password'
  )
end

10.times do
  Species.create!(name: Faker::Creature::Animal.name)
end
# creating Random Pets
# 10.times do
#   puts 'creating pet'
#   pet = Pet.create!(
#     name: Faker::Superhero.name,
#     age: (1..20).to_a.sample,
#     address: Faker::Address.street_address,
#     price: [50, 100, 150, 200, 250, 300, 350, 400, 450, 500].sample,
#     species: Species.all.sample,
#     user: User.all.sample
#   )
#   puts "finished creating #{pet.id} pet"
# end

# # Creating a specific pet
# pet = Pet.new(
#   name: "garfield",
#   age: 24,
#   address: "22 imbledone high street",
#   price: 34,
#   species: "cat",
#   user_id: 1
# )

# file = URI.open('https://www.meditainment.com/images/dmImage/SourceImage/island-paradise.jpg')
#     pet.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
#     pet.save!

#     pet1 = Pet.new(
#       name: "garfield",
#       age: 24,
#       address: "22 imbledone high street",
#       price: 34,
#       species: "cat",
#       user_id: 1
#     )

#  creating pets for demo

    puts 'creating pet'
      pet1 = Pet.create!(
        name: "Bixby",
        age: 7,
        address: "wilmore close",
        price: 70,
        species: Species.all.sample,
        user: User.all.sample
      )
      puts "finished creating #{pet1.id} pet"
      file = URI.open('https://images.unsplash.com/photo-1529778873920-4da4926a72c2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Y3V0ZSUyMGNhdHxlbnwwfHwwfHw%3D&w=1000&q=80')
      pet1.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
      pet1.save!
      puts "finished attaching #{pet1.id} photo"
