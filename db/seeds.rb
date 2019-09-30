# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Hotel.destroy_all
Room.destroy_all

h1 = Hotel.create!(image: "", name: "Sheraton", city: "London", country: "England")
h2 = Hotel.create!(image: "", name: "Hilton", city: "Sydney", country: "Australia")
h3 = Hotel.create!(image: "", name: "Marriot", city: "New York", country: "United States")
h4 = Hotel.create!(image: "", name: "Four Points", city: "Sydney", country: "Australia")

ro1 = Room.create!(image: "", room_type: "Single King", rate: 100, hotel_id: h1.id)
ro2 = Room.create!(image: "", room_type: "Double Twin", rate: 125, hotel_id: h2.id)
ro3 = Room.create!(image: "", room_type: "Double Queen", rate: 175, hotel_id: h2.id)
ro4 = Room.create!(image: "", room_type: "Suite", rate: 250, hotel_id: h3.id)
