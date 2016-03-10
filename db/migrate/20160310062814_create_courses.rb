class CreateCourses < ActiveRecord::Migration
  def change
    drop_table :courses
    create_table :courses do |t|
      t.boolean :independent_study
      t.string :name
      t.string :subjects
      t.string :code
      t.float :credits
      t.text :description
      t.string :requirements

      t.timestamps null: false
    end
  end
end
