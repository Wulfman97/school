class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.string :title
      t.integer :points_pos
      t.integer :point_earned
      t.string :grade_earned

      t.timestamps null: false
    end
  end
end
