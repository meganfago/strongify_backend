class AddColumnsToWorkouts < ActiveRecord::Migration[5.2]
  def change
    add_column :workouts, :exercise_name2, :string
    add_column :workouts, :sets2, :integer
    add_column :workouts, :reps2, :integer
    add_column :workouts, :weight2, :integer
    add_column :workouts, :exercise_name3, :string
    add_column :workouts, :sets3, :integer
    add_column :workouts, :reps3, :integer
    add_column :workouts, :weight3, :integer
  end
end
