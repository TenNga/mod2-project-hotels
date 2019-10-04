require 'csv'
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
Booking.destroy_all
Guest.destroy_all

# h1 = Hotel.create!(image: "", name: "Sheraton", city: "London", country: "England")
# h2 = Hotel.create!(image: "", name: "Hilton", city: "Sydney", country: "Australia")
# h3 = Hotel.create!(image: "", name: "Marriot", city: "New York", country: "United States")
# h4 = Hotel.create!(image: "", name: "Four Points", city: "Sydney", country: "Australia")

# ro1 = Room.create!(image: "", room_type: "Single King", rate: 100, hotel_id: h1.id)
# ro2 = Room.create!(image: "", room_type: "Double Twin", rate: 125, hotel_id: h2.id)
# ro3 = Room.create!(image: "", room_type: "Double Queen", rate: 175, hotel_id: h2.id)
# ro4 = Room.create!(image: "", room_type: "Suite", rate: 250, hotel_id: h3.id)

# re1 = Review.create!(title: "Terrible!", star: 2 , content: "I hated it!", hotel_id: h1.id, guest_id: 1)
# re2 = Review.create!(title: "Amazing!", star: 5, content: "I loved it!", hotel_id: h2.id, guest_id: 1)
# re3 = Review.create!(title: "Excellent", star: 4, content: "Great!", hotel_id: h2.id, guest_id: 1)

sing_king_image_url = [
    "http://hotelsunbee.com/wp/wp-content/uploads/2015/02/%ED%81%AC%EA%B8%B0%EB%B3%80%ED%99%98__XW_0039-Edit-1024x651.jpg",
    "http://cameta.club/image_upload/ho/classic-room-l-four-points-kuwait-hotel-acmodation_single-bedroom.jpg",
    "https://www.conversanttraveller.com/wp-content/uploads/2018/05/Deluxe-Room-at-The-Principal-Hotel-in-York-1050x788.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVpAt94l9liJuCqy0IpDTXFGj4QHicRXrQ8-zLsR3eX8jJlY0c",
    "http://www.prague-guide.com/images/9/7.jpg",
    "http://www.hardrockhotelsd.com/img/rooms/studio-rooms3.jpg",
    "http://secphp.com/match/2-Bedroom-Suites-In-San-Diego-28-Images-Hotels-In-San.jpg"
    ]
    double_twin_image_url = [
        "https://media-cdn.tripadvisor.com/media/photo-s/0b/eb/86/a0/room-with-2-twin-beds.jpg",
        "https://i5.walmartimages.com/asr/9b3053d7-a49b-4ab7-a14e-64e5713df678_1.5a099d504110d54196ee045e889da1d2.jpeg?odnHeight=450&odnWidth=450&odnBg=FFFFFF",
        "https://media-cdn.tripadvisor.com/media/photo-s/0a/f2/04/77/room-2-twin-beds.jpg",
        "https://media-cdn.tripadvisor.com/media/photo-s/01/2b/f7/5d/2-twin-beds.jpg",
        "https://i.pinimg.com/736x/57/50/b2/5750b2dedf43c74f25478fc07303d27b.jpg",
        "https://photos.demandstudios.com/getty/article/181/89/149870025_XS.jpg",
        "http://popupnation.co/wp-content/uploads/2018/11/2-twin-beds-bed-will-frames-make-a-king-with-corner-unit-put-together-how-big-is.jpg"
    ]

table = CSV.parse(File.read("db/hotel_data.csv"), headers: true, :encoding => 'ISO-8859-1')
table.each do |row|
    rowH = row.to_hash
    if rowH["image"] && rowH["name"] && rowH["city"] && rowH["country"]
        hotel = Hotel.create!(image: rowH["image"], name: rowH["name"], city: rowH["city"], country: rowH["country"])
        5.times {
            Room.create!(image: sing_king_image_url[rand(0..6)], room_type: "Single King", rate: rand(200..350), hotel_id: hotel.id)
        }
        10.times {
            Room.create!(image: double_twin_image_url[rand(0..6)], room_type: "Double Twin", rate: rand(100..220), hotel_id: hotel.id)
            Room.create!(image: double_twin_image_url[rand(0..6)], room_type: "Double Queens", rate: rand(150..250), hotel_id: hotel.id)
        }
        2.times {
            Room.create!(image: double_twin_image_url[rand(0..6)], room_type: "Suite", rate: rand(500..900), hotel_id: hotel.id)
        }

    end
end