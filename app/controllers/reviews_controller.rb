class ReviewsController < ApplicationController
    before_validation :valid?

    def index
        byebug
        @review = []
    end






end #end of controller class