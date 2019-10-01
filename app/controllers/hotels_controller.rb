class HotelsController < ApplicationController
  before_action :valid?
  def index
    @hotels = Hotel.all
  end

  def show
    @hotel = Hotel.find(params[:id])
  end
end
