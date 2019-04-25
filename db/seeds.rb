# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Dog.destroy_all
Dogsitter.destroy_all
City.destroy_all


6.times do
City.create(city_name: Faker::Address.city)
end

20.times do
Dog.create(dog_name:Faker::Beer.brand, city_id: City.all.sample.id)
end

20.times do
Dogsitter.create(first_name:Faker::TvShows::SouthPark.character,last_name: Faker::JapaneseMedia::DragonBall.character, city_id: City.all.sample.id)
end

30.times do
  Stroll.create(dog_id: Dog.all.sample.id, dogsitter_id: Dog.all.sample.id, date: (Faker::Date.between(2.days.ago, 30.days.from_now)))
end
