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


20.times do |index|
  photos = [
    'http://imgs.u-note.me/note/uploadimage/1517469286245.jpg',
    'https://up.gc-img.net/post_img_web/2016/10/xes771bmnKlLojl.jpeg',
    'https://the-tanaka.com/wp-content/uploads/2017/05/room-2-768x576.jpg',
    'https://journal.anabuki-style.com/wp-content/uploads/2018/02/02-2.jpg',
    'http://imgs.u-note.me/note/uploadimage/1517462957903.jpg',
    'https://satellite-img.athome.co.jp/ag/entry_id/15045/slide_01.jpg',
    'https://cdn.roomclip.jp/v1/1536/roomclip-bucket/img_1536/8d7079273285cf374d52f533ab35b9624dab0c66.jpg',
    'https://simple-hira.com/wp-content/uploads/2017/11/f6ba78c90a4d93b9f5f93a35e791aa18.jpg',
    'https://img02.ti-da.net/usr/aikata/CA320087.JPG'
  ]

    property = Property.new(
      information: INFO.sample,
      price: rand(50..100),
      distance_to_station: rand(20),
      pets: Faker::Boolean.boolean,
      distance_to_supermarket: rand(20),
      tatami: Faker::Boolean.boolean,
      age: rand(10),
      floor: rand(5),
      distance_to_park: rand(20),
      size: rand(29..50),
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
