class AddIdentificationToSubjects < ActiveRecord::Migration
  def change
    add_column :subjects, :identification, :integer
  end
end
