# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
LAYOUT = ["1LDK"]
CITY = ["Meguro", "Ebisu", "Shibuya"]
INFO = ["Elegant style", "Modern style", "Close to staion"]

# platform: PLATFORMS.sample

require 'faker'
require "open-uri"

PropertyViewing.destroy_all
Property.destroy_all
User.destroy_all


puts "Creating developer accounts..."
User.create(email:"nii@gmail.com",password:"123456")
User.create(email:"gavin@gmail.com",password:"123456")
User.create(email:"shouko@gmail.com",password:"123456")
User.create(email:"yann@gmail.com",password:"123456")

property = Property.new(
      information: "A apartment with garden",
      price: 120000,
      distance_to_station: 10,
      pets: true,
      distance_to_supermarket: 5,
      age: 5,
      floor: 1,
      distance_to_park: 5,
      size: 50,
      layout: "2LDK",
      location: "Shibuya",
      user: User.create(email: Faker::Internet.email, password: "123456"),
      deposit: 120000,
      key_money: 120000,
      initial_cost: 360000
      )
    file = URI.open("https://img.door.ac/door-chintai/realestate/apamanshop/5134740100/14906720_G2.jpg")
    property.photos.attach(io: file, filename: "room2.jpg", content_type: 'image/jpg')
    property.save!
    file = URI.open("https://img.door.ac/door-chintai/realestate/suumo/856/100188555856/100188555856_ro.jpg")
    property.photos.attach(io: file, filename: "room22.jpg", content_type: 'image/jpg')
    property.save!

property = Property.new(
      information: "A apartment with rooftop",
      price: 100000,
      distance_to_station: 15,
      pets: false,
      distance_to_supermarket: 5,
      age: 8,
      floor: 2,
      distance_to_park: 10,
      size: 35,
      layout: "1K",
      location: "Shibuya",
      user: User.create(email: Faker::Internet.email, password: "123456"),
      deposit: 100000,
      key_money: 100000,
      initial_cost: 300000
      )
    file = URI.open("https://img.door.ac/door-chintai/realestate/suumo/403/100187879403/100187879403_go.jpg")
    property.photos.attach(io: file, filename: "room1.jpg", content_type: 'image/jpg')
    property.save!
    file = URI.open("https://img.door.ac/door-chintai/realestate/suumo/403/100187879403/100187879403_2o.jpg")
    property.photos.attach(io: file, filename: "room11.jpg", content_type: 'image/jpg')
    property.save!

property = Property.new(
      information: "A one bedroom apartment",
      price: 110000,
      distance_to_station: 5,
      pets: false,
      distance_to_supermarket: 5,
      age: 6,
      floor: 7,
      distance_to_park: 10,
      size: 35,
      layout: "1DK",
      location: "Shibuya",
      user: User.create(email: Faker::Internet.email, password: "123456"),
      deposit: 100000,
      key_money: 100000,
      initial_cost: 300000
      )
    file = URI.open("https://img.door.ac/door-chintai/realestate/suumo/046/100186603046/100186603046_go.jpg")
    property.photos.attach(io: file, filename: "room3.jpg", content_type: 'image/jpg')
    property.save!
    file = URI.open("https://img.door.ac/door-chintai/realestate/suumo/046/100186603046/100186603046_ro.jpg")
    property.photos.attach(io: file, filename: "room33.jpg", content_type: 'image/jpg')
    property.save!

property = Property.new(
      information: "A one bedroom apartment",
      price: 90000,
      distance_to_station: 20,
      pets: false,
      distance_to_supermarket: 5,
      age: 9,
      floor: 6,
      distance_to_park: 10,
      size: 40,
      layout: "1DK",
      location: "Shibuya",
      user: User.create(email: Faker::Internet.email, password: "123456"),
      deposit: 90000,
      key_money: 90000,
      initial_cost: 270000
      )
    file = URI.open("https://img.door.ac/door-chintai/realestate/suumo/473/100187718473/100187718473_go.jpg")
    property.photos.attach(io: file, filename: "room4.jpg", content_type: 'image/jpg')
    property.save!
    file = URI.open("https://img.door.ac/door-chintai/realestate/suumo/473/100187718473/100187718473_ro.jpg")
    property.photos.attach(io: file, filename: "room44.jpg", content_type: 'image/jpg')
    property.save!


property = Property.new(
      information: "A one bedroom apartment",
      price: 100000,
      distance_to_station: 5,
      pets: false,
      distance_to_supermarket: 10,
      age: 2,
      floor: 1,
      distance_to_park: 10,
      size: 50,
      layout: "1DK",
      location: "Shibuya",
      user: User.create(email: Faker::Internet.email, password: "123456"),
      deposit: 100000,
      key_money: 100000,
      initial_cost: 300000
      )
    file = URI.open("https://img.door.ac/door-chintai/realestate/suumo/095/100183440095/100183440095_go.jpg")
    property.photos.attach(io: file, filename: "room5.jpg", content_type: 'image/jpg')
    property.save!
    file = URI.open("https://img.door.ac/door-chintai/realestate/suumo/095/100183440095/100183440095_ro.jpg")
    property.photos.attach(io: file, filename: "room55.jpg", content_type: 'image/jpg')
    property.save!

property = Property.new(
      information: "Stylish one bedroom apartment",
      price: 110000,
      distance_to_station: 5,
      pets: false,
      distance_to_supermarket: 10,
      age: 5,
      floor: 4,
      distance_to_park: 10,
      size: 50,
      layout: "1DK",
      location: "Shibuya",
      user: User.create(email: Faker::Internet.email, password: "123456"),
      deposit: 110000,
      key_money: 110000,
      initial_cost: 330000
      )
    file = URI.open("https://img.door.ac/door-chintai/realestate/suumo/762/100186890762/100186890762_go.jpg")
    property.photos.attach(io: file, filename: "room6.jpg", content_type: 'image/jpg')
    property.save!
    file = URI.open("https://img.door.ac/door-chintai/realestate/suumo/395/100187498395/100187498395_1o.jpg")
    property.photos.attach(io: file, filename: "room66.jpg", content_type: 'image/jpg')
    property.save!

property = Property.new(
      information: "A one bedroom apartment",
      price: 80000,
      distance_to_station: 5,
      pets: false,
      distance_to_supermarket: 10,
      age: 2,
      floor: 4,
      distance_to_park: 10,
      size: 35,
      layout: "1DK",
      location: "Roppongi",
      user: User.create(email: Faker::Internet.email, password: "123456"),
      deposit: 80000,
      key_money: 80000,
      initial_cost: 240000
      )
    file = URI.open("https://img.door.ac/door-chintai/realestate/suumo/316/100140643316/100140643316_4o.jpg")
    property.photos.attach(io: file, filename: "room7.jpg", content_type: 'image/jpg')
    property.save!
    file = URI.open("https://img.door.ac/door-chintai/realestate/suumo/316/100140643316/100140643316_10o.jpg")
    property.photos.attach(io: file, filename: "room77.jpg", content_type: 'image/jpg')
    property.save!

property = Property.new(
      information: "A one bedroom apartment",
      price: 70000,
      distance_to_station: 5,
      pets: false,
      distance_to_supermarket: 10,
      age: 8,
      floor: 4,
      distance_to_park: 10,
      size: 35,
      layout: "1DK",
      location: "Shibuya",
      user: User.create(email: Faker::Internet.email, password: "123456"),
      deposit: 70000,
      key_money: 70000,
      initial_cost: 210000
      )
    file = URI.open("https://img.door.ac/door-chintai/realestate/suumo/076/100188195076/100188195076_9o.jpg")
    property.photos.attach(io: file, filename: "room8.jpg", content_type: 'image/jpg')
    property.save!
    file = URI.open("https://img.door.ac/door-chintai/realestate/suumo/076/100188195076/100188195076_ro.jpg")
    property.photos.attach(io: file, filename: "room88.jpg", content_type: 'image/jpg')
    property.save!

property = Property.new(
      information: "A one bedroom apartment",
      price: 110000,
      distance_to_station: 5,
      pets: false,
      distance_to_supermarket: 10,
      age: 0,
      floor: 4,
      distance_to_park: 10,
      size: 50,
      layout: "1DK",
      location: "Roppongi",
      user: User.create(email: Faker::Internet.email, password: "123456"),
      deposit: 120000,
      key_money: 0,
      initial_cost: 240000
      )
    file = URI.open("https://img.door.ac/door-chintai/realestate/suumo/893/100188658893/100188658893_go.jpg")
    property.photos.attach(io: file, filename: "room9.jpg", content_type: 'image/jpg')
    property.save!
    file = URI.open("https://img.door.ac/door-chintai/realestate/suumo/893/100188658893/100188658893_ro.jpg")
    property.photos.attach(io: file, filename: "room99.jpg", content_type: 'image/jpg')
    property.save!

property = Property.new(
      information: "A one bedroom apartment",
      price: 110000,
      distance_to_station: 5,
      pets: false,
      distance_to_supermarket: 10,
      age: 5,
      floor: 4,
      distance_to_park: 10,
      size: 50,
      layout: "1DK",
      location: "Roppongi",
      user: User.create(email: Faker::Internet.email, password: "123456"),
      deposit: 110000,
      key_money: 0,
      initial_cost: 220000
      )
    file = URI.open("https://img.door.ac/door-chintai/realestate/suumo/274/100185751274/100185751274_ro.jpg")
    property.photos.attach(io: file, filename: "room10.jpg", content_type: 'image/jpg')
    property.save!
    file = URI.open("https://img.door.ac/door-chintai/realestate/suumo/274/100185751274/100185751274_ro.jpg")
    property.photos.attach(io: file, filename: "room100.jpg", content_type: 'image/jpg')
    property.save!



puts 'Finished!'
