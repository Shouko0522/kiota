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
      information: "A high-rise apartment",
      price: 120000,
      distance_to_station: 10,
      pets: true,
      distance_to_supermarket: 5,
      age: 5,
      floor: 13,
      distance_to_park: 5,
      size: 50,
      layout: "2LDK",
      location: "Shinjuku",
      user: User.create(email: Faker::Internet.email, password: "123456"),
      deposit: 120000,
      key_money: 120000,
      initial_cost: 360000
      )
    file = URI.open("http://imgs.u-note.me/note/uploadimage/1517469286245.jpg")
    property.photo.attach(io: file, filename: "room1.jpg", content_type: 'image/jpg')
    property.save!

property = Property.new(
      information: "A one bedroom apartment",
      price: 70000,
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
      deposit: 70000,
      key_money: 70000,
      initial_cost: 210000
      )
    file = URI.open("https://the-tanaka.com/wp-content/uploads/2017/05/room-2-768x576.jpg")
    property.photo.attach(io: file, filename: "room2.jpg", content_type: 'image/jpg')
    property.save!

property = Property.new(
      information: "A one bedroom apartment",
      price: 80000,
      distance_to_station: 10,
      pets: false,
      distance_to_supermarket: 5,
      age: 6,
      floor: 7,
      distance_to_park: 10,
      size: 40,
      layout: "1DK",
      location: "Shibuya",
      user: User.create(email: Faker::Internet.email, password: "123456"),
      deposit: 80000,
      key_money: 80000,
      initial_cost: 240000
      )
    file = URI.open("https://simple-hira.com/wp-content/uploads/2017/11/f6ba78c90a4d93b9f5f93a35e791aa18.jpg")
    property.photo.attach(io: file, filename: "room3.jpg", content_type: 'image/jpg')
    property.save!

property = Property.new(
      information: "A one bedroom apartment",
      price: 60000,
      distance_to_station: 20,
      pets: false,
      distance_to_supermarket: 5,
      age: 9,
      floor: 1,
      distance_to_park: 10,
      size: 40,
      layout: "1DK",
      location: "Shibuya",
      user: User.create(email: Faker::Internet.email, password: "123456"),
      deposit: 60000,
      key_money: 60000,
      initial_cost: 180000
      )
    file = URI.open("https://d1sw4fcdq5we39.cloudfront.net/wp-content/uploads/2017/10/13121353/37b5ecb9-9c49-4be1-a01a-d3d11ab39483-P1.jpg")
    property.photo.attach(io: file, filename: "room4.jpg", content_type: 'image/jpg')
    property.save!


property = Property.new(
      information: "A one bedroom apartment",
      price: 100000,
      distance_to_station: 5,
      pets: false,
      distance_to_supermarket: 10,
      age: 2,
      floor: 4,
      distance_to_park: 10,
      size: 50,
      layout: "1DK",
      location: "Shibuya",
      user: User.create(email: Faker::Internet.email, password: "123456"),
      deposit: 100000,
      key_money: 100000,
      initial_cost: 300000
      )
    file = URI.open("https://www.aeras-group.jp/wp-content/themes/aeras/iwf/vendors/timthumb.php?w=550&src=https%3A%2F%2Fwww.aeras-group.jp%2Fwp-content%2Fuploads%2F2018%2F10%2F2_2_1_30141123.jpg")
    property.photo.attach(io: file, filename: "room5.jpg", content_type: 'image/jpg')
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
    file = URI.open("https://assets.media-platform.com/roomie/dist/images/2019/09/DSCF7354.jpg")
    property.photo.attach(io: file, filename: "room6.jpg", content_type: 'image/jpg')
    property.save!

property = Property.new(
      information: "A one bedroom apartment",
      price: 100000,
      distance_to_station: 5,
      pets: false,
      distance_to_supermarket: 10,
      age: 2,
      floor: 4,
      distance_to_park: 10,
      size: 50,
      layout: "1DK",
      location: "Roppongi",
      user: User.create(email: Faker::Internet.email, password: "123456"),
      deposit: 100000,
      key_money: 100000,
      initial_cost: 300000
      )
    file = URI.open("https://lh3.googleusercontent.com/-Az-Q5p_rnOQ/WeMI1-lyfxI/AAAAAAAAn08/0GlHp6Umyfwf4hhNyITtULBnCzp3KjMqACE0YBhgL/s1024/DSC00272%257E2.JPG")
    property.photo.attach(io: file, filename: "room7.jpg", content_type: 'image/jpg')
    property.save!

property = Property.new(
      information: "A one bedroom apartment",
      price: 100000,
      distance_to_station: 5,
      pets: false,
      distance_to_supermarket: 10,
      age: 2,
      floor: 4,
      distance_to_park: 10,
      size: 50,
      layout: "1DK",
      location: "Shibuya",
      user: User.create(email: Faker::Internet.email, password: "123456"),
      deposit: 100000,
      key_money: 100000,
      initial_cost: 300000
      )
    file = URI.open("https://www.aeras-group.jp/wp-content/themes/aeras/iwf/vendors/timthumb.php?w=550&src=https%3A%2F%2Fwww.aeras-group.jp%2Fwp-content%2Fuploads%2F2018%2F10%2F2_2_1_30141123.jpg")
    property.photo.attach(io: file, filename: "room8.jpg", content_type: 'image/jpg')

property = Property.new(
      information: "A one bedroom apartment",
      price: 120000,
      distance_to_station: 5,
      pets: false,
      distance_to_supermarket: 10,
      age: 2,
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
    file = URI.open("https://hitorikurashi.com/wp-content/uploads/2015/10/3092b594387976da880f943cf9ebad9b_s.jpg")
    property.photo.attach(io: file, filename: "room9.jpg", content_type: 'image/jpg')
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
    file = URI.open("https://www.img-asp.jp/cms/189116_1_500_1000_1.jpg?t=1575678072")
    property.photo.attach(io: file, filename: "room10.jpg", content_type: 'image/jpg')
    property.save!



puts 'Finished!'
