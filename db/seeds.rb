require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
restaurant_pictures = [
  "https://www.gastroeconomy.com/wp-content/uploads/2014/02/Gastroeconomy_Nahm21.jpg",
  "https://media-cdn.tripadvisor.com/media/photo-s/1c/f3/cc/4a/bife-de-chorizo-especial.jpg",
  "https://media-cdn.tripadvisor.com/media/photo-c/320x120/17/28/0e/e3/caption.jpg",
  "https://media-cdn.tripadvisor.com/media/photo-s/18/4d/dc/b4/asi-nos-vemos.jpg",
  "https://media-cdn.tripadvisor.com/media/photo-s/16/81/94/c0/photo0jpg.jpg",
  "https://media-cdn.tripadvisor.com/media/photo-s/12/b1/5d/0e/iiespacios-maravillosos.jpg",
  "https://media-cdn.tripadvisor.com/media/photo-s/15/47/46/e3/vista-del-piso-inferior.jpg",
  "https://media-cdn.tripadvisor.com/media/photo-s/23/5f/3c/1d/soul-korean-food-medellin.jpg",
  "https://media-cdn.tripadvisor.com/media/photo-s/0d/fb/e5/37/marquesina.jpg",
  "https://media-cdn.tripadvisor.com/media/photo-s/0c/43/bb/77/envy-rooftop.jpg",
  "https://media-cdn.tripadvisor.com/media/photo-s/16/04/21/ae/mercado-del-rio.jpg",
  "https://media-cdn.tripadvisor.com/media/photo-s/18/03/12/12/cafe-con-mucho-amor.jpg",
  "https://media-cdn.tripadvisor.com/media/photo-s/19/e6/ed/f7/chicken-and-waffles-are.jpg",
  "https://media-cdn.tripadvisor.com/media/photo-s/0d/c9/4e/f9/galleta-gelato-arte-dolce.jpg",
  "https://media-cdn.tripadvisor.com/media/photo-s/10/d0/cb/5c/preparacion-de-cafe-en.jpg"
]


 Restaurant.destroy_all
15.times do
  restaurant = Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_name,
    phone_number: Faker::Number.number(digits: 10),
    image: restaurant_pictures.sample,
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
