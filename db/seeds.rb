# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
require 'open-uri'

Pet.destroy_all

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
# Below needs to be sorted
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
        price: [50, 100, 150, 200, 250, 300, 350, 400, 450, 500].sample,
        # species: Species.all.sample,
        species: Species.all.sample,
        user: User.all.sample
      )
      puts "finished creating #{pet1.id} pet"

      file = URI.open('https://images.unsplash.com/photo-1529778873920-4da4926a72c2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Y3V0ZSUyMGNhdHxlbnwwfHwwfHw%3D&w=1000&q=80')
      pet1.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
      pet1.save!

      puts "finished attaching #{pet1.id} photo"

      puts 'creating pet'

      pet2 = Pet.create!(
        name: "Slothie",
        age: 4,
        address: "Cadogan gardens",
        price: [50, 100, 150, 200, 250, 300, 350, 400, 450, 500].sample,
        species: Species.all.sample,
        user: User.all.sample
      )
      puts "finished creating pet"

      file = URI.open('https://ichef.bbci.co.uk/images/ic/1040x1040/p03t268b.jpg')
      pet2.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
      pet2.save!

      puts "finished attaching photo"

      pet3 = Pet.create!(
        name: "Harper",
        age: 4,
        address: "Cadogan gardens",
        price: 100,
        species: Species.all.sample,
        user: User.all.sample
      )

      puts "finished creating pet"

      file = URI.open('https://media.wired.com/photos/593261cab8eb31692072f129/4:3/w_929,h_697,c_limit/85120553.jpg')
      pet3.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
      pet3.save!

      puts "finished attaching photo"

      pet4 = Pet.create!(
        name: "Rain",
        age: 1,
        address: "Cadogan gardens",
        price: [50, 100, 150, 200, 250, 300, 350, 400, 450, 500].sample,
       species: Species.all.sample,
        user: User.all.sample
      )
      puts "finished creating pet"

      file = URI.open('https://navs.org/wp-content/uploads/bb-plugin/cache/bunny-landscape.jpg')
      pet4.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
      pet4.save!

      puts "finished attaching photo"

      pet5 = Pet.create!(
        name: "Lily",
        age: 4,
        address: "Cadogan gardens",
        price: [50, 100, 150, 200, 250, 300, 350, 400, 450, 500].sample,
        species: Species.all.sample,
        user: User.all.sample
      )
      puts "finished creating pet"

      file = URI.open('https://static.boredpanda.com/blog/wp-content/uuuploads/cute-baby-animals/cute-baby-animals-10.jpg')
      pet5.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
      pet5.save!

      puts "finished attaching photo"

      pet6 = Pet.create!(
        name: "Belle",
        age: 4,
        address: "Cadogan gardens",
        price: [50, 100, 150, 200, 250, 300, 350, 400, 450, 500].sample,
        species: Species.all.sample,
        user: User.all.sample
      )
      puts "finished creating pet"

      file = URI.open('https://www.zsl.org/sites/default/files/styles/leader/public/image/2015-03/ZSL-Lemur-Sidebars---10.jpg?itok=xNlm9g0O')
      pet6.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
      pet6.save!

      puts "finished attaching photo"

      pet7 = Pet.create!(
        name: "Maverick",
        age: 4,
        address: "Cadogan gardens",
        price: [50, 100, 150, 200, 250, 300, 350, 400, 450, 500].sample,
        species: Species.all.sample,
        user: User.all.sample
      )
      puts "finished creating pet"

      file = URI.open('https://aldf.org/wp-content/uploads/2018/05/lamb-iStock-665494268-16x9-e1559777676675-1200x675.jpg')
      pet7.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
      pet7.save!

      puts "finished attaching photo"

      pet8 = Pet.create!(
        name: "Snowball",
        age: 13,
        address: "Cadogan gardens",
        price: [50, 100, 150, 200, 250, 300, 350, 400, 450, 500].sample,
        species: Species.all.sample,
        user: User.all.sample
      )
      puts "finished creating pet"

      file = URI.open('https://lafeber.com/pet-birds/wp-content/uploads/2020/04/gamaliel-troubleson-u9PsLITXMCQ-unsplash-e1587001975887.jpg')
      pet8.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
      pet8.save!

      puts "finished attaching photo"

      pet9 = Pet.create!(
        name: "Boston",
        age: 1,
        address: "Cadogan gardens",
        price: [50, 100, 150, 200, 250, 300, 350, 400, 450, 500].sample,
        species: Species.all.sample,
        user: User.all.sample
      )
      puts "finished creating pet"

      file = URI.open('https://s36700.pcdn.co/wp-content/uploads/2019/11/2102_Boston-puppy_Getty166523625.png')
      pet9.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
      pet9.save!

      puts "finished attaching final photo"
