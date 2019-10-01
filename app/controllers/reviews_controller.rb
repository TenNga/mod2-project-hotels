class ReviewsController < ApplicationController

    before_action :valid?

    def index
        @guest = Guest.find(session[:user])
        @hotels = Hotel.all
    end

    def new
        @review = Review.new
        @hotels = Booking.find(guest_id == session[:user])
        byebug
        

    end

    def create 
    end




end #end of Controller class