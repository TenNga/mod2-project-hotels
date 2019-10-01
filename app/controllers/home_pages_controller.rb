class HomePagesController < ApplicationController
  def index
    @rooms = Room.all
    # @uniq_cities = hotels.select(:city).uniq.sort
    # byebug
    @cities = Hotel.all.map{|h| h.city}
    @uniq_cities = @cities.uniq.sort
    if params[:city]
      # byebug
      @hotels = Hotel.select{|h| h.city == params[:city]}
      # byebug
    else
      @hotels = Hotel.all
      # byebug
    end
  end

end
