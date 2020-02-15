# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
SIZE = ["1D", "1DK", "1LDK", "2DK", "2LDK", "2LDK"]
CITY = ["Meguro", "Shibuya", "Roppongi","Ebisu", "Nakameguro", "Daikanyama", "Namano"]
INFO = ["Elegant style", "Modern style", "Close to staion"]

# platform: PLATFORMS.sample

require 'faker'


# puts "Creating developer accounts..."
# User.create(name:"Nii",email:"nii@gmail.com",password:"123456")
# User.create(name:"Gavin",email:"gavin@gmail.com",password:"123456")
# User.create(name:"Shouko",email:"shouko@gmail.com",password:"123456")
# User.create(name:"Yann",email:"yann@gmail.com",password:"123456")


20.times do
    property = Property.new(
      information: INFO.sample,
      created_at: Faker::Time,
      updated_at: Faker::Time,
      price: rand(50..100),
      distance_to_station: rand(50),
      pets: Faker::Boolean.boolean,
      distance_to_supermarket: rand(50),
      tatami: Faker::Boolean.boolean,
      age: rand(50),
      floor: rand(5),
      distance_to_park: rand(50),
      size: SIZE.sample,
      location: CITY.sample,
      user: User.create(email: Faker::Internet.email, password: "123456")
    )
    property.save!
end

puts 'Finished!'
