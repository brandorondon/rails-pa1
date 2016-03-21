class BackToInteger < ActiveRecord::Migration
  def change
    change_column :subjects, :identification, :integer
  end
end
