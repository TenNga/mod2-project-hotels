class ReviewsController < ApplicationController

    before_action :valid?

    def index
        @guest = Guest.find(session[:user])
        @hotels = Hotel.all
    end

    def new
       
        @review = Review.new
        @guest = Guest.find(session[:user])

        
    end

    def create 
        params[:review][:guest_id] = session[:user]
        # byebug
        @review = Review.new(review_params)
        if @review.save
            redirect_to reviews_path
        else
            render :new
        end

    end

    private

    def review_params
        params.require(:review).permit(:title, :star, :content, :hotel_id, :guest_id)
    end




end #end of Controller class