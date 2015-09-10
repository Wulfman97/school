class AddForiegnKeys < ActiveRecord::Migration
  def change
    add_column :assignments, :course_id, :integer
    add_foreign_key :assignments, :courses

    add_column :courses, :student_id, :integer
    add_foreign_key :courses, :students

    add_column :courses, :teacher_id, :integer
    add_foreign_key :courses, :teachers
  end
end
