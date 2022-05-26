class MentorsController < ApplicationController
  def index
    if params[:query].present?
      sql_query = "title ILIKE :query OR expertise ILIKE :query"
      @mentors = Mentor.where(sql_query, query: "%#{params[:query]}%")
      @result = @mentors.count
    else
      @mentors = Mentor.all
    end
  end

  def show
    @booking = Booking.new
    @user = current_user
    @mentor = Mentor.find(params[:id])
  end

  def new
    @mentor = Mentor.new
  end

  def create
    @mentor = Mentor.new(mentor_params)
    @mentor.user = current_user
    if @mentor.save
      redirect_to "/mentors"
    else
      render :new
    end
  end

  private

  def mentor_params
    params.require(:mentor).permit(:expertise, :description, :title, :linkedin, :avaiability)
  end
end
