class RemoveSubjectsFromCourses < ActiveRecord::Migration
  def change
    remove_column :courses, :subjects
    add_column :courses, :subject_id, :integer
  end
end
