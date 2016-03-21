class CoursesController < ApplicationController
  before_filter :authorize
  def index
    if params[:search]
      @courses = Course.search(params[:search],params[:identification]['identification'])
    else
      @courses = Course.all
    end
  end

  def enroll
    current_user.enroll(params[:course_id])
    @course = Course.find_by(id: params[:course_id] )
  end

  def show
    @course = Course.find_by(id: params[:id])
  end

  def search
  end

end
