# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Chaque bloc vide une db et créé 20 entrées générées aléatoirement, à l'exception de Specialty qui est prédeterminé.

require 'faker'

City.destroy_all
i=1
20.times do
  city = City.create!(name: Faker::Address.city, zip_code: Faker::Address.zip_code)
  puts "City n°#{i} created"
  i += 1
end

Dogsitter.destroy_all
i=1
20.times do
  doctor = Dogsitter.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city_id: City.all.sample.id)
  puts "Dogsitter n°#{i} created"
  i += 1
end

Dog.destroy_all
i=1
20.times do
  dog = Dog.create!(name: Faker::FunnyName.name, city_id: City.all.sample.id)
  puts "Dog n°#{i} created"
  i += 1
end

Stroll.destroy_all
i=1
20.times do
  stroll = Stroll.create!(date: Faker::Date.forward(days: 200), duration: rand(10..60), dogsitter_id: Dogsitter.all.sample.id, dog_id: Dog.all.sample.id)
  puts "Stroll n°#{i} created"
  i += 1
end