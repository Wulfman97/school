class AddCourseIdToQuizzes < ActiveRecord::Migration
  def change
    add_column :quizzes, :course_id, :integer
    add_foreign_key :quizzes, :courses
    
  end
end
