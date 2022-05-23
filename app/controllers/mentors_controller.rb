class MentorsController < ApplicationController
  def index
    @mentors = Mentor.all
  end

  def show
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
    params.require(:mentor).permit(:expertise, :description, :title)
  end
end
