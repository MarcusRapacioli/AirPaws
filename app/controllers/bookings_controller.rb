class BookingsController < ApplicationController

require 'json'
require 'open-uri'

url = 'https://api.teleport.org/api/'
teleport_data = open(url).read
user = JSON.parse(teleport_data)


  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @user = current_user
    @puppy = Puppy.find(params[:puppy_id])

    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
  end

  private

  def booking_params
    params.require(:booking).permit(:pick_up, :drop_off)
  end

end
