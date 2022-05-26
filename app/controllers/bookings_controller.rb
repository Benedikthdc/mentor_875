class BookingsController < ApplicationController
  def create
    @user = current_user
    @mentor = Mentor.find(params[:mentor_id])
    @booking = Booking.new(booking_params)
    @booking.user = @user
    @booking.mentor = @mentor
    if @booking.save
      redirect_to '/'
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:user_id, :mentor_id, :date)
  end
end


