require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Restaurant.destroy_all
20.git addtimes do
  restaurant = Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_name,
    phone_number: Faker::Number.number(digits: 10),
    category: ['chinese', 'italian', 'japanese', 'french', 'belgian'].sample
  )
  5.times do
    Review.create(
      content: Faker::Lorem.paragraph,
      rating: rand(1..5),
      # restaurant_id: Restaurant.last.id
      restaurant: restaurant
    )
  end
end
