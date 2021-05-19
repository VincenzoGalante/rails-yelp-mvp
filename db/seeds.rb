# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

categories = ["chinese", "italian", "japanese", "french", "belgian"]

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating dummy restuarants"
10.times {
  Restaurant.create(
    name: Faker::Company.name,
    address: Faker::Address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: categories.sample
    )
}

puts "Finished creating dummy restaurants"
