class SubjectsController < ApplicationController
  before_filter :authorize
  def index
    @subjects = Subject.order(:name)
  end
end
