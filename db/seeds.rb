puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
categories = ["chinese", "italian", "japanese", "french", "belgian"]

10.times do
  restaurant = Restaurant.create(
    name: Faker::Name.name.capitalize,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: categories.sample
  )

  # rand(5..10).times do
  #   review = Review.create(
  #     content: Faker::Movies::VForVendetta.quote,
  #     rating: rand(1..10)
  #   )
  # end
end
puts 'Finished!'

