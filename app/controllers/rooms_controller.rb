class RoomsController < ApplicationController
  before_action :valid?
  def index
    @rooms = Room.all
  end

  def show
    @booking = Booking.new 
    @room = Room.find(params[:id])
    @guest = Guest.find_by(id: session[:user])
  end
end
