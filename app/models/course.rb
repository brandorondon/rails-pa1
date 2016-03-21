class Course < ActiveRecord::Base
  has_and_belongs_to_many :users

  def self.search(course , subject_id)
    if course != "" && subject_id != ""
      where("name LIKE ? AND subject_id LIKE ?", "%#{course}%","%#{subject_id}%")

    elsif subject_id != "" && course == ""
      where("subject_id LIKE ?", "%#{subject_id}%")
    elsif course != "" && subject_id == ""
      where("name LIKE ?", "%#{course}%")
    else
      puts "enter something"
    end
  end
end
