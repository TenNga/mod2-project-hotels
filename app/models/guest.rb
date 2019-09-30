class Guest < ApplicationRecord
    has_many :bookings
    has_many :reviews
    has_many :rooms, through: :bookings

end
