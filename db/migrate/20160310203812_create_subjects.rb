class CreateSubjects < ActiveRecord::Migration
  def change
    drop_table :subjects
    create_table :subjects do |t|
      t.string :name
      t.string :abbreviation

      t.timestamps null: false
    end
  end
end
