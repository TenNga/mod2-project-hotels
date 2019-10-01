class GuestsController < ApplicationController
  before_action :valid?, except: [:new, :create]
  def index
    @guests = Guest.all
  end

  def new
    @guest = Guest.new
  end

  def create
    guest = Guest.create(guest_params)
    session[:user] = guest.id 
    redirect_to home_pages_path
  end

  def show
    @guest = Guest.find(params[:id])
    @bookings = @guest.bookings
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private 
  def guest_params
    params.require(:guest).permit(:first_name, :last_name, :email,:password)
  end
end
