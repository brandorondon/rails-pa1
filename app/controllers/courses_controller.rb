class CoursesController < ApplicationController
  before_filter :authorize
  def index
    puts "********************** #{params[:identification]['identification']}"
    if params[:search]
      @courses = Course.search(params[:search],params[:identification]['identification'])
    else
      @courses = Course.all
    end
  end
end
