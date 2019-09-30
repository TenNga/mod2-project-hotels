class GuestsController < ApplicationController
  def index
    @guests = Guest.all
  end

  def new
    @guest = Guest.new
  end

  def create
    guest = Guest.create(guest_params)
    redirect_to guest_path(guest) 
  end

  def show
    @guest = Guest.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private 
  def guest_params
    params.require(:guest).permit(:first_name, :last_name, :email)
  end
end
