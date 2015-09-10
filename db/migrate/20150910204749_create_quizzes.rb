class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.string :title
      t.integer :points_pos
      t.integer :point_earned
      t.string :grade_earned
      t.timestamps null: false
    end
  end
end
