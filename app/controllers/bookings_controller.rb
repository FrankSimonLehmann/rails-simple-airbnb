class BookingsController < ApplicationController
  def create
    @flat = Flat.find(params[:flat_id])
    @booking = Booking.new(params_booking)
    @booking.flat = @flat
    @booking.save
    redirect_to flats_path
  end

  private

  def params_booking
    params.require(:booking).permit(:from, :to, :flat_id)
  end
end
