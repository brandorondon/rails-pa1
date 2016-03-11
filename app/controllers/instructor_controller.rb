class InstructorController < ApplicationController
  before_filter :authorize
  def index
    @instructors = Instructor.order(:last)
  end
end
