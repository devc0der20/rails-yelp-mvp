require 'faker'

puts "creating restaus"
10.times do
  restaurant = Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: %w(french belgian japanese italian chinese).sample
  )
  puts "created #{restaurant.name}"
end
puts "done!"
