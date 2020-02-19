# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
LAYOUT = ["1D", "1DK", "1LDK", "2DK", "2LDK", "2LDK"]
CITY = ["Meguro", "Shibuya", "Roppongi","Ebisu", "Nakameguro", "Daikanyama", "Namano"]
INFO = ["Elegant style", "Modern style", "Close to staion"]

# platform: PLATFORMS.sample

require 'faker'
require "open-uri"

Property.destroy_all
User.destroy_all


puts "Creating developer accounts..."
User.create(email:"nii@gmail.com",password:"123456")
User.create(email:"gavin@gmail.com",password:"123456")
User.create(email:"shouko@gmail.com",password:"123456")
User.create(email:"yann@gmail.com",password:"123456")


10.times do |index|
  photos = [
    'https://goodnaturestation.com/wp/wp-content/themes/biostyle/img/category/room/top-banner-background-room7.jpg',
    'https://images.unsplash.com/photo-1486304873000-235643847519?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2378&q=80',
    'https://images.unsplash.com/photo-1522708323590-d24dbb6b0267?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80',
    'https://images.unsplash.com/photo-1538183744096-546dd974a90e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1334&q=80',
    'https://images.unsplash.com/photo-1545454760-a8e55231441c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2551&q=80'
  ]

    property = Property.new(
      information: INFO.sample,
      price: rand(50..100),
      distance_to_station: rand(50),
      pets: Faker::Boolean.boolean,
      distance_to_supermarket: rand(50),
      tatami: Faker::Boolean.boolean,
      age: rand(50),
      floor: rand(5),
      distance_to_park: rand(50),
      size: rand(50),
      layout: LAYOUT.sample,
      location: CITY.sample,
      user: User.create(email: Faker::Internet.email, password: "123456"),
      deposit: rand(10..50)
    )
    file = URI.open(photos.sample)
    property.photo.attach(io: file, filename: "room#{index}.jpg", content_type: 'image/jpg')
    property.save!
end

puts 'Finished!'
