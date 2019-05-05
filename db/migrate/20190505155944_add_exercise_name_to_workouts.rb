class AddExerciseNameToWorkouts < ActiveRecord::Migration[5.2]
  def change
    add_column :workouts, :exercise_name, :string
  end
end
