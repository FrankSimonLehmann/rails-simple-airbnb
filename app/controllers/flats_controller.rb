class FlatsController < ApplicationController

  def index
    @flats = Flat.all
  end

  def show
    @booking = Booking.new
    @flat = Flat.find(params[:id])
  end

end
