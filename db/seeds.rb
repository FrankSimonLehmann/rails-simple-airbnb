require 'faker'

puts "deleting all old flats..."
Flat.destroy_all

puts "creating new flats..."

100.times do Flat.create(
  name: Faker::Ancient.god,
  address: Faker::Address.full_address,
  description: Faker::Quote.matz,
  price_per_night: rand(50..500),
  number_of_guests: rand(1..10),
  img: "https://source.unsplash.com/random?appartment/#{rand(1..80)}"
)
end

puts "finish!!!!"
