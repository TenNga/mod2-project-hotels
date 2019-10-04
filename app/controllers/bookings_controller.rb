class BookingsController < ApplicationController
  before_action :valid?
  def index
  end

  def new
    @booking = Booking.new 
    @room_id = params[:room_id]
    @guest_id = session[:user]
  end

  def create
    room= Room.find(params[:booking][:room_id])
    @room_id = params[:booking][:room_id]
    @guest_id = session[:user]
    # byebug
    if params[:booking]["check_in_date"].to_i > 0  && params[:booking]["check_out_date"].to_i > 0
      number_of_day = check_date_diff(params[:booking]["check_in_date"],params[:booking]["check_out_date"])
      params[:booking][:cost] = number_of_day * room.rate
    end
    
    @booking = Booking.new(booking_params)
    # byebug  
    if @booking.save
      # byebug
      redirect_to booking_path(@booking)
    else 
      render :new
    end
  end

  def show
    @booking = Booking.find(params[:id])
    @guest_id = session[:user]
  end

  def edit
    @booking = Booking.find(params[:id])
    @guest_id = session[:user]
    @room_id = @booking.room.id
  end

  def update
    @booking = Booking.find(params[:id])
    room= Room.find(params[:booking][:room_id])
   
    @guest_id = session[:user]
    @room_id = @booking.room.id
    if params[:booking]["check_in_date"].to_i > 0  && params[:booking]["check_out_date"].to_i > 0
      number_of_day = check_date_diff(params[:booking]["check_in_date"],params[:booking]["check_out_date"])
      params[:booking][:cost] = number_of_day * room.rate
    end
 
    
    if @booking.update(booking_params) 
      # byebug
      redirect_to booking_path(@booking)
    else 
      render :new
    end

  end

  def destroy
    booking = Booking.find(params[:id])
    guest_id = booking.guest.id 
    booking.delete 
    redirect_to guest_path(guest_id)
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
