class ReviewsController < ApplicationController

    before_action :valid?

    def index
        @guest = Guest.find(session[:user])
        @hotels = Hotel.all
    end

    def new
       
        @review = Review.new
        @guest = Guest.find(session[:user])
        @stars = [1,2,3,4,5]

        
    end

    def create 
        params[:review][:guest_id] = session[:user]
        # byebug
        r = Review.create!(review_params)
        redirect_to reviews_path

    end

    private

    def review_params
        params.require(:review).permit(:title, :star, :content, :hotel_id, :guest_id)
    end




end #end of Controller class