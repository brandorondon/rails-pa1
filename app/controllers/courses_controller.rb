class CoursesController < ApplicationController
  before_filter :authorize
  def index
    @courses = Course.order(:name)
  end
end
