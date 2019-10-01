class BookingsController < ApplicationController
  before_action :valid?
  def index
  end

  def new
    
  end

  def create
    room = Room.find(params[:booking][:room_id])
    
    number_of_day = check_date_diff(params[:booking]["check_in_date"],params[:booking]["check_out_date"])
    params[:booking][:cost] = number_of_day * room.rate


    booking = Booking.create(booking_params)
    
    redirect_to booking_path(booking)
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def check_date_diff(start_date_string,end_date_string)
    start_date = Date.parse(start_date_string)
    end_date = Date.parse(end_date_string)
    diff = (end_date - start_date).to_i
  end

  private 
  def booking_params
    params.require(:booking).permit(:check_in_date, :check_out_date,:number_of_guest,:booking_date,:cost,:guest_id, :room_id)
  end

end
