class Guest < ApplicationRecord
    has_secure_password
    has_many :bookings
    has_many :reviews
    has_many :rooms, through: :bookings

end
