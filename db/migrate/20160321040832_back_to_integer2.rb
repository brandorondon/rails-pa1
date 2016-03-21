class BackToInteger2 < ActiveRecord::Migration
  def change
    change_column :courses, :subject_id, :integer
  end
end
