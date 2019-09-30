class BookingsController < ApplicationController
  def index
  end

  def new
    @booking = Booking.new
    @guest = Guest.find(params[:guest_id].to_i)
    @rooms = Room.all 
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
