# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'cleaning up database'
Restaurant.destroy_all
puts 'database is clean'
puts 'creating restaurants'
5.times do
  restaurant = Restaurant.create(
    name: Faker::Name.name,
    address: Faker::Address.street_address,
    category: %w[chinese italian japanese french belgian].sample,
    phone_number: Faker::PhoneNumber.phone_number
  )
  puts "restaurants #{restaurant.id} is created"
end
puts 'done'

# puts 'Creating a review...'
# 5.times do
#   review = Review.create(
#     rating:

#   )

# end

# Review.create!(review_attributes)
# puts 'Finished!'
