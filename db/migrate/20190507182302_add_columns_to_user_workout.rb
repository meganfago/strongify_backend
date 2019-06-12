class AddColumnsToUserWorkout < ActiveRecord::Migration[5.2]
  def change
    add_column :user_workouts, :workout_name, :string
    add_column :user_workouts, :exercise_name, :string
    add_column :user_workouts, :exercise_name2, :string
    add_column :user_workouts, :exercise_name3, :string
    add_column :user_workouts, :description, :text
  end
end
