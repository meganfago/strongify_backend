class AddRepsToWorkouts < ActiveRecord::Migration[5.2]
  def change
    add_column :workouts, :reps, :integer
  end
end
