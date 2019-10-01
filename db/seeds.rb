# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Hotel.destroy_all
Room.destroy_all
Review.destroy_all

h1 = Hotel.create!(image: "", name: "Sheraton", city: "London", country: "England")
h2 = Hotel.create!(image: "", name: "Hilton", city: "Sydney", country: "Australia")
h3 = Hotel.create!(image: "", name: "Marriot", city: "New York", country: "United States")
h4 = Hotel.create!(image: "", name: "Four Points", city: "Sydney", country: "Australia")

ro1 = Room.create!(image: "", room_type: "Single King", rate: 100, hotel_id: h1.id)
ro2 = Room.create!(image: "", room_type: "Double Twin", rate: 125, hotel_id: h2.id)
ro3 = Room.create!(image: "", room_type: "Double Queen", rate: 175, hotel_id: h2.id)
ro4 = Room.create!(image: "", room_type: "Suite", rate: 250, hotel_id: h3.id)

re1 = Review.create!(title: "Terrible!", star: 2 , content: "I hated it!", hotel_id: h1.id, guest_id: 1)
re2 = Review.create!(title: "Amazing!", star: 5, content: "I loved it!", hotel_id: h2.id, guest_id: 1)
re3 = Review.create!(title: "Excellent", star: 4, content: "Great!", hotel_id: h2.id, guest_id: 1)
