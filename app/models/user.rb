class User < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  has_secure_password
  has_and_belongs_to_many :courses


  def enroll(course_id)
    course = Course.find_by(id: course_id.to_i)
    self.courses << course
  end
end
