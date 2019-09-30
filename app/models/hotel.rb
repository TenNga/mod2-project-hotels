class Hotel < ApplicationRecord
    has_many :rooms
    has_many :reviews
    has_many :bookings, through: :rooms
end
